#!/bin/bash
set -euo pipefail

cd website/ja
pandoc \
  -f gfm+alerts \
  --metadata title="1000行でOSを作ってみよう" \
  -o ../../"1000行でOSを作ってみよう v0.1.1-alpha.epub" \
  ../../epub/title.txt \
  {index.md,0*.md,1*.md} \
  --css=../../epub/stylesheet.css \
  --epub-metadata=../../epub/metadata-ja.xml \
  --table-of-contents
