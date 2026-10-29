/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonTranslationMixedBound

/-!
# T=3: a source-specific contraction from the exact six-slice circle

At T=3 the two-step domain depends only on spatial links at representative1.
The actual endpoint inequalities exclude temporal links. Two explicit
identities on these coordinates give q(tau^2 F)=q(F) in period6. Coupling this
with the actual mixed CS bound proves q(tau F)<=q(F), with C=1, for beta>=0.

Only these coordinate identities on this support are used. No iteration
through supports outside the positive algebra or abstract thermal spectrum
is invoked. This result does not settle T>=4 at positive beta.

SOURCE_PROOF_CANDIDATE; compilation, fresh kernel replay and transitive axiom
audit NOT_RUN for the entire new and inherited chain.
-/
set_option autoImplicit false
noncomputable section
open scoped ComplexConjugate

namespace GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceTranslation

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.PositiveTimeObservables
open GRWTSK.Geometry.GaugeTheory.BondTimeReflection
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.PeriodicTimeTranslation
open GRWTSK.Geometry.GaugeTheory.TwoStepPositiveTranslation
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionForm
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionPositivity
open GRWTSK.Geometry.GaugeTheory.WilsonRestrictedTranslation
open GRWTSK.Geometry.GaugeTheory.WilsonTranslationMixedBound
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionQuotient

theorem twoStepInteriorLink_three (e : Link 6) (he : twoStepInteriorLink 3 e) :
    e.1 0 = 1 ∧ e.2 ≠ 0 := by
  letI : NeZero 6 := ⟨by decide⟩
  have hlo := he.1.1
  have hhi := he.1.2
  have hv : (e.1 0).val = 1 := by norm_num at hhi; omega
  constructor
  · calc
      e.1 0 = ((e.1 0).val : ZMod 6) := (ZMod.natCast_zmod_val _).symm
      _ = 1 := by rw [hv]; norm_num
  · intro hm
    have ht := he.2.2
    norm_num at ht
    rw [hm, shift_time_val_of_lt e.1 (by omega), hv] at ht
    omega

theorem shift_reflect_time_one (x : Vertex 6) (hx : x 0 = 1) :
    shift (reflectVertex x) 0 = x := by
  funext ρ
  by_cases hρ : ρ = 0
  · subst ρ
    simp [shift, reflectVertex, hx]
  · simp [shift, reflectVertex, hρ]

theorem reflect_shift_twice_time_one (x : Vertex 6) (hx : x 0 = 1) :
    reflectVertex (shift (shift x 0) 0) = shift (shift (shift x 0) 0) 0 := by
  funext ρ
  by_cases hρ : ρ = 0
  · subst ρ
    norm_num [shift, reflectVertex, hx]
  · simp [shift, reflectVertex, hρ]

/-- F(Theta(S U))=F(U), only because all relevant links are spatial at time1. -/
theorem observable_reflection_translation (F : twoStepDomain 3) (U : Config 3) :
    F.val.val (reflection (timeTranslation U)) = F.val.val U := by
  apply F.prop
  intro e he
  rcases e with ⟨x, μ⟩
  obtain ⟨hx, hμ⟩ := twoStepInteriorLink_three (x, μ) he
  change reflection (timeTranslation U) (x, μ) = U (x, μ)
  rw [reflection_spatial _ _ _ hμ]
  change U (shift (reflectVertex x) 0, μ) = U (x, μ)
  rw [shift_reflect_time_one x hx]

/-- F(S^2(Theta U))=F(S^3 U) on these literal period6 coordinates. -/
theorem observable_twice_reflection (F : twoStepDomain 3) (U : Config 3) :
    F.val.val (timeTranslation (timeTranslation (reflection U))) =
      F.val.val (timeTranslation (timeTranslation (timeTranslation U))) := by
  apply F.prop
  intro e he
  rcases e with ⟨x, μ⟩
  obtain ⟨hx, hμ⟩ := twoStepInteriorLink_three (x, μ) he
  change reflection U (shift (shift x 0) 0, μ) =
    U (shift (shift (shift x 0) 0) 0, μ)
  rw [reflection_spatial _ _ _ hμ, reflect_shift_twice_time_one x hx]

/-- Actual diagonal return, proved without asserting that later translates
stay in the positive algebra or in the restricted quotient domain. -/
theorem translateTwice_diagonal_conjugate (β : ℝ) (F : twoStepDomain 3) :
    positiveReflectionForm 3 (atLeastTwo (show 3 ≤ 3 from le_rfl)) β
        (translateTwicePositive 3 le_rfl F) (translateTwicePositive 3 le_rfl F) =
      conj (positiveReflectionForm 3 (atLeastTwo (show 3 ≤ 3 from le_rfl)) β
        F.val F.val) := by
  let μ := positiveWilsonMeasure 3 (atLeastTwo (show 3 ≤ 3 from le_rfl)) β
  let H : Config 3 → ℂ := fun U => conj (F.val.val (timeTranslation U)) * F.val.val U
  let K : Config 3 → ℂ := fun U => conj (F.val.val U) * F.val.val (timeTranslation U)
  have mp : MeasurePreserving (timeTranslation : Config 3 → Config 3) μ μ :=
    measurePreserving_positive_timeTranslation 3 le_rfl β
  have me : MeasurableEmbedding (timeTranslation : Config 3 → Config 3) :=
    (timeTranslationHomeomorph 6 SU2).measurableEmbedding
  have hfirst : positiveReflectionForm 3 (atLeastTwo (show 3 ≤ 3 from le_rfl)) β
      F.val F.val = ∫ U, K U ∂μ := by
    have h := mp.integral_comp me
      (fun U : Config 3 => conj (F.val.val (reflection U)) * F.val.val U)
    calc
      _ = ∫ U, conj (F.val.val (reflection (timeTranslation U))) *
          F.val.val (timeTranslation U) ∂μ := h.symm
      _ = _ := by
        apply integral_congr_ae
        exact ae_of_all _ (fun U => by
          dsimp only [K]
          rw [observable_reflection_translation])
  calc
    _ = ∫ U, H (timeTranslation (timeTranslation U)) ∂μ := by
      change (∫ U, conj (F.val.val (timeTranslation (timeTranslation (reflection U)))) *
        F.val.val (timeTranslation (timeTranslation U)) ∂μ) = _
      apply integral_congr_ae
      exact ae_of_all _ (fun U => by
        dsimp only [H]
        rw [observable_twice_reflection])
    _ = ∫ U, H U ∂μ := (mp.comp mp).integral_comp (me.comp me) H
    _ = conj (∫ U, K U ∂μ) := by
      rw [← integral_conj]
      apply integral_congr_ae
      exact ae_of_all _ (fun U => by simp [H, K, map_mul, mul_comm])
    _ = _ := congrArg conj hfirst.symm

/-- Genuine form-norm estimate with the explicit constant C=1 at T=3. -/
theorem threeSlice_translation_contraction (β : ℝ) (hβ : 0 ≤ β)
    (F : twoStepDomain 3) :
    (positiveReflectionForm 3 (atLeastTwo (show 3 ≤ 3 from le_rfl)) β
        (translatePositive 3 le_rfl F) (translatePositive 3 le_rfl F)).re ≤
      (positiveReflectionForm 3 (atLeastTwo (show 3 ≤ 3 from le_rfl)) β
        F.val F.val).re := by
  have h := translation_quadratic_cauchySchwarz 3 le_rfl β hβ F
  have he := congrArg Complex.re (translateTwice_diagonal_conjugate β F)
  simp only [Complex.conj_re] at he
  rw [he] at h
  let a := (positiveReflectionForm 3 (atLeastTwo (show 3 ≤ 3 from le_rfl)) β
    (translatePositive 3 le_rfl F) (translatePositive 3 le_rfl F)).re
  let b := (positiveReflectionForm 3 (atLeastTwo (show 3 ≤ 3 from le_rfl)) β
    F.val F.val).re
  have hb : 0 ≤ b := finiteWilson_reflection_positive 3
    (atLeastTwo (show 3 ≤ 3 from le_rfl)) β hβ F.val
  have hs : a ^ 2 ≤ b ^ 2 := by simpa only [pow_two] using h
  change a ≤ b
  by_contra hn
  have hlt : b < a := lt_of_not_ge hn
  have hapos : 0 < a := lt_of_le_of_lt hb hlt
  have hp : 0 < (a - b) * (a + b) :=
    mul_pos (sub_pos.mpr hlt) (add_pos_of_pos_of_nonneg hapos hb)
  nlinarith

/-- Actual C=1 quadratic control on the existing restricted quotient map
at T=3. This is not a dense-domain or completed-operator assertion. -/
theorem threeSlice_restrictedTranslation_contraction (β : ℝ) (hβ : 0 ≤ β)
    (q : restrictedClasses 3 le_rfl β hβ) :
    (quotientReflectionForm 3 (atLeastTwo (show 3 ≤ 3 from le_rfl)) β hβ
        (restrictedTranslation 3 le_rfl β hβ q)
        (restrictedTranslation 3 le_rfl β hβ q)).re ≤
      (quotientReflectionForm 3 (atLeastTwo (show 3 ≤ 3 from le_rfl)) β hβ
        q.val q.val).re := by
  obtain ⟨F, hF⟩ := q.prop
  have hq : q = ⟨classMap 3 le_rfl β hβ F, ⟨F, rfl⟩⟩ := Subtype.ext hF.symm
  rw [hq]
  simpa only [restrictedTranslation_class, translatedClass_apply, classMap_apply,
    quotientReflectionForm_mk_mk] using threeSlice_translation_contraction β hβ F

/-- A literal support-incidence obstruction to extending the period6 return
calculation to T=4. This is NOT a counterexample to a form-norm bound. -/
theorem fourSlice_coordinate_return_fails :
    let x : Vertex 8 := fun ρ => if ρ = 0 then 1 else 0
    twoStepInteriorLink 4 (x, (1 : Fin 4)) ∧
      reflectVertex (shift (shift x 0) 0) 0 ≠ shift (shift (shift x 0) 0) 0 0 := by
  letI : NeZero 8 := ⟨by decide⟩
  norm_num [twoStepInteriorLink, twoStepVertex, shift, reflectVertex]

end GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceTranslation

