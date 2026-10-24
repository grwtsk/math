/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisor

/-!
# Exact nonunit support of proper prime powers

This composes the positive-power ZMod unit criterion with the
prime noncoprimality/divisibility equivalence. The statement is
uniform in q, including q=0 and q=1.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerNonunitSupport

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerUnitCoprime
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisor

/-- The nonunit condition on a proper prime power is exactly base
divisibility by the prime, with no additional modulus hypothesis. -/
theorem nonunit_prime_power_iff_dvd
    (p q k : ℕ) (hp : Nat.Prime p) (hk : 2 ≤ k) :
    (¬ IsUnit ((p ^ k : ℕ) : ZMod q)) ↔ p ∣ q := by
  rw [isUnit_power_iff_coprime_base p q k (by omega)]
  exact not_coprime_iff_dvd p q hp

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerNonunitSupport
