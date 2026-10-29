-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.OriginalSourceL2.Variant179fd41b8cf2203a5c40a8e14bdd11aa2bba39f10f79d01f5c00458911d335d3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"179fd41b8cf2203a5c40a8e14bdd11aa2bba39f10f79d01f5c00458911d335d3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.OriginalSourceL2.Variant179fd41b8cf2203a5c40a8e14bdd11aa2bba39f10f79d01f5c00458911d335d3","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"179fd41b8cf2203a5c40a8e14bdd11aa2bba39f10f79d01f5c00458911d335d3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/latest-private-higher-power-readback/source-copies/062-SourcePureRotationObstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceDualRotation

/-!
# Actual source scales leave the pure common-J rotation plane

The unchanged normalized polynomial source at scales one and two represents
distinct complex L² classes. Reflection forces any pure common-J rotation
between even vectors to have zero sine coefficient. The actual scale-two
source is outside every scalar multiple of the scale-one source, hence outside
every such rotation. This concerns the frozen generator J=R∘T and makes no
claim about arbitrary unitary comparisons, forced evolution, or RH estimates.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.OriginalSourceL2.Variant179fd41b8cf2203a5c40a8e14bdd11aa2bba39f10f79d01f5c00458911d335d3

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourcePureRotationObstruction

open MeasureTheory
open SourcePairing SourceHankelReflection SourceReflectionDuality SourceDualRotation
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- The actual source class is the complexification of its singleton forward profile. -/
def originalSourceL2 (A : ℝ) (hA : 0 < A) : ComplexL2 :=
  Complex.ofRealCLM.compLp (forwardL2 A hA {1} (fun _ => 1))

/-- The class has the literal unchanged source as an almost-everywhere representative. -/
theorem originalSourceL2_coe_ae (A : ℝ) (hA : 0 < A) :
    originalSourceL2 A hA =ᵐ[volume]
      fun x => (normalizedTest explicitSecondDerivative A x : ℂ) := by
  filter_upwards [Complex.ofRealCLM.coeFn_compLp (forwardL2 A hA {1} (fun _ => 1)),
    (forwardProfile_memLp hA {1} (fun _ => 1)).coeFn_toLp] with x hc hf
  change originalSourceL2 A hA x = (forwardL2 A hA {1} (fun _ => 1) x : ℂ) at hc
  rw [hc]
  change ((forwardProfile_memLp hA {1} (fun _ => 1)).toLp _ x : ℂ) = _
  rw [hf]
  simp [forwardProfile]

/-- Reflection fixes the exact source class at every positive scale. -/
theorem originalSourceL2_even (A : ℝ) (hA : 0 < A) :
    reflection (originalSourceL2 A hA) = originalSourceL2 A hA :=
  actual_source_even hA _ (originalSourceL2_coe_ae A hA)

/-- The original normalization gives the actual class unit norm for A≥1. -/
theorem originalSourceL2_norm_sq (A : ℝ) (hA : 1 ≤ A) :
    ‖originalSourceL2 A (by linarith)‖ ^ 2 = 1 :=
  actual_source_norm_sq hA _ (originalSourceL2_coe_ae A (by linarith))

/-- A unit-normalized source class is nonzero. -/
theorem originalSourceL2_ne_zero (A : ℝ) (hA : 1 ≤ A) :
    originalSourceL2 A (by linarith) ≠ 0 := by
  intro h
  have hn := originalSourceL2_norm_sq A hA
  rw [h] at hn
  norm_num at hn

/-- The unit-scale source vanishes at the chosen exterior point. -/
theorem source_one_at_three_halves :
    normalizedTest explicitSecondDerivative 1 (3 / 2) = 0 :=
  normalizedTest_zero_of_le_abs 1 (3 / 2) (by norm_num) (by norm_num)

/-- The scale-two source has a strictly positive rational numerator at the same point. -/
theorem source_two_at_three_halves :
    normalizedTest explicitSecondDerivative 2 (3 / 2) =
      (292383 / 262144 : ℝ) / Real.sqrt (2 * sourceNormalization 2) := by
  rw [normalizedTest_eq_indicator 2 (by norm_num),
    Set.indicator_of_mem (by norm_num : (3 / 2 : ℝ) ∈ Set.Icc (-2) 2)]
  have h2 : Real.sqrt (2 : ℝ) ≠ 0 := (Real.sqrt_pos.mpr (by norm_num)).ne'
  have hN : Real.sqrt (sourceNormalization 2) ≠ 0 :=
    (Real.sqrt_pos.mpr (source_normalization_pos 2 (by norm_num))).ne'
  rw [Real.sqrt_mul (by norm_num : (0 : ℝ) ≤ 2)]
  norm_num [normalizedInterior, secondInterior, bumpInterior]
  field_simp
  ring

/-- The pointwise fixture uses the exact positive source normalization. -/
theorem source_two_at_three_halves_pos :
    0 < normalizedTest explicitSecondDerivative 2 (3 / 2) := by
  rw [source_two_at_three_halves]
  exact div_pos (by norm_num)
    (Real.sqrt_pos.mpr (mul_pos (by norm_num) (source_normalization_pos 2 (by norm_num))))



/-- Continuity upgrades the source point separation to failure of every scalar AE identity. -/
theorem source_two_not_ae_smul_source_one (c : ℂ) :
    ¬ (fun x : ℝ => (normalizedTest explicitSecondDerivative 2 x : ℂ)) =ᵐ[volume]
      fun x => c * (normalizedTest explicitSecondDerivative 1 x : ℂ) := by
  intro h
  have h2 : Continuous (fun x : ℝ => (normalizedTest explicitSecondDerivative 2 x : ℂ)) :=
    Complex.continuous_ofReal.comp (normalizedTest_contDiff 2 (by norm_num)).continuous
  have h1 : Continuous (fun x : ℝ => c * (normalizedTest explicitSecondDerivative 1 x : ℂ)) :=
    continuous_const.mul
      (Complex.continuous_ofReal.comp (normalizedTest_contDiff 1 (by norm_num)).continuous)
  have he := congrFun (Measure.eq_of_ae_eq h h2 h1) (3 / 2)
  rw [source_one_at_three_halves, Complex.ofReal_zero, mul_zero] at he
  have hz : normalizedTest explicitSecondDerivative 2 (3 / 2) = 0 := by
    exact_mod_cast he
  exact (ne_of_gt source_two_at_three_halves_pos) hz

/-- The actual scale-two class is outside every complex scalar multiple of scale one. -/
theorem originalSourceL2_two_ne_smul_one (c : ℂ) :
    originalSourceL2 2 (by norm_num) ≠ c • originalSourceL2 1 (by norm_num) := by
  intro h
  apply source_two_not_ae_smul_source_one c
  have hs := Lp.coeFn_smul c (originalSourceL2 1 (by norm_num))
  filter_upwards [originalSourceL2_coe_ae 2 (by norm_num), hs,
    originalSourceL2_coe_ae 1 (by norm_num)] with x h2 hsm h1
  rw [← h2, h, hsm]
  change c * originalSourceL2 1 (by norm_num) x = _
  rw [h1]

/-- In particular the two unchanged source scales are distinct L² classes. -/
theorem originalSourceL2_two_ne_one :
    originalSourceL2 2 (by norm_num) ≠ originalSourceL2 1 (by norm_num) := by
  simpa using originalSourceL2_two_ne_smul_one 1

/-- The scale-two class also differs from the negative scale-one class. -/
theorem originalSourceL2_two_ne_neg_one :
    originalSourceL2 2 (by norm_num) ≠ -originalSourceL2 1 (by norm_num) := by
  simpa using originalSourceL2_two_ne_smul_one (-1)

/-- Reflection-even output of a pure common-J rotation forces its sine coefficient to vanish. -/
theorem rotation_even_forces_sine_zero {q : ComplexL2}
    (hq : reflection q = q) (hq0 : q ≠ 0) (c s : ℝ)
    (hrot : reflection (rotationMap c s q) = rotationMap c s q) : s = 0 := by
  have hr := reflection_rotation_reverse c s q
  rw [hq, hrot] at hr
  rw [rotationMap_apply, rotationMap_apply, Complex.ofReal_neg, neg_smul] at hr
  have hsvec : -((s : ℂ) • quarterTurn q) = (s : ℂ) • quarterTurn q :=
    (add_left_cancel hr).symm
  have hz : ((2 : ℂ) * (s : ℂ)) • quarterTurn q = 0 := by
    rw [mul_smul, two_smul]
    calc
      (s : ℂ) • quarterTurn q + (s : ℂ) • quarterTurn q =
          -((s : ℂ) • quarterTurn q) + (s : ℂ) • quarterTurn q := by rw [hsvec]
      _ = 0 := neg_add_cancel _
  have hJ : quarterTurn q ≠ 0 := by
    intro h
    apply hq0
    apply quarterTurn.injective
    simpa using h
  have hc := (smul_eq_zero.mp hz).resolve_right hJ
  have hs := (mul_eq_zero.mp hc).resolve_left (by norm_num : (2 : ℂ) ≠ 0)
  exact_mod_cast hs

/-- Zero sine is also sufficient for an even source to remain reflection-even. -/
theorem rotation_even_iff_sine_zero {q : ComplexL2}
    (hq : reflection q = q) (hq0 : q ≠ 0) (c s : ℝ) :
    reflection (rotationMap c s q) = rotationMap c s q ↔ s = 0 := by
  refine ⟨rotation_even_forces_sine_zero hq hq0 c s, ?_⟩
  intro hs
  simp only [hs, rotationMap_apply, Complex.ofReal_zero, zero_smul, add_zero]
  rw [map_smul, hq]

/-- A unit-circle rotation between even vectors can only return one of the two signs. -/
theorem unit_rotation_even_is_sign {q : ComplexL2}
    (hq : reflection q = q) (hq0 : q ≠ 0) (c s : ℝ) (hcs : c ^ 2 + s ^ 2 = 1)
    (hrot : reflection (rotationMap c s q) = rotationMap c s q) :
    rotationMap c s q = q ∨ rotationMap c s q = -q := by
  have hs := rotation_even_forces_sine_zero hq hq0 c s hrot
  have hc : c = 1 ∨ c = -1 := by
    rw [hs] at hcs
    have hp : (c - 1) * (c + 1) = 0 := by nlinarith [hcs]
    rcases mul_eq_zero.mp hp with h | h
    · left
      linarith
    · right
      linarith
  rcases hc with hc | hc
  · left
    simp [rotationMap_apply, hs, hc]
  · right
    simp [rotationMap_apply, hs, hc]

/-- No real-coefficient pure common-J map sends the actual unit scale to scale two. -/
theorem originalSourceL2_rotationMap_one_ne_two (c s : ℝ) :
    rotationMap c s (originalSourceL2 1 (by norm_num)) ≠
      originalSourceL2 2 (by norm_num) := by
  intro h
  have hrot : reflection (rotationMap c s (originalSourceL2 1 (by norm_num))) =
      rotationMap c s (originalSourceL2 1 (by norm_num)) := by
    rw [h]
    exact originalSourceL2_even 2 (by norm_num)
  have hs := rotation_even_forces_sine_zero (originalSourceL2_even 1 (by norm_num))
    (originalSourceL2_ne_zero 1 (by norm_num)) c s hrot
  rw [rotationMap_apply, hs, Complex.ofReal_zero, zero_smul, add_zero] at h
  exact originalSourceL2_two_ne_smul_one (c : ℂ) h.symm

/-- Every common-J angle is excluded by the actual source-class separation. -/
theorem originalSourceL2_angleRotation_one_ne_two (θ : ℝ) :
    angleRotation θ (originalSourceL2 1 (by norm_num)) ≠
      originalSourceL2 2 (by norm_num) := by
  rw [angleRotation_apply]
  exact originalSourceL2_rotationMap_one_ne_two _ _

/-- The obstruction is quantified over all angles, rather than matching a finite fixture list. -/
theorem no_angleRotation_source_one_to_two :
    ¬ ∃ θ : ℝ, angleRotation θ (originalSourceL2 1 (by norm_num)) =
      originalSourceL2 2 (by norm_num) := by
  rintro ⟨θ, hθ⟩
  exact originalSourceL2_angleRotation_one_ne_two θ hθ

end FormalResearch.RiemannHypothesis.SourcePureRotationObstruction
