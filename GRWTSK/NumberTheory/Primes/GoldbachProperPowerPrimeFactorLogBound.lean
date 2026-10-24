/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorLogFilter
import Mathlib.Tactic

/-!
# Truncated prime-divisor logarithmic weight is bounded by full factors

For nonzero q, truncatedPrimeDivisors q N is a subset of
q.primeFactors. Each prime logarithm is nonnegative, so extending
the finite sum only increases its value.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeFactorLogBound

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorLog
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeFactorSubset
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorLogFilter

/-- The truncated logarithmic divisor mass is at most the full
prime-factor logarithmic sum, provided q is nonzero. -/
theorem primeDivisorLogMass_le_primeFactors_sum (q N : ℕ)
    (hq : q ≠ 0) :
    primeDivisorLogMass q N ≤
      ∑ p ∈ q.primeFactors, Real.log (p : ℝ) := by
  rw [primeDivisorLogMass_eq_filter_sum]
  apply Finset.sum_le_sum_of_subset_of_nonneg
    (truncatedPrimeDivisors_subset_primeFactors q N hq)
  intro p hp hnot
  have hprime : Nat.Prime p := (Nat.mem_primeFactors.mp hp).1
  exact Real.log_nonneg (by exact_mod_cast hprime.one_le)

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeFactorLogBound
