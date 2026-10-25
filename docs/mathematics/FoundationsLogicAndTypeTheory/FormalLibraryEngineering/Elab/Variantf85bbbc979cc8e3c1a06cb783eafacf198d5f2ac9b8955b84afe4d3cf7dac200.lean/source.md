# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Elab.Variantf85bbbc979cc8e3c1a06cb783eafacf198d5f2ac9b8955b84afe4d3cf7dac200

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d25f5b142843f756d521f28c4c083cacd641c23` · SHA-256 `62e28a3d0d9ca4f8a2aecbf6a6e65a1f4d061d6417cc81d91988dcf6f60c5b62`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Value.Variantcbfe4505b6dd2b9dbb935bb49fdb6d6023f207b3a65d985227e20f36f2559416","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cbfe4505b6dd2b9dbb935bb49fdb6d6023f207b3a65d985227e20f36f2559416","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Value.Variantcbfe4505b6dd2b9dbb935bb49fdb6d6023f207b3a65d985227e20f36f2559416","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"cbfe4505b6dd2b9dbb935bb49fdb6d6023f207b3a65d985227e20f36f2559416","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Toml/Elab.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Toml.Elab.Value
public import Lake.Toml.Elab.Expression

/-!
# TOML Elaboration

Elaborates TOML syntax into Lean data types.
At top-level, elaborates a whole TOML file into a `Toml.Table`.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Value.Variantcbfe4505b6dd2b9dbb935bb49fdb6d6023f207b3a65d985227e20f36f2559416

```
