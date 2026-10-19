import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation
import Mathlib.MeasureTheory.Measure.Haar.NormedSpace

/-!
# Exact unit-scale normalization of the source test

The profile is defined by dilation of the literal normalized source function.
The autocorrelation identity is a one-variable change of variables, with the
actual product integrability proved separately. No surrogate test is used.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateNormalizedSourceProfile

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity

noncomputable section

/-- Dilation of the actual zero-extended normalized source test. -/
def unitProfile (A s : ℝ) : ℝ :=
  Real.sqrt A * normalizedTest explicitSecondDerivative A (A * s)

/-- The exact unit-scale autocorrelation, with the original translation sign. -/
def unitCorrelation (A y : ℝ) : ℝ :=
  ∫ s, unitProfile A s * unitProfile A (s - y)

/-- The source-defined profile recovers the literal normalized test. -/
theorem normalizedTest_eq_unitProfile (A u : ℝ) (hA : 0 < A) :
    normalizedTest explicitSecondDerivative A u =
      unitProfile A (u / A) / Real.sqrt A := by
  simp [unitProfile, mul_div_cancel₀ u hA.ne', Real.sqrt_ne_zero'.mpr hA]

/-- Zero extension, including the touching endpoints, is retained exactly. -/
theorem unitProfile_zero_of_one_le_abs (A s : ℝ) (hA : 0 < A) (hs : 1 ≤ |s|) :
    unitProfile A s = 0 := by
  unfold unitProfile
  rw [normalizedTest_zero_of_le_abs A (A*s) hA]
  · simp
  · rw [abs_mul, abs_of_pos hA]
    nlinarith

theorem unitProfile_contDiff (A : ℝ) (hA : 0 < A) :
    ContDiff ℝ 1 (unitProfile A) := by
  exact contDiff_const.mul ((normalizedTest_contDiff A hA).comp
    (contDiff_const.mul contDiff_id))

theorem unitProfile_integrable (A : ℝ) (hA : 0 < A) :
    Integrable (unitProfile A) := by
  exact ((normalizedTest_integrable A hA).comp_mul_left' hA.ne').const_mul _

/-- The actual product admits the scaling substitution as an integrable function. -/
theorem unitProfile_product_integrable (A y : ℝ) (hA : 0 < A) :
    Integrable (fun s ↦ unitProfile A s * unitProfile A (s-y)) := by
  have hi := ((correlation_product_integrable A (A*y) hA).comp_mul_left' hA.ne').const_mul A
  convert hi using 1
  ext s
  simp only [unitProfile]
  rw [show A * (s-y) = A*s-A*y by ring]
  calc
    _ = (Real.sqrt A * Real.sqrt A) *
        (normalizedTest explicitSecondDerivative A (A*s) *
          normalizedTest explicitSecondDerivative A (A*s-A*y)) := by ring
    _ = _ := by rw [Real.mul_self_sqrt hA.le]

/-- Exact one-variable scaling; the normalization and zero extension stay literal. -/
theorem sourceCorrelation_mul_eq_unitCorrelation (A y : ℝ) (hA : 0 < A) :
    sourceCorrelation explicitSecondDerivative A (A*y) = unitCorrelation A y := by
  have heq : (fun s ↦ unitProfile A s * unitProfile A (s-y)) =
      (fun s ↦ A * (normalizedTest explicitSecondDerivative A (A*s) *
        normalizedTest explicitSecondDerivative A (A*s-A*y))) := by
    funext s
    simp only [unitProfile]
    rw [show A * (s-y) = A*s-A*y by ring]
    calc
      _ = (Real.sqrt A * Real.sqrt A) *
          (normalizedTest explicitSecondDerivative A (A*s) *
            normalizedTest explicitSecondDerivative A (A*s-A*y)) := by ring
      _ = _ := by rw [Real.mul_self_sqrt hA.le]
  unfold unitCorrelation
  rw [heq, integral_const_mul]
  have hchange := Measure.integral_comp_mul_left
    (fun u ↦ normalizedTest explicitSecondDerivative A u *
      normalizedTest explicitSecondDerivative A (u-A*y)) A
  simp only [abs_of_pos (inv_pos.mpr hA), smul_eq_mul] at hchange
  rw [hchange]
  simp only [sourceCorrelation]
  rw [← mul_assoc, mul_inv_cancel₀ hA.ne', one_mul]

/-- The inverse displacement change is valid for every real argument. -/
theorem sourceCorrelation_eq_unitCorrelation_div (A t : ℝ) (hA : 0 < A) :
    sourceCorrelation explicitSecondDerivative A t = unitCorrelation A (t/A) := by
  simpa only [mul_div_cancel₀ t hA.ne'] using
    sourceCorrelation_mul_eq_unitCorrelation A (t/A) hA

theorem unitCorrelation_contDiff (A : ℝ) (hA : 0 < A) :
    ContDiff ℝ 1 (unitCorrelation A) := by
  have heq : unitCorrelation A =
      (fun y ↦ sourceCorrelation explicitSecondDerivative A (A*y)) := by
    funext y
    exact (sourceCorrelation_mul_eq_unitCorrelation A y hA).symm
  rw [heq]
  exact (sourceCorrelation_contDiff A hA).comp (contDiff_const.mul contDiff_id)

/-- Exact support bound includes zero values at both endpoints. -/
theorem unitCorrelation_zero_of_two_le_abs (A y : ℝ) (hA : 0 < A) (hy : 2 ≤ |y|) :
    unitCorrelation A y = 0 := by
  rw [← sourceCorrelation_mul_eq_unitCorrelation A y hA]
  apply sourceCorrelation_eq_zero_of_two_mul_le_abs A (A*y) hA
  rw [abs_mul, abs_of_pos hA]
  nlinarith

theorem unitCorrelation_support_subset (A : ℝ) (hA : 0 < A) :
    Function.support (unitCorrelation A) ⊆ Icc (-2 : ℝ) 2 := by
  intro y hy
  by_contra hn
  have habs : 2 ≤ |y| := by
    by_contra h
    exact hn (abs_le.mp (le_of_lt (lt_of_not_ge h)))
  exact hy (unitCorrelation_zero_of_two_le_abs A y hA habs)

theorem unitCorrelation_hasCompactSupport (A : ℝ) (hA : 0 < A) :
    HasCompactSupport (unitCorrelation A) := by
  refine exists_compact_iff_hasCompactSupport.mp ⟨Icc (-2 : ℝ) 2, isCompact_Icc, ?_⟩
  intro y hy
  by_contra hn
  exact hy (unitCorrelation_support_subset A hA hn)

theorem unitCorrelation_integrable (A : ℝ) (hA : 0 < A) :
    Integrable (unitCorrelation A) :=
  (unitCorrelation_contDiff A hA).continuous.integrable_of_hasCompactSupport
    (unitCorrelation_hasCompactSupport A hA)

theorem unitCorrelation_zero (A : ℝ) (hA : 1 ≤ A) :
    unitCorrelation A 0 = 1 := by
  rw [← sourceCorrelation_mul_eq_unitCorrelation A 0 (by linarith), mul_zero]
  exact EstimateCorrelation.actual_correlation_at_zero A hA

theorem unitProfile_square_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ s, unitProfile A s ^ 2) = 1 := by
  simpa only [unitCorrelation, sub_zero, pow_two] using unitCorrelation_zero A hA

/-- The exact derivative scaling exposes the factor used in the critical weight. -/
theorem unitCorrelation_hasDerivAt (A y : ℝ) (hA : 0 < A) :
    HasDerivAt (unitCorrelation A)
      (A * deriv (sourceCorrelation explicitSecondDerivative A) (A*y)) y := by
  have hd := (((contDiff_one_iff_deriv.mp (sourceCorrelation_contDiff A hA)).1
    (A*y)).hasDerivAt).comp y ((hasDerivAt_id y).const_mul A)
  have heq : unitCorrelation A =
      (fun y ↦ sourceCorrelation explicitSecondDerivative A (A*y)) := by
    funext y
    exact (sourceCorrelation_mul_eq_unitCorrelation A y hA).symm
  rw [heq]
  simpa only [Function.comp_def, one_mul, mul_one, mul_comm] using hd

end
end EstimateNormalizedSourceProfile
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
