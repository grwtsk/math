/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorLog
import Mathlib.Data.Nat.PrimeFin

/-!
# Truncated prime-divisor support embeds in primeFactors

For nonzero q, every prime p≤N dividing q belongs to q.primeFactors.
The zero modulus is deliberately excluded: every prime divides zero,
but the finite primeFactors support does not enumerate those primes.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeFactorSubset

/-- Finite support of prime divisors up to N. -/
def truncatedPrimeDivisors (q N : ℕ) : Finset ℕ :=
  (Finset.range (N + 1)).filter (fun p => Nat.Prime p ∧ p ∣ q)

/-- For q nonzero, every truncated prime divisor is a prime factor. -/
theorem truncatedPrimeDivisors_subset_primeFactors (q N : ℕ)
    (hq : q ≠ 0) :
    truncatedPrimeDivisors q N ⊆ q.primeFactors := by
  intro p hp
  have h := (Finset.mem_filter.mp hp).2
  exact Nat.mem_primeFactors.mpr ⟨h.1, h.2, hq⟩

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeFactorSubset
