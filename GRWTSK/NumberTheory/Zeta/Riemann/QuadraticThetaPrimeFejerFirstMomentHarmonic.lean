/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFirstMomentCorrection
import Mathlib.NumberTheory.Harmonic.Bounds
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Exact real-valued finite reciprocal sum underlying the first-moment tail. -/
theorem reciprocal_Icc_one_twoX_eq_harmonic
    (X : ℕ) :
    (∑ d ∈ Finset.Icc 1 (2 * X), (1 / (d : ℝ))) =
      (harmonic (2 * X) : ℝ) := by
  simp only [harmonic_eq_sum_Icc, Rat.cast_sum, Rat.cast_inv,
    Rat.cast_natCast, one_div]

/-- The finite reciprocal sum costs at most one logarithm. -/
theorem reciprocal_Icc_one_twoX_le_one_add_log
    (X : ℕ) :
    (∑ d ∈ Finset.Icc 1 (2 * X), (1 / (d : ℝ))) ≤
      1 + Real.log ((2 * X : ℕ) : ℝ) := by
  rw [reciprocal_Icc_one_twoX_eq_harmonic]
  exact harmonic_le_one_add_log (2 * X)

/-- Close the previously isolated harmonic first-moment supplier. -/
theorem nonAliasingFejerFirstMomentHarmonicBound :
    NonAliasingFejerFirstMomentHarmonicBoundClaim := by
  intro X N hX hN
  have hfactor : 0 ≤ (X : ℝ) / (N : ℝ) := by positivity
  calc
    (∑ d ∈ Finset.Icc 1 (2 * X),
        (d : ℝ) *
          sampledTriangularKernelAtPeriod
            (fejerOctavePeriod X) N d)
      ≤ ∑ d ∈ Finset.Icc 1 (2 * X),
          ((X : ℝ) / (N : ℝ)) * (1 / (d : ℝ)) := by
            apply Finset.sum_le_sum
            intro d hdmem
            have hdIcc := Finset.mem_Icc.mp hdmem
            have hdpos : 0 < d := by omega
            have h :=
              distance_mul_sampledTriangularKernelAtOctavePeriod_le
                hX hN hdpos hdIcc.2
            calc
              (d : ℝ) *
                  sampledTriangularKernelAtPeriod
                    (fejerOctavePeriod X) N d
                ≤ (X : ℝ) / ((N : ℝ) * (d : ℝ)) := h
              _ = ((X : ℝ) / (N : ℝ)) * (1 / (d : ℝ)) := by
                    field_simp
                    ring
    _ = ((X : ℝ) / (N : ℝ)) *
        (∑ d ∈ Finset.Icc 1 (2 * X), (1 / (d : ℝ))) := by
          rw [Finset.mul_sum]
    _ ≤ ((X : ℝ) / (N : ℝ)) *
        (1 + Real.log ((2 * X : ℕ) : ℝ)) := by
          exact mul_le_mul_of_nonneg_left
            (reciprocal_Icc_one_twoX_le_one_add_log X)
            hfactor

/-- The entire first-moment tail budget is therefore controlled by X/N times
two logarithmic factors, with no additional power of X. -/
theorem nonAliasingFejerFirstMomentBudget_le_logSquaredShape
    {X N : ℕ}
    (hX : 0 < X)
    (hN : 0 < N) :
    nonAliasingFejerFirstMomentBudget X N ≤
      Real.log ((4 * X : ℕ) : ℝ) *
        (((X : ℝ) / (N : ℝ)) *
          (1 + Real.log ((2 * X : ℕ) : ℝ))) := by
  unfold nonAliasingFejerFirstMomentBudget
  have hlog :
      0 ≤ Real.log ((4 * X : ℕ) : ℝ) := by
    apply Real.log_nonneg
    exact_mod_cast (by omega : 1 ≤ 4 * X)
  exact mul_le_mul_of_nonneg_left
    (nonAliasingFejerFirstMomentHarmonicBound X N hX hN)
    hlog

end GRWTSK.RiemannHypothesis
