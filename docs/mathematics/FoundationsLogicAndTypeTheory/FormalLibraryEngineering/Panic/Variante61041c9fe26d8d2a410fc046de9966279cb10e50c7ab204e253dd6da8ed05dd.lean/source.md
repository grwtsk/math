# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Panic.Variante61041c9fe26d8d2a410fc046de9966279cb10e50c7ab204e253dd6da8ed05dd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0963ea28d4e352fd37f042442841e7b492a9c12b` · SHA-256 `39c55ba0c0ed24bc5a7a9ab89979aedcd647f4df73034f24a8212284ccc9a220`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PanicWith.Variant5160533567103ad67ab7bb6a2e3b9b7f71e76086b082dbde268b11fb1629ecb9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5160533567103ad67ab7bb6a2e3b9b7f71e76086b082dbde268b11fb1629ecb9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.PanicWith.Variant5160533567103ad67ab7bb6a2e3b9b7f71e76086b082dbde268b11fb1629ecb9","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"5160533567103ad67ab7bb6a2e3b9b7f71e76086b082dbde268b11fb1629ecb9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Util/Panic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 François G. Dorais. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: François G. Dorais
-/
module


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PanicWith.Variant5160533567103ad67ab7bb6a2e3b9b7f71e76086b082dbde268b11fb1629ecb9

@[expose] public section

namespace Batteries

/-- Panic with a specific default value `v`. -/
def panicWith (v : α) (msg : String) : α := @panic α ⟨v⟩ msg

@[simp] theorem panicWith_eq (v : α) (msg) : panicWith v msg = v := rfl
```
