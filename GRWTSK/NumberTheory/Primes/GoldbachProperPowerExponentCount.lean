/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachNonunitCombinedBudget
import Mathlib.Tactic

/-!
# Finite proper prime-power exponent-count interface

The exponent count is a literal finite cardinality. Its logarithmic
estimate and its relation to nonunit mass are separate suppliers.
No asymptotic prime-distribution theorem is claimed.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCount

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupport

noncomputable section

/-- Count proper powers p^k≤N with k≥2 using an explicit finite range. -/
def properExponentCount (p N : ℕ) : ℕ :=
  ((Finset.Icc 2 N).filter (fun k => p ^ k ≤ N)).card

/-- Logarithmic mass assigned to proper powers of a prime p. -/
def properExponentLogMass (p N : ℕ) : ℝ :=
  (properExponentCount p N : ℝ) * Real.log (p : ℝ)

/-- An explicitly supplied exponent-count bound transfers to the
corresponding logarithmic mass without hiding any estimate. -/
theorem properExponentLogMass_le
    (p N : ℕ) (C : ℝ)
    (hlog : 0 ≤ Real.log (p : ℝ))
    (hcount : (properExponentCount p N : ℝ) ≤ C) :
    properExponentLogMass p N ≤ C * Real.log (p : ℝ) := by
  unfold properExponentLogMass
  exact mul_le_mul_of_nonneg_right hcount hlog

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCount
