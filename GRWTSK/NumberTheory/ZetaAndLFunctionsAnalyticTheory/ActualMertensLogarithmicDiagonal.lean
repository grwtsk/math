/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib harmonic bounds retain upstream attribution and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ActualMertensCoefficientDiagonalHarmonic
import Mathlib.NumberTheory.Harmonic.Bounds

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual coefficient diagonal logarithmic cost, with signed remainder
retained. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ActualMertensLogarithmicDiagonal
open ActualMertensCoefficientDiagonalHarmonic ActualMertensGcdSignedMass
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
variable (N : ℕ) [NeZero N]

theorem actual_reciprocal_sum_log_budget :
    (∑ r ∈ Finset.Icc 1 N,1/(r : ℝ))≤1+Real.log (N : ℝ) := by
  simpa only [harmonic_eq_sum_Icc,Rat.cast_sum,Rat.cast_inv,Rat.cast_natCast,one_div] using
    harmonic_le_one_add_log N

theorem actual_coefficient_diagonal_log_budget (e : ZMod N ≃ Fin N) :
    coefficientDiagonal N e≤1+Real.log (N : ℝ) :=
  (actual_coefficient_diagonal_harmonic_budget N e).trans (actual_reciprocal_sum_log_budget N)

theorem actual_signed_statistic_paid_log_diagonal (e : ZMod N ≃ Fin N) :
    sampleSignedMixedPrefix N≤1+Real.log (N : ℝ)+
      positiveOffDiagonal N e-negativeOffDiagonal N e := by
  rw [actual_signed_mass_identity N e]
  linarith [actual_coefficient_diagonal_log_budget N e]

theorem actual_signed_remainder_consumer (e : ZMod N ≃ Fin N) (B : ℝ)
    (hbalance : positiveOffDiagonal N e≤negativeOffDiagonal N e+B) :
    sampleSignedMixedPrefix N≤1+Real.log (N : ℝ)+B := by
  linarith [actual_signed_statistic_paid_log_diagonal N e]

/- Only the exact coefficient diagonal is paid. A subpower full signed
remainder estimate is UNSUPPLIED; the consumer does not prove its premise.
No claim identifies the pulled congruence kernel unitarily with a source
selfadjoint operator whose spectrum is the analytic zero set. -/
end GRWTSK.NumberTheory.Zeta.Riemann.ActualMertensLogarithmicDiagonal
