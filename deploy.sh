#!/bin/bash
# Upen Website — quick deploy script
# Usage: ./deploy.sh "describe what changed"

MSG=${1:-"Update website"}

cd "$(dirname "$0")"

git add .
git commit -m "$MSG"
git push

echo ""
echo "✅ Pushed! Netlify will redeploy in ~30 seconds."
echo "🌐 https://upen-website.netlify.app"
