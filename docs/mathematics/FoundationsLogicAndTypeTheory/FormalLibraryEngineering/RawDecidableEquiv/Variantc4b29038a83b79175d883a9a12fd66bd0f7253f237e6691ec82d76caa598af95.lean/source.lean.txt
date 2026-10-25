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
