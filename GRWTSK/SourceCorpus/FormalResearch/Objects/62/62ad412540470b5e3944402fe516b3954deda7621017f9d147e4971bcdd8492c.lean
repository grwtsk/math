import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitProfileMass
import Mathlib.Analysis.Convolution

/-!
# Signed autocorrelation mass with an explicit product-integrability gate

The actual two-variable kernel is dominated by the product of the two literal
profile absolute values. Integrability is established before any Fubini exchange.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateUnitCorrelationMass

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open EstimateNormalizedSourceProfile EstimateUnitProfileMass

noncomputable section

/-- An explicit integrable majorant for the actual autocorrelation product. -/
theorem unitCorrelation_product_majorant_integrable (A : ℝ) (hA : 0 < A) :
    Integrable (fun z : ℝ × ℝ ↦ |unitProfile A z.2| * |unitProfile A (z.2-z.1)|)
      (volume.prod volume) := by
  have hf := (unitProfile_integrable A hA).norm
  have h := hf.convolution_integrand (ContinuousLinearMap.lsmul ℝ ℝ) hf.comp_neg
  simpa only [ContinuousLinearMap.lsmul_apply, smul_eq_mul, Real.norm_eq_abs, neg_sub] using h

/-- The exact signed kernel is product-integrable before an unbounded interchange. -/
theorem unitCorrelation_product_integrable (A : ℝ) (hA : 0 < A) :
    Integrable (fun z : ℝ × ℝ ↦ unitProfile A z.2 * unitProfile A (z.2-z.1))
      (volume.prod volume) := by
  have hc := (unitProfile_contDiff A hA).continuous
  have hm : AEStronglyMeasurable
      (fun z : ℝ × ℝ ↦ unitProfile A z.2 * unitProfile A (z.2-z.1))
      (volume.prod volume) :=
    ((hc.comp continuous_snd).mul
      (hc.comp (continuous_snd.sub continuous_fst))).aestronglyMeasurable
  apply (unitCorrelation_product_majorant_integrable A hA).mono' hm
  exact Filter.Eventually.of_forall fun z ↦ by simp only [Real.norm_eq_abs, abs_mul, le_refl]


/-- Fubini consumes the checked actual product gate and retains its signed mass. -/
theorem unitCorrelation_integral (A : ℝ) (hA : 0 < A) :
    (∫ y, unitCorrelation A y) = (∫ s, unitProfile A s) ^ 2 := by
  unfold unitCorrelation
  rw [integral_integral_swap (unitCorrelation_product_integrable A hA)]
  simp_rw [integral_const_mul, integral_sub_left_eq_self (unitProfile A) volume]
  rw [integral_mul_const]
  ring

/-- Evenness is transported from the actual real source autocorrelation. -/
theorem unitCorrelation_even (A : ℝ) (hA : 0 < A) :
    Function.Even (unitCorrelation A) := by
  intro y
  rw [← sourceCorrelation_mul_eq_unitCorrelation A (-y) hA,
    ← sourceCorrelation_mul_eq_unitCorrelation A y hA]
  simpa only [mul_neg] using CorrelationRegularity.sourceCorrelation_even A (A*y)

/-- The whole signed mass is exactly its compact support interval mass. -/
theorem unitCorrelation_integral_eq_interval (A : ℝ) (hA : 0 < A) :
    (∫ y, unitCorrelation A y) = ∫ y in (-2 : ℝ)..2, unitCorrelation A y := by
  have heq : unitCorrelation A = (Icc (-2 : ℝ) 2).indicator (unitCorrelation A) := by
    funext y
    by_cases hm : y ∈ Icc (-2 : ℝ) 2
    · simp [hm]
    · have hz : unitCorrelation A y = 0 := by
        by_contra hn
        exact hm (unitCorrelation_support_subset A hA hn)
      simp [hm, hz]
  calc
    _ = ∫ y, (Icc (-2 : ℝ) 2).indicator (unitCorrelation A) y :=
      congrArg (fun f : ℝ → ℝ ↦ ∫ y, f y) heq
    _ = _ := Realization.zeroExtension_integral _ (-2) 2 (by norm_num)

/-- The half-mass is signed; only evenness and compact support divide the total by two. -/
theorem unitCorrelation_half_mass (A : ℝ) (hA : 0 < A) :
    (∫ y in (0 : ℝ)..2, unitCorrelation A y) = (∫ s, unitProfile A s) ^ 2 / 2 := by
  have hc := (unitCorrelation_contDiff A hA).continuous
  have hs := intervalIntegral.integral_add_adjacent_intervals (μ := volume)
    (hc.intervalIntegrable (-2) 0) (hc.intervalIntegrable 0 2)
  have hn := intervalIntegral.integral_comp_neg (a := (0 : ℝ)) (b := (2 : ℝ))
    (unitCorrelation A)
  have heven : (fun y ↦ unitCorrelation A (-y)) = unitCorrelation A :=
    funext (unitCorrelation_even A hA)
  rw [heven] at hn
  simp only [neg_zero] at hn
  rw [← hn] at hs
  have hm := unitCorrelation_integral A hA
  rw [unitCorrelation_integral_eq_interval A hA] at hm
  linarith

/-- Exact half-mass in the fixed source normalization. -/
theorem unitCorrelation_half_mass_formula (A : ℝ) (hA : 1 ≤ A) :
    (∫ y in (0 : ℝ)..2, unitCorrelation A y) =
      2048 / (99225 * sourceNormalization A) := by
  rw [unitCorrelation_half_mass A (by linarith), unitProfile_integral A (by linarith),
    div_pow, mul_pow, Real.sq_sqrt (source_normalization_pos A hA).le]
  norm_num
  ring

/-- A fixed positive rational half-mass floor for every admitted source radius. -/
theorem unitCorrelation_half_mass_ge (A : ℝ) (hA : 1 ≤ A) :
    (1 / 4000 : ℝ) ≤ ∫ y in (0 : ℝ)..2, unitCorrelation A y := by
  rw [unitCorrelation_half_mass_formula A hA]
  apply (le_div_iff₀ (mul_pos (by norm_num) (source_normalization_pos A hA))).2
  nlinarith [sourceNormalization_le_41 A hA]

/-- Cauchy–Schwarz control is reused from its accepted norm-one source proof. -/
theorem unitCorrelation_abs_le_one (A y : ℝ) (hA : 1 ≤ A) :
    |unitCorrelation A y| ≤ 1 := by
  rw [← sourceCorrelation_mul_eq_unitCorrelation A y (by linarith)]
  exact EstimateCorrelation.actual_correlation_abs_le_one A (A*y) hA

end
end EstimateUnitCorrelationMass
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
