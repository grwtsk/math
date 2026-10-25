# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ULift.Variant0ab9993ac912e07c50b57875cc7e25f3dc5abbc76536eb09874860e0ddbebf40

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ddb544e7b4ec37ed7f2dfa304462a2b202c6c5f5` · SHA-256 `db7f56fff9a8acc4418fba5440d52d8f5763c44dba362b442cc53305c1b5ae69`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant50756bb014a75a286025932023d8a424b344de1f7d2378a3733aab8cce3a23bd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"50756bb014a75a286025932023d8a424b344de1f7d2378a3733aab8cce3a23bd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Core.Variant50756bb014a75a286025932023d8a424b344de1f7d2378a3733aab8cce3a23bd","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"50756bb014a75a286025932023d8a424b344de1f7d2378a3733aab8cce3a23bd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/ULift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.Core


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant50756bb014a75a286025932023d8a424b344de1f7d2378a3733aab8cce3a23bd

public section

deriving instance DecidableEq for ULift

instance [Subsingleton α] : Subsingleton (ULift α) where
  allEq := fun ⟨a⟩ ⟨b⟩ => congrArg ULift.up (Subsingleton.elim a b)
```
