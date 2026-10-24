/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPrimeCorrectionZero

/-!
# Canonical von Mangoldt identification on prime inputs

The full prime-power weight is the prime-only logarithmic weight
plus the proper-power correction, which vanishes at prime inputs.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPrimeFullBridge

open GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPrimeCorrectionZero
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPrimeBridge

/-- The repository's full prime-power weight equals canonical von Mangoldt at primes. -/
theorem primePowerWeight_eq_vonMangoldt_prime (p : ℕ)
    (hp : Nat.Prime p) :
    primePowerWeight p = ArithmeticFunction.vonMangoldt p := by
  unfold primePowerWeight
  rw [properPrimePowerWeight_prime_eq_zero p hp, add_zero]
  exact primeLogWeight_eq_vonMangoldt_of_prime p hp

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPrimeFullBridge
