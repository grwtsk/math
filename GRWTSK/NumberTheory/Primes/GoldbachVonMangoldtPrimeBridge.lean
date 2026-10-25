/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt

/-!
# Prime-case comparison with canonical von Mangoldt

This proves only the prime input case of the pointwise identification.
Composite prime powers and non-prime-powers remain separate obligations.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPrimeBridge

open GRWTSK.NumberTheory.Primes.GoldbachWeighted

/-- The prime-only weight agrees with von Mangoldt at a prime input. -/
theorem primeLogWeight_eq_vonMangoldt_of_prime (p : ℕ)
    (hp : Nat.Prime p) :
    primeLogWeight p = ArithmeticFunction.vonMangoldt p := by
  rw [primeLogWeight, if_pos hp]
  exact (ArithmeticFunction.vonMangoldt_apply_prime hp).symm

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPrimeBridge
