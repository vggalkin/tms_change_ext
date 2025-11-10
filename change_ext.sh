#!/bin/bash

file=$1
extension=$2

if [[ "$file" == *"."* ]]; then
  IFS='.' read -ra parts <<< "$file"
  new_file_name=${parts[0]}"."$extension
  echo "$new_file_name"
  mv "$file" "$new_file_name"
else
    echo "Исходный файл не имеет расширения"
fi

echo "$file - $extension"

