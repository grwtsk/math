/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.CyclicActualMertensPrefixSource

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact constant-mode/fluctuation balance of the actual signed source.
No asymptotic cancellation or spectral estimate is assumed proved.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ActualMertensZeroModeBalance
open CyclicConstantModeSignedPrefixObstruction CyclicActualMertensPrefixSource
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
variable (N : ℕ) [NeZero N]

def scaledFluctuation (x : ZMod N → ℝ) (i : ZMod N) : ℝ :=
  (N : ℝ) * x i - ∑ j, x j

theorem fluctuation_sum_zero (x : ZMod N → ℝ) :
    (∑ i, scaledFluctuation N x i) = 0 := by
  unfold scaledFluctuation
  rw [Finset.sum_sub_distrib, ← Finset.mul_sum]
  simp [nsmul_eq_mul]

theorem fluctuation_square_mass (x : ZMod N → ℝ) :
    (∑ i, scaledFluctuation N x i ^ 2) =
      (N : ℝ)^2 * (∑ i, x i ^ 2) - (N : ℝ) * (∑ i, x i)^2 := by
  calc
    _ = ∑ i : ZMod N, ((N : ℝ)^2 * x i ^ 2 -
        (2 * (N : ℝ) * (∑ j, x j)) * x i + (∑ j, x j)^2) := by
      apply Finset.sum_congr rfl
      intro i _
      unfold scaledFluctuation
      ring
    _ = _ := by
      rw [Finset.sum_add_distrib, Finset.sum_sub_distrib,
        ← Finset.mul_sum, ← Finset.mul_sum]
      simp [nsmul_eq_mul]
      <;> ring

theorem signed_zero_mode_balance (x : ZMod N → ℝ) :
    (N : ℝ)^2 * signedPrefixStatistic N x =
      (N : ℝ) * ((N : ℝ)-1) * (∑ i, x i)^2 -
        ∑ i, scaledFluctuation N x i ^ 2 := by
  rw [fluctuation_square_mass]
  unfold signedPrefixStatistic
  ring

theorem actual_mertens_zero_mode_balance (e : ZMod N ≃ Fin N) :
    (N : ℝ)^2 * sampleSignedMixedPrefix N =
      (N : ℝ) * ((N : ℝ)-1) * sampleResidue (N+1)^2 -
        ∑ i, scaledFluctuation N (actualIncrement N e) i ^ 2 := by
  simpa only [actual_signed_prefix_statistic, actual_full_prefix] using
    signed_zero_mode_balance N (actualIncrement N e)

end GRWTSK.NumberTheory.Zeta.Riemann.ActualMertensZeroModeBalance
