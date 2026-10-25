# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LakePath.Variant4a2de4239a712e9a7647d02145ecb7c329e532bd9d21a3a2f918ac5628985efc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66f02f7579d8abf37c3f5f68099a534f9274fb2e` · SHA-256 `7393bf8fb098a17dc8a233828a944b6f2a3c0497c3b2ff84c63143e1cd2611e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanDetermineLakePath.Variantef510837cbd5af288e8df9cc7b61196ae11f29945910dc10072834dc4f91d9fc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef510837cbd5af288e8df9cc7b61196ae11f29945910dc10072834dc4f91d9fc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.LeanDetermineLakePath.Variantef510837cbd5af288e8df9cc7b61196ae11f29945910dc10072834dc4f91d9fc","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ef510837cbd5af288e8df9cc7b61196ae11f29945910dc10072834dc4f91d9fc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/LakePath.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Sebastian Ullrich
-/
module

prelude
public import Init.System.IO


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanDetermineLakePath.Variantef510837cbd5af288e8df9cc7b61196ae11f29945910dc10072834dc4f91d9fc

public section

def Lean.determineLakePath : IO System.FilePath := do
  if let some lakePath ← IO.getEnv "LAKE" then
    return System.FilePath.mk lakePath

  let sysroot? ← IO.getEnv "LEAN_SYSROOT"
  match sysroot? with
  | some sysroot => pure <| System.FilePath.mk sysroot / "bin" / "lake"
  | none         => pure <| (← IO.appDir) / "lake"
```
