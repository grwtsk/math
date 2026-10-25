# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Declarations.Variant33ffb1e8c13b7aa454ee95af8f3ee49f2b900bb77b9c60c9d6cd688d33b3e8aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74182ba7e8b3b6bf452b22a81e38781cec961f65` · SHA-256 `aeceb329b9bb2ff78f2c94c22dbddbb182d6b6e809753f08d8c7da45e1358e99`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variantdffaaf9a025e22213f50525a514a2f5d423065db73f7ff17cdd5a07407a6c214","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dffaaf9a025e22213f50525a514a2f5d423065db73f7ff17cdd5a07407a6c214","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceUnit.Variantdffaaf9a025e22213f50525a514a2f5d423065db73f7ff17cdd5a07407a6c214","mathematical_subject":"Foundations.Unclassified","original_sha256":"dffaaf9a025e22213f50525a514a2f5d423065db73f7ff17cdd5a07407a6c214","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/dependency-recovery-source/source/dffaaf9a025e22213f50525a514a2f5d423065db73f7ff17cdd5a07407a6c214.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["delimiter_mismatch","delimiter_open_at_eof","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variantdffaaf9a025e22213f50525a514a2f5d423065db73f7ff17cdd5a07407a6c214

#!/bin/sh
set -eu

ROOT=$(git rev-parse --show-toplevel)
cd "$ROOT"

found=false
for entry in registry/theorems/T-*.toml; do
  if [ ! -f "$entry" ]; then
    continue
  fi
  found=true

  schema=$(sed -n 's/^schema = "\(.*\)"$/\1/p' "$entry")
  id=$(sed -n 's/^id = "\(.*\)"$/\1/p' "$entry")
  project=$(sed -n 's/^project = "\(.*\)"$/\1/p' "$entry")
  module=$(sed -n 's/^lean_module = "\(.*\)"$/\1/p' "$entry")
  declaration=$(sed -n 's/^lean_declaration = "\(.*\)"$/\1/p' "$entry")
  kind=$(sed -n 's/^kind = "\(.*\)"$/\1/p' "$entry")
  authors_line=$(sed -n '/^authors = \[/p' "$entry")
  dependencies_line=$(sed -n '/^formal_dependencies = \[/p' "$entry")

  if [ "$schema" != "formal-research/theorem/v2" ]; then
    echo "unsupported theorem registry schema '$schema' in $entry" >&2
    exit 1
  fi

  if [ -z "$id" ] || [ -z "$project" ] || [ -z "$module" ] || [ -z "$declaration" ] || [ -z "$kind" ]; then
    echo "incomplete theorem registry entry: $entry" >&2
    exit 1
  fi

  case "$authors_line" in
    ''|'authors = [""]')
      echo "missing theorem author metadata in $entry" >&2
      exit 1
      ;;
  esac
  if [ -z "$dependencies_line" ]; then
    echo "missing formal dependency metadata in $entry" >&2
    exit 1
  fi

  case "$id" in
    T-[0-9][0-9][0-9]) ;;
    *)
      echo "invalid theorem id '$id' in $entry" >&2
      exit 1
      ;;
  esac

  filename_id=$(basename "$entry" .toml)
  if [ "$filename_id" != "$id" ]; then
    echo "theorem id '$id' does not match registry filename '$filename_id'" >&2
    exit 1
  fi

  if ! grep -F "id = \"$project\"" registry/projects.toml >/dev/null 2>&1; then
    echo "unknown project '$project' in $entry" >&2
    exit 1
  fi

  if [ "$kind" != "theorem" ]; then
    echo "unsupported registry kind '$kind' in $entry" >&2
    exit 1
  fi

  echo "== registry target: $id =="
  echo "module: $module"
  echo "declaration: $declaration"
  sh scripts/audit-declaration.sh "$module" "$declaration"
done

if [ "$found" = false ]; then
  echo "no registered theorem entries"
fi
```
