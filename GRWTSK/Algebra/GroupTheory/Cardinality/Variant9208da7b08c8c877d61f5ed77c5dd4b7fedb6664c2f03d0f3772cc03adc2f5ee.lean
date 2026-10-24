-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.OreDivOneSurjectiveOfFiniteLeft.Variante0660a575fa20ba5a9c55d86cec458eda357376a12ed789a8636b6f2edaa275c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e0660a575fa20ba5a9c55d86cec458eda357376a12ed789a8636b6f2edaa275c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.OreDivOneSurjectiveOfFiniteLeft.Variante0660a575fa20ba5a9c55d86cec458eda357376a12ed789a8636b6f2edaa275c","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"e0660a575fa20ba5a9c55d86cec458eda357376a12ed789a8636b6f2edaa275c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/OreLocalization/Cardinality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jz Pan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jz Pan
-/
import Mathlib.Data.Fintype.Pigeonhole
import Mathlib.GroupTheory.OreLocalization.Basic
import Mathlib.SetTheory.Cardinal.Arithmetic

/-!

# Cardinality of Ore localizations

This file contains some results on cardinality of Ore localizations.

## TODO

- Prove or disprove `OreLocalization.cardinalMk_le_lift_cardinalMk_of_commute`
  with `Commute` assumption removed.

-/


namespace GRWTSK.Algebra.GroupTheory.OreDivOneSurjectiveOfFiniteLeft.Variante0660a575fa20ba5a9c55d86cec458eda357376a12ed789a8636b6f2edaa275c

universe u v

open Cardinal Function

namespace OreLocalization

variable {R : Type u} [Monoid R] (S : Submonoid R) [OreLocalization.OreSet S]
  (X : Type v) [MulAction R X]

@[to_additive]
theorem oreDiv_one_surjective_of_finite_left [Finite S] :
    Surjective (fun x ↦ x /ₒ (1 : ↥S) : X → OreLocalization S X) := by
  refine OreLocalization.ind fun x s ↦ ?_
  obtain ⟨i, j, hne, heq⟩ := Finite.exists_ne_map_eq_of_infinite (α := ℕ) (s ^ ·)
  wlog hlt : j < i generalizing i j
  · exact this j i hne.symm heq.symm (hne.lt_of_le (not_lt.1 hlt))
  use s ^ (i - (j + 1)) • x
  rw [oreDiv_eq_iff]
  refine ⟨s ^ j, (s ^ (j + 1)).1, ?_, ?_⟩
  · change s ^ j • x = s ^ (j + 1) • s ^ (i - (j + 1)) • x
    rw [← mul_smul, ← pow_add, Nat.add_sub_cancel' hlt, heq]
  · simp_rw [SubmonoidClass.coe_pow, OneMemClass.coe_one, mul_one, pow_succ]

@[to_additive]
theorem oreDiv_one_surjective_of_finite_right [Finite X] :
    Surjective (fun x ↦ x /ₒ (1 : ↥S) : X → OreLocalization S X) := by
  refine OreLocalization.ind fun x s ↦ ?_
  obtain ⟨i, j, hne, heq⟩ := Finite.exists_ne_map_eq_of_infinite (α := ℕ) (s ^ · • x)
  wlog hlt : j < i generalizing i j
  · exact this j i hne.symm heq.symm (hne.lt_of_le (not_lt.1 hlt))
  use s ^ (i - (j + 1)) • x
  rw [oreDiv_eq_iff]
  refine ⟨s ^ j, (s ^ (j + 1)).1, ?_, ?_⟩
  · change s ^ j • x = s ^ (j + 1) • s ^ (i - (j + 1)) • x
    rw [← mul_smul, ← pow_add, Nat.add_sub_cancel' hlt, heq]
  · simp_rw [SubmonoidClass.coe_pow, OneMemClass.coe_one, mul_one, pow_succ]

@[to_additive]
theorem numeratorHom_surjective_of_finite [Finite S] : Surjective (numeratorHom (S := S)) :=
  oreDiv_one_surjective_of_finite_left S R

@[to_additive]
theorem cardinalMk_le_max : #(OreLocalization S X) ≤ max (lift.{v} #S) (lift.{u} #X) := by
  rcases finite_or_infinite X with _ | _
  · have := lift_mk_le_lift_mk_of_surjective (oreDiv_one_surjective_of_finite_right S X)
    rw [lift_umax.{v, u}, lift_id'] at this
    exact le_max_of_le_right this
  rcases finite_or_infinite S with _ | _
  · have := lift_mk_le_lift_mk_of_surjective (oreDiv_one_surjective_of_finite_left S X)
    rw [lift_umax.{v, u}, lift_id'] at this
    exact le_max_of_le_right this
  convert ← mk_le_of_surjective (show Surjective fun x : X × S ↦ x.1 /ₒ x.2 from
    Quotient.mk''_surjective)
  rw [mk_prod, mul_comm]
  refine mul_eq_max ?_ ?_ <;> simp

@[to_additive]
theorem cardinalMk_le : #(OreLocalization S R) ≤ #R := by
  convert ← cardinalMk_le_max S R
  simp_rw [lift_id, max_eq_right_iff, mk_subtype_le]

-- TODO: remove the `Commute` assumption
@[to_additive]
theorem cardinalMk_le_lift_cardinalMk_of_commute (hc : ∀ s s' : S, Commute s s') :
    #(OreLocalization S X) ≤ lift.{u} #X := by
  rcases finite_or_infinite X with _ | _
  · have := lift_mk_le_lift_mk_of_surjective (oreDiv_one_surjective_of_finite_right S X)
    rwa [lift_umax.{v, u}, lift_id'] at this
  have key (x : X) (s s' : S) (h : s • x = s' • x) (hc : Commute s s') : x /ₒ s = x /ₒ s' := by
    rw [oreDiv_eq_iff]
    refine ⟨s, s'.1, h, ?_⟩
    · exact_mod_cast hc
  let i (x : X × S) := x.1 /ₒ x.2
  have hsurj : Surjective i := Quotient.mk''_surjective
  have hi := rightInverse_surjInv hsurj
  let j := (fun x : X × S ↦ (x.1, x.2 • x.1)) ∘ surjInv hsurj
  suffices Injective j by
    have := lift_mk_le_lift_mk_of_injective this
    rwa [lift_umax.{v, u}, lift_id', mk_prod, lift_id, lift_mul, mul_eq_self (by simp)] at this
  intro y y' heq
  rw [← hi y, ← hi y']
  simp_rw [j, comp_apply, Prod.ext_iff] at heq
  simp_rw [i]
  set x := surjInv hsurj y
  set x' := surjInv hsurj y'
  obtain ⟨h1, h2⟩ := heq
  rw [← h1] at h2 ⊢
  exact key x.1 x.2 x'.2 h2 (hc _ _)

end OreLocalization
