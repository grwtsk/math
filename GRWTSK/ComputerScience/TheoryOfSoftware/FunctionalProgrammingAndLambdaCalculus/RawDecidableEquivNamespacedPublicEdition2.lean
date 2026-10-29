-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InstDecidableEquiv.Variant766361e27bf69ec8f7e5ca5bf5f278d6850e968b56a8a6f7f2d9c671a472e21a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"766361e27bf69ec8f7e5ca5bf5f278d6850e968b56a8a6f7f2d9c671a472e21a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.InstDecidableEquiv.Variant766361e27bf69ec8f7e5ca5bf5f278d6850e968b56a8a6f7f2d9c671a472e21a","mathematical_subject":"Computation.DataStructures","original_sha256":"766361e27bf69ec8f7e5ca5bf5f278d6850e968b56a8a6f7f2d9c671a472e21a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/HashSet/RawDecidableEquiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.HashMap.RawDecidableEquiv
public import Std.Data.HashSet.Raw


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InstDecidableEquiv.Variant766361e27bf69ec8f7e5ca5bf5f278d6850e968b56a8a6f7f2d9c671a472e21a

public section

/-!
# Decidable equivalence for `HashSet.Raw`
-/

open Std.HashMap.Raw

namespace Std.HashSet.Raw

def instDecidableEquiv {α : Type u} [BEq α] [LawfulBEq α] [Hashable α] {m₁ m₂ : Raw α} (h₁ : m₁.WF) (h₂ : m₂.WF) : Decidable (m₁ ~m m₂) :=
  let : Decidable (m₁.1 ~m m₂.1) := HashMap.Raw.instDecidableEquiv h₁.out h₂.out;
  decidable_of_iff _ ⟨fun h => ⟨h⟩, fun h => h.1⟩

end Std.HashSet.Raw
