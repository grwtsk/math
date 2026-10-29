-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IsChainOfFn.Variant51b19aa33ff4137c0987586d12ffbc031738e940ad30bc63c240aa07254860fc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"51b19aa33ff4137c0987586d12ffbc031738e940ad30bc63c240aa07254860fc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.IsChainOfFn.Variant51b19aa33ff4137c0987586d12ffbc031738e940ad30bc63c240aa07254860fc","mathematical_subject":"Computation.DataStructures","original_sha256":"51b19aa33ff4137c0987586d12ffbc031738e940ad30bc63c240aa07254860fc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/List/ChainOfFn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joseph Myers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joseph Myers
-/
module

public import Batteries.Data.List.Lemmas
public import Mathlib.Tactic.Common
public import Mathlib.Tactic.Finiteness.Attr
public import Mathlib.Tactic.ToDual

/-!
# Lemmas about `IsChain` and `ofFn`

This file provides lemmas involving both `List.IsChain` and `List.ofFn`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IsChainOfFn.Variant51b19aa33ff4137c0987586d12ffbc031738e940ad30bc63c240aa07254860fc

public section

open Nat

namespace List

lemma isChain_ofFn {α : Type*} {n : ℕ} {f : Fin n → α} {r : α → α → Prop} :
    (ofFn f).IsChain r ↔ ∀ (i) (hi : i + 1 < n), r (f ⟨i, lt_of_succ_lt hi⟩) (f ⟨i + 1, hi⟩) := by
  simp_rw [isChain_iff_getElem, List.getElem_ofFn, length_ofFn]

end List
