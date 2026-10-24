/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeFactorSubset
import Mathlib.Tactic

/-!
# Prime-divisor logarithmic weight as a supported finite sum

The indicator sum D(q,N) is rewritten as a sum over the exact
truncatedPrimeDivisors support. No positivity or modulus assumption
is required for this finite identity.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorLogFilter

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorLog
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeFactorSubset

/-- Indicator and filtered-support presentations of D(q,N) coincide. -/
theorem primeDivisorLogMass_eq_filter_sum (q N : ℕ) :
    primeDivisorLogMass q N =
      ∑ p ∈ truncatedPrimeDivisors q N, Real.log (p : ℝ) := by
  classical
  unfold primeDivisorLogMass truncatedPrimeDivisors
  rw [Finset.sum_filter]
  rfl

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorLogFilter
