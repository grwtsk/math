/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerCoprimePowerIff
import Mathlib.Data/ZMod/Basic

/-!
# ZMod units of positive prime-base powers

The unit criterion is reduced to ordinary Nat.Coprime using the
Mathlib ZMod criterion. The result covers all moduli, including
zero and one, and does not assume primality of the base.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerUnitCoprime

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerCoprimePowerIff

/-- For positive k, unit status of p^k modulo q equals base coprimality. -/
theorem isUnit_power_iff_coprime_base (p q k : ℕ) (hk : 0 < k) :
    IsUnit ((p ^ k : ℕ) : ZMod q) ↔ Nat.Coprime p q := by
  rw [ZMod.isUnit_iff_coprime]
  exact coprime_power_iff p q k hk

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerUnitCoprime
