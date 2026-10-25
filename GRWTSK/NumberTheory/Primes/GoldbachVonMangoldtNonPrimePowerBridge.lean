/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonPrimePowerPrimeZero

/-!
# Canonical von Mangoldt identification off prime-power support

The full repository weight and canonical von Mangoldt both vanish
on inputs that are not prime powers, including zero and one.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonPrimePowerBridge

open GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonPrimePowerZero
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonPrimePowerPrimeZero

/-- Full prime-power weight vanishes outside prime-power support. -/
theorem primePowerWeight_eq_zero_of_not_prime_pow
    (n : ℕ) (hn : ¬ IsPrimePow n) :
    primePowerWeight n = 0 := by
  unfold primePowerWeight
  rw [primeLogWeight_eq_zero_of_not_prime_pow n hn,
      properPrimePowerWeight_eq_zero_of_not_prime_pow n hn]
  ring

/-- The repository's full weight equals canonical von Mangoldt off support. -/
theorem primePowerWeight_eq_vonMangoldt_of_not_prime_pow
    (n : ℕ) (hn : ¬ IsPrimePow n) :
    primePowerWeight n = ArithmeticFunction.vonMangoldt n := by
  rw [primePowerWeight_eq_zero_of_not_prime_pow n hn]
  exact (ArithmeticFunction.vonMangoldt_eq_zero_iff.mpr hn).symm

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonPrimePowerBridge
