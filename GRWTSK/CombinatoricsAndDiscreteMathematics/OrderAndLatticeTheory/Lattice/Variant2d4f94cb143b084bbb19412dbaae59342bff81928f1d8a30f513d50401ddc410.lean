-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FiniteISupEqISupSubtype.Variant93e449248f262041dac872d0d2dd77147adbff548d1ed02e23bbf4ac28bbc5f9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"93e449248f262041dac872d0d2dd77147adbff548d1ed02e23bbf4ac28bbc5f9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.FiniteISupEqISupSubtype.Variant93e449248f262041dac872d0d2dd77147adbff548d1ed02e23bbf4ac28bbc5f9","mathematical_subject":"Algebra.OrderTheory","original_sha256":"93e449248f262041dac872d0d2dd77147adbff548d1ed02e23bbf4ac28bbc5f9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/Hom/Lattice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Michael Stoll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Stoll
-/
module

public import Mathlib.Algebra.Order.Hom.Basic
public import Mathlib.Data.Fintype.Order
public import Mathlib.Order.ConditionallyCompleteLattice.Indexed

/-!
# Results on order homomorphism classes and lattice operations
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FiniteISupEqISupSubtype.Variant93e449248f262041dac872d0d2dd77147adbff548d1ed02e23bbf4ac28bbc5f9

public lemma Finite.iSup_eq_iSup_subtype {ι K M F : Type*} [Finite ι] [Zero K] [Zero M]
    [ConditionallyCompleteLattice M] [FunLike F K M] [ZeroHomClass F K M] [NonnegHomClass F K M]
    {x : ι → K} (hx : x ≠ 0) {v : F} :
    ⨆ i, v (x i) =  ⨆ i : {j // x j ≠ 0}, v (x i) := by
  obtain ⟨i, hi⟩ : ∃ j, x j ≠ 0 := Function.ne_iff.mp hx
  have : Nonempty {j // x j ≠ 0} := .intro ⟨i, hi⟩
  have : Nonempty ι := .intro i
  refine le_antisymm (ciSup_le fun j ↦ ?_) <| ciSup_le fun ⟨j, hj⟩ ↦ le_ciSup_of_le j le_rfl
  rcases eq_or_ne (x j) 0 with h | h
  · rw [h, map_zero]
    exact le_ciSup_of_le ⟨i, hi⟩ (apply_nonneg ..)
  · exact le_ciSup_of_le ⟨j, h⟩ le_rfl
