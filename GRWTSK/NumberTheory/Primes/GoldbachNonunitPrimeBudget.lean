/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupport
import Mathlib.Tactic

/-!
# Finite prime-divisor logarithmic budget

The original finite aggregation keeps an explicit logarithmic
monotonicity hypothesis. The pinned Real.log_le_log theorem discharges
that hypothesis for primes in the finite support, including the empty
supports at N = 0 and N = 1. No character cancellation is claimed.

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

/-- Every prime divisor in the inclusive cutoff is positive and at
most N; hence its real logarithm is bounded by log N. -/
theorem primeDivisorLog_le_log (q N p : ℕ)
    (hp : p ∈ finitePrimeDivisors q N) :
    Real.log (p : ℝ) ≤ Real.log (N : ℝ) := by
  change p ∈ (Finset.range (N + 1)).filter
    (fun p => Nat.Prime p ∧ p ∣ q) at hp
  obtain ⟨hprange, hprime, _⟩ := Finset.mem_filter.mp hp
  have hle : p ≤ N := by
    have hlt := Finset.mem_range.mp hprange
    omega
  exact Real.log_le_log
    (by exact_mod_cast hprime.pos)
    (by exact_mod_cast hle)

/-- The finite prime-divisor logarithmic sum satisfies the original
cardinality-times-log bound without a pointwise assumption. -/
theorem primeDivisorLogSum_le_count_mul_log_unconditional (q N : ℕ) :
    (∑ p ∈ finitePrimeDivisors q N, Real.log (p : ℝ)) ≤
      (finitePrimeDivisorCount q N : ℝ) * Real.log (N : ℝ) :=
  primeDivisorLogSum_le_count_mul_log q N
    (fun p hp => primeDivisorLog_le_log q N p hp)

end
end GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeBudget
