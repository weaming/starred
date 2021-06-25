#!/bin/bash

echo Language,Count > statistics.csv
cat README.md | grep '^#'| sed 's/^## //g' |grep -Ev '(Content|License|# Awesome)' | grep -vE '^$' | sed -E 's/ ([0-9])/,\1/g' >> statistics.csv
cat statistics.csv | xsv sort -RNs 2 > statistics.sorted.csv
