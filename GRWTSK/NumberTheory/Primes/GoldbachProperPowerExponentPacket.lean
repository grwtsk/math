/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentLogSum
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeSupport
import Mathlib.Tactic

/-!
# Fixed-prime proper-power divisor packet exponent sum

For a prime base dividing q, the packet's inner exponent sum is
exactly the literal exponent-count logarithmic mass.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentPacket

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCount
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentLogSum

noncomputable section

/-- The supported fixed-prime exponent packet equals its count mass. -/
theorem fixed_prime_packet_eq_logMass (p q N : ℕ)
    (hp : Nat.Prime p) (hpq : p ∣ q) :
    (∑ k ∈ Finset.Icc 2 N,
      if Nat.Prime p ∧ p ∣ q ∧ p ^ k ≤ N then
        Real.log (p : ℝ) else 0) =
      properExponentLogMass p N := by
  classical
  simp only [hp, hpq, true_and]
  rw [properExponentLogMass_eq_filtered_sum]
  rw [Finset.sum_filter]
  rfl

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentPacket
