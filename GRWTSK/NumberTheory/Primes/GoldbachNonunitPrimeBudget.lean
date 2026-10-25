/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupport
import Mathlib.Tactic

/-!
# Finite prime-divisor logarithmic budget

The logarithmic monotonicity estimate is an explicit supplier
hypothesis. This theorem proves the exact finite aggregation, without
asserting a prime-power or character cancellation bound.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeBudget

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupport

noncomputable section

/-- Number of distinct prime divisors of q through N. -/
def finitePrimeDivisorCount (q N : ℕ) : ℕ :=
  (finitePrimeDivisors q N).card

/-- Finite aggregation of pointwise logarithmic bounds. -/
theorem primeDivisorLogSum_le_count_mul_log
    (q N : ℕ)
    (hlog : ∀ p ∈ finitePrimeDivisors q N,
      Real.log (p : ℝ) ≤ Real.log (N : ℝ)) :
    (∑ p ∈ finitePrimeDivisors q N, Real.log (p : ℝ)) ≤
      (finitePrimeDivisorCount q N : ℝ) * Real.log (N : ℝ) := by
  unfold finitePrimeDivisorCount
  calc
    (∑ p ∈ finitePrimeDivisors q N, Real.log (p : ℝ)) ≤
      ∑ _p ∈ finitePrimeDivisors q N, Real.log (N : ℝ) :=
        Finset.sum_le_sum (fun p hp => hlog p hp)
    _ = ((finitePrimeDivisors q N).card : ℝ) *
          Real.log (N : ℝ) := by simp

end
end GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeBudget
