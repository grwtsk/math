/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberWeight
import Mathlib.Tactic

/-!
# Finite dependent fiber-to-box sum transport

The exact fiberBoxEquiv and weight preservation imply equality of
the complete subtype-indexed sums. This does not normalize the
original nested n-indexed fiber sum.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberSumTransport

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberIndex
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberBoxEquiv
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberWeight
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerTripleEquiv
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerBoxSumTransport

noncomputable section

/-- The complete finite mass on the dependent fiber subtype. -/
def fiberSupportedMass (q N : ℕ) : ℝ :=
  ∑ t : FiberIndex N, fiberWeight q N t

/-- Exact finite transport of fiber mass to the supported box index. -/
theorem fiberSupportedMass_eq_box_sum (q N : ℕ) :
    fiberSupportedMass q N =
      ∑ t : BoxIndex N, boxWeight q N t := by
  classical
  unfold fiberSupportedMass
  rw [← Equiv.sum_comp (fiberBoxEquiv N) (boxWeight q N)]
  apply Finset.sum_congr rfl
  intro t ht
  exact fiberWeight_eq_boxWeight q N t

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberSumTransport
