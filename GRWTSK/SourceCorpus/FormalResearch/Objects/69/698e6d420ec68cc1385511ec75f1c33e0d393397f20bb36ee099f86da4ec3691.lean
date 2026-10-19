import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitCorrelationMass
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCriticalPrimeErrorMajorant

/-!
# Linear lower growth of the literal critical absolute majorant

This concerns only the nonnegative majorant at theta one half and L identically
one. Its signed kernel integral uses autocorrelation mass and finite FTC.
No statement about growth of the actual signed Chebyshev source is asserted.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateCriticalMajorantGrowth

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open EstimateNormalizedSourceProfile EstimateUnitCorrelationMass
open EstimateCriticalPrimeErrorMajorant

noncomputable section

/-- The exact critical majorant, with the scale multiplied inside its absolute value. -/
theorem critical_majorant_eq_absolute_signed_integral (A : ℝ) (hA : 0 < A) :
    (∫ t in lowerEndpoint..2 * A, powerErrorMajorant A (1/2) (fun _ ↦ 1) t) =
      ∫ y in lowerEndpoint / A..2,
        |deriv (unitCorrelation A) y - (A/2) * unitCorrelation A y| := by
  rw [critical_power_majorant_eq_unit_scale A (fun _ ↦ 1) hA]
  simp only [one_mul]
  rw [← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_congr
  intro y _
  dsimp only
  calc
    _ = |A| * |deriv (unitCorrelation A) y / A - unitCorrelation A y / 2| := by
      rw [abs_of_pos hA]
    _ = |A * (deriv (unitCorrelation A) y / A - unitCorrelation A y / 2)| :=
      (abs_mul _ _).symm
    _ = _ := by
      congr 1
      field_simp [hA.ne']

/-- Trimming the original lower source endpoint costs at most its exact interval length. -/
theorem unitCorrelation_truncated_mass_ge_sub (A : ℝ) (hA : 1 ≤ A) :
    (1 / 4000 : ℝ) - lowerEndpoint / A ≤
      ∫ y in lowerEndpoint / A..2, unitCorrelation A y := by
  have hA0 : 0 < A := by linarith
  have hc := (unitCorrelation_contDiff A hA0).continuous
  have ha : 0 ≤ lowerEndpoint / A := by
    unfold lowerEndpoint
    exact div_nonneg (Real.log_nonneg (by norm_num)) hA0.le
  have hs := intervalIntegral.integral_add_adjacent_intervals (μ := volume)
    (hc.intervalIntegrable 0 (lowerEndpoint/A))
    (hc.intervalIntegrable (lowerEndpoint/A) 2)
  have hu : (∫ y in (0 : ℝ)..lowerEndpoint/A, unitCorrelation A y) ≤ lowerEndpoint/A := by
    have h := intervalIntegral.integral_mono_on (μ := volume) ha
      (hc.intervalIntegrable 0 (lowerEndpoint/A))
      (continuous_const.intervalIntegrable 0 (lowerEndpoint/A))
      (fun y _ ↦ (abs_le.mp (unitCorrelation_abs_le_one A y hA)).2)
    simpa only [intervalIntegral.integral_const, sub_zero, smul_eq_mul, mul_one] using h
  linarith [unitCorrelation_half_mass_ge A hA]

/-- A fixed tail threshold gives a fixed positive mass on the actual trimmed interval. -/
theorem unitCorrelation_truncated_mass_ge (A : ℝ) (hA : 8000 ≤ A) :
    (1 / 8000 : ℝ) ≤ ∫ y in lowerEndpoint / A..2, unitCorrelation A y := by
  have hA1 : 1 ≤ A := by linarith
  have hA0 : 0 < A := by linarith
  have hl : lowerEndpoint ≤ 1 := by
    unfold lowerEndpoint
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have ha : lowerEndpoint/A ≤ (1 / 8000 : ℝ) := by
    apply (div_le_iff₀ hA0).2
    linarith
  linarith [unitCorrelation_truncated_mass_ge_sub A hA1]

/-- Finite FTC retains the literal lower value and uses only the proved upper zero. -/
theorem critical_majorant_signed_integral_eq (A : ℝ) (hA : 0 < A) :
    (∫ y in lowerEndpoint / A..2,
      (deriv (unitCorrelation A) y - (A/2) * unitCorrelation A y)) =
      -unitCorrelation A (lowerEndpoint/A) -
        (A/2) * ∫ y in lowerEndpoint / A..2, unitCorrelation A y := by
  have hK := unitCorrelation_contDiff A hA
  rw [intervalIntegral.integral_sub
    (hK.continuous_deriv_one.intervalIntegrable _ _)
    ((hK.continuous.intervalIntegrable _ _).const_mul (A/2)),
    intervalIntegral.integral_const_mul,
    intervalIntegral.integral_deriv_eq_sub
      (fun y _ ↦ (contDiff_one_iff_deriv.mp hK).1 y)
      (hK.continuous_deriv_one.intervalIntegrable _ _),
    unitCorrelation_zero_of_two_le_abs A 2 hA (by norm_num)]
  ring

/-- The signed kernel integral forces this affine lower bound on its absolute integral. -/
theorem critical_majorant_ge_affine (A : ℝ) (hA : 8000 ≤ A) :
    A / 16000 - 1 ≤
      ∫ t in lowerEndpoint..2 * A, powerErrorMajorant A (1/2) (fun _ ↦ 1) t := by
  have hA0 : 0 < A := by linarith
  have hA1 : 1 ≤ A := by linarith
  have ha : lowerEndpoint/A ≤ 2 :=
    (div_le_iff₀ hA0).2 (by linarith [source_interval_order A hA1])
  rw [critical_majorant_eq_absolute_signed_integral A hA0]
  have hn := intervalIntegral.abs_integral_le_integral_abs (μ := volume)
    (f := fun y ↦ deriv (unitCorrelation A) y - (A/2) * unitCorrelation A y) ha
  have hm := (neg_le_abs (∫ y in lowerEndpoint/A..2,
      (deriv (unitCorrelation A) y - (A/2) * unitCorrelation A y))).trans hn
  rw [critical_majorant_signed_integral_eq A hA0] at hm
  have ht := unitCorrelation_truncated_mass_ge A hA
  have hs : A / 16000 ≤ (A/2) * ∫ y in lowerEndpoint/A..2, unitCorrelation A y := by
    calc
      A / 16000 = (A/2) * (1/8000) := by ring
      _ ≤ _ := mul_le_mul_of_nonneg_left ht (by positivity)
  have hb := (abs_le.mp (unitCorrelation_abs_le_one A (lowerEndpoint/A) hA1)).1
  linarith

/-- Explicit constants, independent of the real source radius. -/
theorem critical_majorant_ge_linear (A : ℝ) (hA : 32000 ≤ A) :
    (1 / 32000 : ℝ) * A ≤
      ∫ t in lowerEndpoint..2 * A, powerErrorMajorant A (1/2) (fun _ ↦ 1) t := by
  calc
    (1 / 32000 : ℝ) * A ≤ A / 16000 - 1 := by linarith
    _ ≤ _ := critical_majorant_ge_affine A (by linarith)

/-- The exact handoff target: growth of the literal absolute envelope only. -/
theorem critical_majorant_linear_growth :
    ∃ c : ℝ, 0 < c ∧ ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A →
        c * A ≤ ∫ t in lowerEndpoint..2 * A,
          powerErrorMajorant A (1/2) (fun _ ↦ 1) t := by
  exact ⟨1/32000, by norm_num, 32000, by norm_num, critical_majorant_ge_linear⟩

end
end EstimateCriticalMajorantGrowth
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
