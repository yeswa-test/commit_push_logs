#!/bin/bash

echo "Inside the script !!!!"

git add --all
git commit -m "Data commit"

start_time=$(date +%s)
echo "Start: $(date '+%Y-%m-%d %I:%M:%S %p %Z')"

git pull --rebase

end_time=$(date +%s)
echo "End: $(date '+%Y-%m-%d %I:%M:%S %p %Z')"

duration=$((end_time - start_time))

git push 