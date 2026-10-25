/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairSumTransport

/-!
# Rectangular proper-power packet to supported rectangular mass

Composition of the filtered pair normalization and the pair-index
sum transport. All dependencies remain source candidates until
elaboration, kernel checking, and transitive axiom audit are run.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularComposition

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairNormalization
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairWeight
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairSumTransport
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairEquiv
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerSumTransport

/-- Exact rectangular packet normalization, with no additional hypothesis. -/
theorem rectangularProperPowerMass_eq_rectangularSupportedMass (q N : ℕ) :
    rectangularProperPowerMass q N = rectangularSupportedMass q N := by
  calc
    rectangularProperPowerMass q N =
        ∑ t : PairIndex N, pairWeight q N t := by
          simpa [pairWeight] using
            rectangularProperPowerMass_eq_pairIndex_sum q N
    _ = rectangularSupportedMass q N :=
      pairIndex_sum_eq_rectangularSupportedMass q N

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularComposition
