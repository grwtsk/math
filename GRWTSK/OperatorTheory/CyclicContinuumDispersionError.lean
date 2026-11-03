/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual sine dispersion estimate for the scalar cyclic comparison.
Positive mesh and nonnegative physical scale are explicit. This does not
construct nonabelian gauge dynamics or a uniform volume gap.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicContinuumDispersionError

theorem sine_square_deficit (x : ℝ) :
    0 ≤ x ^ 2 - Real.sin x ^ 2 ∧ x ^ 2 - Real.sin x ^ 2 ≤ x ^ 4 / 3 := by
  have hnon : 0 ≤ x ^ 2 - Real.sin x ^ 2 := sub_nonneg.mpr Real.sin_sq_le_sq
  have hsum : |x + Real.sin x| ≤ 2 * |x| := by
    have h := abs_add x (Real.sin x)
    have hs : |Real.sin x| ≤ |x| := Real.abs_sin_le_abs
    linarith
  have hprod := mul_le_mul (Real.abs_sub_sin_le x) hsum
    (abs_nonneg (x + Real.sin x)) (by positivity : 0 ≤ |x| ^ 3 / 6)
  have hfactor : |x ^ 2 - Real.sin x ^ 2| = |x - Real.sin x| * |x + Real.sin x| := by
    rw [← abs_mul]
    congr 1
    ring
  have heven : |x| ^ 4 = x ^ 4 := by
    rw [← abs_pow, abs_of_nonneg (by positivity : 0 ≤ x ^ 4)]
  have hr : (|x| ^ 3 / 6) * (2 * |x|) = x ^ 4 / 3 := by
    calc
      _ = |x| ^ 4 / 3 := by ring
      _ = _ := by rw [heven]
  rw [← hfactor, abs_of_nonneg hnon, hr] at hprod
  exact ⟨hnon, hprod⟩

def discreteDispersion (τ a ξ : ℝ) : ℝ := 4 * τ / a ^ 2 * Real.sin (a * ξ / 2) ^ 2

theorem dispersion_error (τ a ξ : ℝ) (hτ : 0 ≤ τ) (ha : 0 < a) :
    0 ≤ τ * ξ ^ 2 - discreteDispersion τ a ξ ∧
      τ * ξ ^ 2 - discreteDispersion τ a ξ ≤ τ * a ^ 2 * ξ ^ 4 / 12 := by
  have hs := sine_square_deficit (a * ξ / 2)
  have hc : 0 ≤ 4 * τ / a ^ 2 := by positivity
  have he : τ * ξ ^ 2 - discreteDispersion τ a ξ =
      (4 * τ / a ^ 2) * ((a * ξ / 2) ^ 2 - Real.sin (a * ξ / 2) ^ 2) := by
    unfold discreteDispersion
    field_simp [ne_of_gt ha]
    <;> ring
  rw [he]
  refine ⟨mul_nonneg hc hs.1, ?_⟩
  have h := mul_le_mul_of_nonneg_left hs.2 hc
  have hr : (4 * τ / a ^ 2) * ((a * ξ / 2) ^ 4 / 3) = τ * a ^ 2 * ξ ^ 4 / 12 := by
    field_simp [ne_of_gt ha]
    <;> ring
  rwa [hr] at h

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicContinuumDispersionError
