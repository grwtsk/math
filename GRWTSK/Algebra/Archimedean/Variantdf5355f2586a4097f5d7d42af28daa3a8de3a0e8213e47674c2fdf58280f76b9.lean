-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.WfDvdMonoidIffWellFoundedGtOnV.Variant7c179dbc98c94ed51b5b0bbd107c40967885b595cff02b4dec8ae1337c1891e4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7c179dbc98c94ed51b5b0bbd107c40967885b595cff02b4dec8ae1337c1891e4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.WfDvdMonoidIffWellFoundedGtOnV.Variant7c179dbc98c94ed51b5b0bbd107c40967885b595cff02b4dec8ae1337c1891e4","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"7c179dbc98c94ed51b5b0bbd107c40967885b595cff02b4dec8ae1337c1891e4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Valuation/Archimedean.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky
-/
import Mathlib.Algebra.Order.Archimedean.Submonoid
import Mathlib.GroupTheory.ArchimedeanDensely
import Mathlib.RingTheory.Valuation.ValuationRing

/-!
# Ring of integers under a given valuation in an multiplicatively archimedean codomain

-/


namespace GRWTSK.Algebra.WfDvdMonoidIffWellFoundedGtOnV.Variant7c179dbc98c94ed51b5b0bbd107c40967885b595cff02b4dec8ae1337c1891e4

section Field

variable {F Γ₀ O : Type*} [Field F] [LinearOrderedCommGroupWithZero Γ₀]
  [CommRing O] [Algebra O F] {v : Valuation F Γ₀}

instance : LinearOrderedCommGroupWithZero (MonoidHom.mrange v) where
  __ : CommGroupWithZero (MonoidHom.mrange v) := inferInstance
  __ : LinearOrder (MonoidHom.mrange v) := inferInstance
  bot := 0
  bot_le a := show (0 : Γ₀) ≤ _ from zero_le'
  zero_le_one := Subtype.coe_le_coe.mp zero_le_one
  mul_le_mul_left := by
    simp only [Subtype.forall, MonoidHom.mem_mrange, forall_exists_index, Submonoid.mk_mul_mk,
      Subtype.mk_le_mk, forall_apply_eq_imp_iff]
    intro a b hab c
    exact mul_le_mul_left' hab (v c)

namespace Valuation.Integers

open scoped Function in
lemma wfDvdMonoid_iff_wellFounded_gt_on_v (hv : Integers v O) :
    WfDvdMonoid O ↔ WellFounded ((· > ·) on (v ∘ algebraMap O F)) := by
  refine ⟨fun _ ↦ wellFounded_dvdNotUnit.mono ?_, fun h ↦ ⟨h.mono ?_⟩⟩ <;>
  simp [Function.onFun, hv.dvdNotUnit_iff_lt]

open scoped Function Multiplicative in
lemma wellFounded_gt_on_v_iff_discrete_mrange [Nontrivial (MonoidHom.mrange v)ˣ]
    (hv : Integers v O) :
    WellFounded ((· > ·) on (v ∘ algebraMap O F)) ↔
      Nonempty (MonoidHom.mrange v ≃*o ℤₘ₀) := by
  rw [← LinearOrderedCommGroupWithZero.wellFoundedOn_setOf_ge_gt_iff_nonempty_discrete_of_ne_zero
    one_ne_zero, ← Set.wellFoundedOn_range]
  classical
  refine ⟨fun h ↦ (h.mapsTo Subtype.val ?_).mono' (by simp), fun h ↦ (h.mapsTo ?_ ?_).mono' ?_⟩
  · rintro ⟨_, x, rfl⟩
    simp only [← Subtype.coe_le_coe, OneMemClass.coe_one, Set.mem_setOf_eq, Set.mem_range,
      Function.comp_apply]
    intro hx
    obtain ⟨y, rfl⟩ := hv.exists_of_le_one hx
    exact ⟨y, by simp⟩
  · exact fun x ↦ if hx : x ∈ MonoidHom.mrange v then ⟨x, hx⟩ else 1
  · intro
    simp only [Set.mem_range, Function.comp_apply, MonoidHom.mem_mrange, Set.mem_setOf_eq,
      forall_exists_index]
    rintro x rfl
    simp [← Subtype.coe_le_coe, hv.map_le_one]
  · simp [Function.onFun]

lemma isPrincipalIdealRing_iff_not_denselyOrdered [MulArchimedean Γ₀] (hv : Integers v O) :
    IsPrincipalIdealRing O ↔ ¬ DenselyOrdered (Set.range v) := by
  refine ⟨fun _ ↦ not_denselyOrdered_of_isPrincipalIdealRing hv, fun H ↦ ?_⟩
  rcases subsingleton_or_nontrivial (MonoidHom.mrange v)ˣ with hs|_
  · have := bijective_algebraMap_of_subsingleton_units_mrange hv
    exact .of_surjective _ (RingEquiv.ofBijective _ this).symm.surjective
  have : IsDomain O := hv.hom_inj.isDomain
  have : ValuationRing O := ValuationRing.of_integers v hv
  have : IsBezout O := ValuationRing.instIsBezout
  have := ((IsBezout.TFAE (R := O)).out 1 3)
  rw [this, hv.wfDvdMonoid_iff_wellFounded_gt_on_v, hv.wellFounded_gt_on_v_iff_discrete_mrange,
    LinearOrderedCommGroupWithZero.discrete_iff_not_denselyOrdered]
  exact H

end Valuation.Integers

end Field
