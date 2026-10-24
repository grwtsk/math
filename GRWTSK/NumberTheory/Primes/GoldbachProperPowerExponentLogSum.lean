/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCount
import Mathlib.Tactic

/-!
# Proper-power exponent count as a finite logarithmic sum

The literal exponent count is a cardinality of a finite filter.
Its real-valued logarithmic mass is exactly the corresponding
constant-weight finite sum. No estimate or prime-density claim.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentLogSum

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCount

noncomputable section

/-- The exponent-count logarithmic mass is the sum of log p over
exactly those exponents k in [2,N] for which p^k ≤ N. -/
theorem properExponentLogMass_eq_filtered_sum (p N : ℕ) :
    properExponentLogMass p N =
      ∑ k ∈ (Finset.Icc 2 N).filter (fun k => p ^ k ≤ N),
        Real.log (p : ℝ) := by
  classical
  unfold properExponentLogMass properExponentCount
  simp

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentLogSum
