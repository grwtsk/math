/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairWeight
import Mathlib.Tactic

/-!
# Rectangular pair-index finite sum transport

The finite equivalence preserves each prime-base/exponent pair and
the exact nonunit logarithmic weight. No new hypotheses are added.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairSumTransport

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairEquiv
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairWeight
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerSumTransport
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerWeightTransport

noncomputable section

/-- Transport the complete filtered-pair subtype mass to RectangularIndex. -/
theorem pairIndex_sum_eq_rectangularSupportedMass (q N : ℕ) :
    (∑ t : PairIndex N, pairWeight q N t) =
      rectangularSupportedMass q N := by
  classical
  unfold rectangularSupportedMass
  rw [← Equiv.sum_comp (pairIndexEquiv N) (rectangularWeight q N)]
  apply Finset.sum_congr rfl
  intro t ht
  exact pairWeight_eq_rectangularWeight q N t

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairSumTransport
