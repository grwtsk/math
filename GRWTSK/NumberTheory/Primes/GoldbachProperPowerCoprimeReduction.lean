/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerPowerDivisibility
import Mathlib.Tactic

/-!
# Coprimality descends from a positive power to its base

Uses the divisor-closed property of Nat.Coprime and the elementary
positive-power divisibility supplier. Source candidate only:
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerCoprimeReduction

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPowerDivisibility

/-- Coprimality of a positive power implies coprimality of its base. -/
theorem coprime_base_of_power (p q k : ℕ) (hk : 0 < k)
    (h : Nat.Coprime (p ^ k) q) : Nat.Coprime p q := by
  exact h.coprime_dvd_left (base_dvd_positive_power p k hk)

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerCoprimeReduction
