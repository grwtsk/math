-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.InfSup.Variant2fe6f5fa14617e3373f2657b6936164023ac862eb86aa0d18f93dd206e9298a9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2fe6f5fa14617e3373f2657b6936164023ac862eb86aa0d18f93dd206e9298a9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.InfSup.Variant2fe6f5fa14617e3373f2657b6936164023ac862eb86aa0d18f93dd206e9298a9","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"2fe6f5fa14617e3373f2657b6936164023ac862eb86aa0d18f93dd206e9298a9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Finset/Lattice/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Data.Finset.Lattice.Prod
public import Mathlib.Data.Finset.Pi

/-!
# Lattice operations on finsets of functions

This file is concerned with folding binary lattice operations over finsets.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.InfSup.Variant2fe6f5fa14617e3373f2657b6936164023ac862eb86aa0d18f93dd206e9298a9

public section

assert_not_exists IsOrderedMonoid MonoidWithZero

variable {α ι : Type*}

namespace Finset

variable [DistribLattice α] [BoundedOrder α] [DecidableEq ι]

--TODO: Extract out the obvious isomorphism `(insert i s).pi t ≃ t i ×ˢ s.pi t` from this proof
theorem inf_sup {κ : ι → Type*} (s : Finset ι) (t : ∀ i, Finset (κ i)) (f : ∀ i, κ i → α) :
    (s.inf fun i => (t i).sup (f i)) =
      (s.pi t).sup fun g => s.attach.inf fun i => f _ <| g _ i.2 := by
  induction s using Finset.induction with
  | empty => simp
  | insert i s hi ih => ?_
  rw [inf_insert, ih, attach_insert, sup_inf_sup]
  refine eq_of_forall_ge_iff fun c => ?_
  simp only [Finset.sup_le_iff, mem_product, mem_pi, and_imp, Prod.forall,
    inf_insert, inf_image]
  refine
    ⟨fun h g hg =>
      h (g i <| mem_insert_self _ _) (fun j hj => g j <| mem_insert_of_mem hj)
        (hg _ <| mem_insert_self _ _) fun j hj => hg _ <| mem_insert_of_mem hj,
      fun h a g ha hg => ?_⟩
  -- TODO: This `have` must be named to prevent it being shadowed by the internal `this` in `simpa`
  have aux : ∀ j : { x // x ∈ s }, ↑j ≠ i := fun j : s => ne_of_mem_of_not_mem j.2 hi
  -- `simpa` doesn't support placeholders in proof terms
  have := h (fun j hj => if hji : j = i then cast (congr_arg κ hji.symm) a
      else g _ <| mem_of_mem_insert_of_ne hj hji) (fun j hj => ?_)
  · simpa only [cast_eq, dite_eq_left, Function.comp_def, Subtype.coe_mk, dite_eq_right,
      aux] using! this
  rw [mem_insert] at hj
  obtain (rfl | hj) := hj
  · simpa
  · simpa [ne_of_mem_of_not_mem hj hi] using! hg _ _

theorem sup_inf {κ : ι → Type*} (s : Finset ι) (t : ∀ i, Finset (κ i)) (f : ∀ i, κ i → α) :
    (s.sup fun i => (t i).inf (f i)) = (s.pi t).inf fun g => s.attach.sup fun i => f _ <| g _ i.2 :=
  @inf_sup αᵒᵈ _ _ _ _ _ _ _ _

end Finset
