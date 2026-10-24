-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InstDecidableEquiv.Variantce4f43d64bab422c91b04e2e764ac634898759944882b352d418f4a70ebd97a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ce4f43d64bab422c91b04e2e764ac634898759944882b352d418f4a70ebd97a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.InstDecidableEquiv.Variantce4f43d64bab422c91b04e2e764ac634898759944882b352d418f4a70ebd97a3","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ce4f43d64bab422c91b04e2e764ac634898759944882b352d418f4a70ebd97a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/HashMap/RawDecidableEquiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.DHashMap.RawDecidableEquiv
public import Std.Data.HashMap.Raw


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InstDecidableEquiv.Variantce4f43d64bab422c91b04e2e764ac634898759944882b352d418f4a70ebd97a3

public section

/-!
# Decidable equivalence for `HashMap.Raw`
-/

open Std.DHashMap.Raw

namespace Std.HashMap.Raw

def instDecidableEquiv {α : Type u} {β : Type v} [BEq α] [LawfulBEq α] [Hashable α] [BEq β] [LawfulBEq β] {m₁ m₂ : Raw α β} (h₁ : m₁.WF) (h₂ : m₂.WF) : Decidable (m₁ ~m m₂) :=
  let : Decidable (m₁.1 ~m m₂.1) := DHashMap.Raw.instDecidableEquiv h₁.out h₂.out;
  decidable_of_iff _ ⟨fun h => ⟨h⟩, fun h => h.1⟩

end Std.HashMap.Raw
