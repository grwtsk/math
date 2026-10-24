/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerTripleEquiv
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerSumTransport
import Mathlib.Tactic

/-!
# Supported triple-box to OriginalIndex finite sum transport

The equivalence changes only the proof of membership. The finite
sum transports the nonunit prime-log weight without any additional
arithmetic assumption. The original dependent-sum normalization
remains a separate missing theorem.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerBoxSumTransport

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerTriplePacket
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerTripleEquiv
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerSumTransport
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerWeightTransport

noncomputable section

/-- The weight of a box-indexed triple. -/
def boxWeight (q N : ℕ) (t : BoxIndex N) : ℝ :=
  if ¬ IsUnit ((t.1.1 : ℕ) : ZMod q) then
    Real.log (t.1.2.1 : ℝ)
  else 0

/-- Changing the membership proof preserves the summand. -/
theorem boxWeight_eq_originalWeight (q N : ℕ) (t : BoxIndex N) :
    boxWeight q N t = originalWeight q N (boxToOriginal N t) := by
  rfl

/-- Exact transport between the two finite subtype-indexed sums. -/
theorem box_sum_eq_originalSupportedMass (q N : ℕ) :
    (∑ t : BoxIndex N, boxWeight q N t) =
      originalSupportedMass q N := by
  classical
  unfold originalSupportedMass
  rw [← Equiv.sum_comp (boxIndexEquiv N) (originalWeight q N)]
  apply Finset.sum_congr rfl
  intro t ht
  exact boxWeight_eq_originalWeight q N t

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerBoxSumTransport
