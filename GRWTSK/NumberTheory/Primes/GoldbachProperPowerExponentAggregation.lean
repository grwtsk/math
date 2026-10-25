/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentPacket

/-!
# Divisor proper-power packet as prime-base exponent-count mass

The outer finite sum retains the primality and divisibility filter;
each eligible base contributes its exact exponent-count logarithmic
mass. No asymptotic estimate is asserted.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentAggregation

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeSupport
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCount
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentPacket

/-- Exact finite aggregation of the divisor packet over prime bases. -/
theorem divisorProperPowerMass_eq_exponentLogMass_sum (q N : ℕ) :
    divisorProperPowerMass q N =
      ∑ p ∈ Finset.range (N + 1),
        if Nat.Prime p ∧ p ∣ q then
          properExponentLogMass p N
        else 0 := by
  classical
  unfold divisorProperPowerMass
  apply Finset.sum_congr rfl
  intro p hp
  by_cases h : Nat.Prime p ∧ p ∣ q
  · exact (fixed_prime_packet_eq_logMass p q N h.1 h.2).trans
      (by simp [h])
  · simp only [h, false_and, ite_false]
    apply Finset.sum_eq_zero
    intro k hk
    simp [h]

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentAggregation
