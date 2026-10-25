/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerIndexEquiv
import Mathlib.Tactic

/-!
# Weight preservation under the proper-power supported-index equivalence

The finite supported-index correspondence preserves the exact prime-log
weight and the nonunit predicate. The final equality of the original
nested sums and the rectangular packet is a separate finite sum
normalization obligation.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerWeightTransport

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerIndexEquiv

noncomputable section

/-- Weight on the original supported triple (n,p,k). -/
def originalWeight (q N : ℕ) (t : OriginalIndex N) : ℝ :=
  if ¬ IsUnit ((t.1.1 : ℕ) : ZMod q) then
    Real.log (t.1.2.1 : ℝ)
  else 0

/-- Weight on the rectangular supported pair (p,k). -/
def rectangularWeight (q N : ℕ) (t : RectangularIndex N) : ℝ :=
  if ¬ IsUnit (((t.1.1 ^ t.1.2 : ℕ)) : ZMod q) then
    Real.log (t.1.1 : ℝ)
  else 0

/-- The index equivalence preserves the exact nonunit prime-log weight. -/
theorem weight_toOriginal (q N : ℕ) (t : RectangularIndex N) :
    originalWeight q N (toOriginal N t) =
      rectangularWeight q N t := by
  rfl

/-- The original supported weight agrees with the rectangular weight
after forgetting its uniquely determined n coordinate. -/
theorem weight_toRectangular (q N : ℕ) (t : OriginalIndex N) :
    rectangularWeight q N (toRectangular N t) =
      originalWeight q N t := by
  have h := (indexEquiv N).left_inv t
  have hw := weight_toOriginal q N (toRectangular N t)
  rw [← h] at hw
  exact hw.symm

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerWeightTransport
