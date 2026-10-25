/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerSumTransport
import Mathlib.Tactic

/-!
# Supported rectangular packet: exact finite indicator normalization

The supported-index sum is expressed using the original rectangular
predicate without asserting the still-open dependent nested-sum
normalization. This is a source candidate only.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularNormalization

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerIndexSupport
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerIndexEquiv
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerWeightTransport
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerSumTransport

noncomputable section

/-- The supported pair weight depends only on p, k, and the nonunit test. -/
theorem rectangularWeight_eq_ite (q N : ℕ) (t : RectangularIndex N) :
    rectangularWeight q N t =
      if ¬ IsUnit (((t.1.1 ^ t.1.2 : ℕ)) : ZMod q) then
        Real.log (t.1.1 : ℝ)
      else 0 := by
  rfl

/-- The supported rectangular sum can be written as a finite sum
over the subtype with its original arithmetic predicate retained. -/
theorem rectangularSupportedMass_eq_subtype_sum (q N : ℕ) :
    rectangularSupportedMass q N =
      ∑ t : RectangularIndex N,
        if ¬ IsUnit (((t.1.1 ^ t.1.2 : ℕ)) : ZMod q) then
          Real.log (t.1.1 : ℝ)
        else 0 := by
  unfold rectangularSupportedMass
  apply Finset.sum_congr rfl
  intro t ht
  exact rectangularWeight_eq_ite q N t

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularNormalization
