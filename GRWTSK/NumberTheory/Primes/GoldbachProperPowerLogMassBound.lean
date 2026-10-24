/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerLogCountExplicit
import Mathlib.Tactic

/-!
# Logarithmic proper-power exponent mass bound

For prime p, log p is nonnegative and the exponent count is bounded
by Nat.log2 N. This gives an exact finite logarithmic mass bound.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerLogMassBound

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCount
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerLogCountExplicit

/-- Prime-base exponent logarithmic mass is bounded by log2 N times log p. -/
theorem properExponentLogMass_le_log2_log (p N : ℕ)
    (hp : Nat.Prime p) :
    properExponentLogMass p N ≤ (Nat.log2 N : ℝ) * Real.log (p : ℝ) := by
  apply properExponentLogMass_le p N (Nat.log2 N : ℝ)
  · exact Real.log_nonneg (by exact_mod_cast hp.one_le)
  · exact_mod_cast properExponentCount_le_log2 p N hp.two_le

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerLogMassBound
