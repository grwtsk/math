/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtProperPowerPrimeZero

/-!
# Canonical von Mangoldt identification on proper prime powers

This composes the exact prime-only zero weight, singleton proper-power
packet value and canonical von Mangoldt prime-power evaluation.
Non-prime-power inputs and the boundaries 0,1 remain separate.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtProperPowerBridge

open GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtProperPowerValue
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtProperPowerPrimeZero

/-- The repository's full prime-power weight equals canonical von Mangoldt
on a proper prime power. -/
theorem primePowerWeight_eq_vonMangoldt_prime_pow
    (p k : ℕ) (hp : Nat.Prime p) (hk : 2 ≤ k) :
    primePowerWeight (p ^ k) =
      ArithmeticFunction.vonMangoldt (p ^ k) := by
  unfold primePowerWeight
  rw [primeLogWeight_prime_pow_eq_zero p k hk,
      properPrimePowerWeight_prime_pow p k hp hk,
      zero_add]
  exact (vonMangoldt_prime_pow_eq_log p k hp hk).symm

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtProperPowerBridge
