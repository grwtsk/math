/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeFactorLogBound
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic

/-!
# Full prime-factor logarithmic sum and arithmetic radical

Uses the pinned Mathlib radical product and finite-product logarithm.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerRadicalLog

open scoped BigOperators

/-- The full prime-factor logarithmic sum is log(radical q). -/
theorem primeFactors_log_sum_eq_log_radical (q : ℕ) :
    (∑ p ∈ q.primeFactors, Real.log (p : ℝ)) =
      Real.log (Nat.radical q : ℝ) := by
  rw [Nat.radical_eq_prod_primeFactors]
  push_cast
  rw [Real.log_prod]
  intro p hp
  have hprime : Nat.Prime p := (Nat.mem_primeFactors.mp hp).1
  exact_mod_cast hprime.ne_zero

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerRadicalLog
