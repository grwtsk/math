/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonPrimePowerZero
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt

/-!
# Prime-only logarithmic weight vanishes outside prime-power support

Every prime is a prime power. Therefore a non-prime-power input
cannot contribute a prime-only logarithmic weight.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonPrimePowerPrimeZero

open GRWTSK.NumberTheory.Primes.GoldbachWeighted

/-- A non-prime-power has zero prime-only logarithmic weight. -/
theorem primeLogWeight_eq_zero_of_not_prime_pow
    (n : ℕ) (hn : ¬ IsPrimePow n) :
    primeLogWeight n = 0 := by
  have hnotprime : ¬ Nat.Prime n := by
    intro hp
    exact hn hp.isPrimePow
  simp [primeLogWeight, hnotprime]

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonPrimePowerPrimeZero
