-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant7566aa7e911e232c2eb85dc3c2ad164121d5db30ca15b7dfa2f750d3a3eb3634","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7566aa7e911e232c2eb85dc3c2ad164121d5db30ca15b7dfa2f750d3a3eb3634","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.SourceUnit.Variant7566aa7e911e232c2eb85dc3c2ad164121d5db30ca15b7dfa2f750d3a3eb3634","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"7566aa7e911e232c2eb85dc3c2ad164121d5db30ca15b7dfa2f750d3a3eb3634","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/dependency-recovery-source/source/7566aa7e911e232c2eb85dc3c2ad164121d5db30ca15b7dfa2f750d3a3eb3634.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant7566aa7e911e232c2eb85dc3c2ad164121d5db30ca15b7dfa2f750d3a3eb3634

#!/bin/sh
set -eu

cd "$(git rev-parse --show-toplevel)"

echo "== toolchain =="
cat lean-toolchain

echo "== dependency manifest =="
test -f lake-manifest.json

echo "== build =="
lake build --wfail

echo "== theorem registry and axiom audit =="
sh scripts/verify-registry.sh

echo "== lint =="
lake lint

echo "== git diff =="
git diff --check

echo "formal-research: verification gates passed"
