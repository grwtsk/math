# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Declarations.Variant31be0f972ae2664389ae1cb1f7deb30913b7b63e1ab4a422f6f595d397ec5d2e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4181d0c8b16884cf6775bdfc6de4ef2bb43aafa5` · SHA-256 `e1c8f7b281c036ddbbe86142e32223bf4336b0352103e6d67197d97c8f089b8c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MODULE.Variant2b9a3e6479639f674dba1dd5364331c770e0b86cb9134e8f7c9a23cfa3fbaf73","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b9a3e6479639f674dba1dd5364331c770e0b86cb9134e8f7c9a23cfa3fbaf73","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.MODULE.Variant2b9a3e6479639f674dba1dd5364331c770e0b86cb9134e8f7c9a23cfa3fbaf73","mathematical_subject":"Foundations.Unclassified","original_sha256":"2b9a3e6479639f674dba1dd5364331c770e0b86cb9134e8f7c9a23cfa3fbaf73","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/dependency-recovery-source/source/2b9a3e6479639f674dba1dd5364331c770e0b86cb9134e8f7c9a23cfa3fbaf73.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["delimiter_mismatch","delimiter_open_at_eof","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MODULE.Variant2b9a3e6479639f674dba1dd5364331c770e0b86cb9134e8f7c9a23cfa3fbaf73

#!/bin/sh
set -eu

if [ "$#" -ne 2 ]; then
  echo "usage: $0 <Lean-module> <fully-qualified-declaration>" >&2
  exit 64
fi

MODULE=$1
DECLARATION=$2

case "$MODULE" in
  *[!A-Za-z0-9_.]*|'')
    echo "invalid Lean module: $MODULE" >&2
    exit 64
    ;;
esac
case "$DECLARATION" in
  *[!A-Za-z0-9_.]*|'')
    echo "invalid Lean declaration: $DECLARATION" >&2
    exit 64
    ;;
esac

ROOT=$(git rev-parse --show-toplevel)
cd "$ROOT"

TMP_DIR=$(mktemp -d "${TMPDIR:-/tmp}/formal-research-audit.XXXXXX")
trap 'rm -rf "$TMP_DIR"' EXIT HUP INT TERM
AUDIT_FILE="$TMP_DIR/Audit.lean"

cat >"$AUDIT_FILE" <<EOF
import $MODULE

#print $DECLARATION
#print axioms $DECLARATION
EOF

if ! OUTPUT=$(lake env lean "$AUDIT_FILE" 2>&1); then
  printf '%s\n' "$OUTPUT" >&2
  exit 1
fi

printf '%s\n' "$OUTPUT"

if printf '%s\n' "$OUTPUT" | grep -F 'sorryAx' >/dev/null 2>&1; then
  echo "registry declaration depends on sorryAx: $DECLARATION" >&2
  exit 1
fi
```
