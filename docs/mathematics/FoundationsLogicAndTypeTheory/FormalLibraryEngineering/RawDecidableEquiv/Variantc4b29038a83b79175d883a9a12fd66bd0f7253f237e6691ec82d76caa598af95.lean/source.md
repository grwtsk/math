# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RawDecidableEquiv.Variantc4b29038a83b79175d883a9a12fd66bd0f7253f237e6691ec82d76caa598af95

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a9307c6fc7517550498622ac2b0410f4a1c017c` · SHA-256 `786ce435f19e1423c10f32f6e07caf8263115fb92ea933aa6c82474673f4fd5f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstDecidableEquiv.Variant88876b20c73a6a43f2f8ea2c39a2938158b568033281a425d5763b8ad66f455d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"88876b20c73a6a43f2f8ea2c39a2938158b568033281a425d5763b8ad66f455d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.InstDecidableEquiv.Variant88876b20c73a6a43f2f8ea2c39a2938158b568033281a425d5763b8ad66f455d","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"88876b20c73a6a43f2f8ea2c39a2938158b568033281a425d5763b8ad66f455d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/DHashMap/RawDecidableEquiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.DHashMap.Internal.RawLemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstDecidableEquiv.Variant88876b20c73a6a43f2f8ea2c39a2938158b568033281a425d5763b8ad66f455d

public section

/-!
# Decidable equivalence for `DHashMap.Raw`
-/

open Std.DHashMap.Internal

namespace Std.DHashMap.Raw

def instDecidableEquiv {α : Type u} {β : α → Type v} [BEq α] [LawfulBEq α] [Hashable α] [∀ k, BEq (β k)] [∀ k, LawfulBEq (β k)] {m₁ m₂ : Raw α β} (h₁ : m₁.WF) (h₂ : m₂.WF) : Decidable (m₁ ~m m₂) :=
  Raw₀.decidableEquiv ⟨m₁, h₁.size_buckets_pos⟩ ⟨m₂, h₂.size_buckets_pos⟩ h₁ h₂

end Std.DHashMap.Raw
```
