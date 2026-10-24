/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerUnitCoprime
import Mathlib.Tactic

/-!
# Prime noncoprimality and divisibility

For a prime p, failure of coprimality with q is equivalent to p
dividing q. No positivity or nonzero hypothesis on q is needed.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisor

/-- For prime p, noncoprimality with q is exactly divisibility by p. -/
theorem not_coprime_iff_dvd (p q : ℕ) (hp : Nat.Prime p) :
    ¬ Nat.Coprime p q ↔ p ∣ q := by
  rw [hp.coprime_iff_not_dvd]
  push_neg
  rfl

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisor
