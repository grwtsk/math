/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddResidualSourceComparison
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineParseval

set_option autoImplicit false
noncomputable section

/-!
# From the literal odd high rows to a Lebesgue norm

The checked Parseval identity for the same zero-extended sine basis
includes every positive mode. If a square-integrable, supported odd
output has zero coefficients in the first N modes, those terms sum
to zero and the remaining series starts exactly at N+1. If the
output coefficients are the literal bordered rows, the existing
coefficient bound therefore controls its entire squared Lebesgue norm.

To use this implication on the closed Weil operator, the caller
must produce the actual high residual in its operator or form
realization and identify its sine coefficients. No operator-domain
equality is inferred from the existence of the coefficient bound.
Independent analytical review and novelty assessment are pending.
-/

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddResidualParseval

open MeasureTheory Set OddSineParseval OddResidualSourceComparison OddResidualMajorant

/-- Parseval with the exact positive-mode head removed. -/
theorem highSine_sq_hasSum (T : ℝ) (hT : 0 < T) {N : ℕ} {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hodd : ∀ᵐ t : ℝ, f (-t) = -f t)
    (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (hhead : ∀ n < N, sineCoefficient T f (n + 1) = 0) :
    HasSum (fun n : ℕ => sineCoefficient T f (N + 1 + n) ^ 2)
      (∫ t : ℝ, ‖f t‖ ^ 2) := by
  let coeffEnergy (n : ℕ) := sineCoefficient T f (n + 1) ^ 2
  have hall : HasSum coeffEnergy (∫ t : ℝ, ‖f t‖ ^ 2) :=
    hasSum_source_sineCoefficient_sq_ae T hT hf hodd hsupport
  have hfirst : ∑ n ∈ Finset.range N, coeffEnergy n = 0 := by
    apply Finset.sum_eq_zero
    intro n hn
    simp [coeffEnergy, hhead n (Finset.mem_range.mp hn)]
  have hsplit := hall.summable.sum_add_tsum_nat_add N
  rw [hfirst, zero_add, hall.tsum_eq] at hsplit
  have htail : Summable (fun n : ℕ => coeffEnergy (n + N)) :=
    (summable_nat_add_iff N).mpr hall.summable
  convert htail.hasSum using 1
  · funext n
    simp only [coeffEnergy]
    congr 2
    omega
  · exact hsplit.symm

/-- Whole high-residual norm return for an actual output with the source coefficients. -/
theorem highResidual_energy_le {N M L J : ℕ} (hNM : N ≤ M) (hML : M ≤ L)
    (hL : 0 < L) (hLJ : L ≤ J) (T : ℝ) (hT : 0 < T)
    (x : ℕ → ℝ) (a β s : ℝ) (hs : 0 < s) {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hodd : ∀ᵐ t : ℝ, f (-t) = -f t)
    (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (hhead : ∀ n < N, sineCoefficient T f (n + 1) = 0)
    (hrows : ∀ n : ℕ, sineCoefficient T f (N + 1 + n) =
      literalAugmentedRow M T x a β (N + 1 + n)) :
    (∫ t : ℝ, ‖f t‖ ^ 2) ≤
      (∑ n ∈ Finset.range (L - N), (literalAugmentedRow M T x a β (N + 1 + n)) ^ 2) +
        completeRemoteAllowance M L J T x a s := by
  rw [← (highSine_sq_hasSum T hT hf hodd hsupport hhead).tsum_eq]
  simp_rw [hrows]
  exact (literalAugmentedRow_high_bound hNM hML hL hLJ T hT x a β s hs).2

end GRWTSK.NumberTheory.WeilQuadraticForm.OddResidualParseval
