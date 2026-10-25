/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCountExplicitBound
import Mathlib.Tactic

/-!
# Explicit finite proper-power logarithmic mass bound

For prime p, log p is nonnegative. The uniform exponent-count bound
then gives properExponentLogMass p N ≤ N log p.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentLogBound

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCount
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCountExplicitBound

/-- The exponent logarithmic mass of a prime base is at most N log p. -/
theorem properExponentLogMass_le_N_log (p N : ℕ)
    (hp : Nat.Prime p) :
    properExponentLogMass p N ≤ (N : ℝ) * Real.log (p : ℝ) := by
  apply properExponentLogMass_le p N (N : ℝ)
  · exact Real.log_nonneg (by exact_mod_cast hp.one_le)
  · exact_mod_cast properExponentCount_le p N

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentLogBound
