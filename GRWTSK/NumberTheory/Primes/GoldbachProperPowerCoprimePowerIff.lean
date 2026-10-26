/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Data.Nat.GCD.Basic

/-!
# Positive-power coprimality equivalence

The exact positive-exponent equivalence is already available in pinned
Mathlib as Nat.coprime_pow_left_iff. Keep this local name as a stable
interface for the ZMod nonunit-support chain, without importing the
separate elementary divisibility/descent modules.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerCoprimePowerIff

/-- Coprimality of a positive power is equivalent to that of its base. -/
theorem coprime_power_iff (p q k : ℕ) (hk : 0 < k) :
    Nat.Coprime (p ^ k) q ↔ Nat.Coprime p q :=
  Nat.coprime_pow_left_iff hk p q

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerCoprimePowerIff
