/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerCoprimeReduction
import Mathlib.Tactic

/-!
# Positive-power coprimality equivalence

Combines the divisor-closed descent theorem with the standard
power-preservation of Nat.Coprime. No ZMod unit criterion is assumed.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerCoprimePowerIff

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerCoprimeReduction

/-- Coprimality of a positive power is equivalent to that of its base. -/
theorem coprime_power_iff (p q k : ℕ) (hk : 0 < k) :
    Nat.Coprime (p ^ k) q ↔ Nat.Coprime p q := by
  constructor
  · exact coprime_base_of_power p q k hk
  · intro h
    exact h.pow_left k

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerCoprimePowerIff
