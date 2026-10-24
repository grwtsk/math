/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerTripleMembership
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerSumTransport
import Mathlib.Tactic

/-!
# Supported triple box to original subtype: finite weight correspondence

This is an exact source-level equality of summands under the natural
subtype inclusion. The full finite sum reindexing is not asserted.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerTripleWeight

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerTriplePacket
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerTripleMembership
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerIndexEquiv
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerWeightTransport

noncomputable section

/-- A supported finite triple determines an element of OriginalIndex. -/
def toOriginalIndex (N : ℕ) (t : ℕ × ℕ × ℕ)
    (ht : t ∈ supportedTripleBox N) : OriginalIndex N :=
  ⟨t, (mem_supportedTripleBox_iff N t).mp ht⟩

/-- The nonunit logarithmic summand is preserved by subtype inclusion. -/
theorem triple_weight_eq_originalWeight (q N : ℕ)
    (t : ℕ × ℕ × ℕ) (ht : t ∈ supportedTripleBox N) :
    (if ¬ IsUnit ((t.1 : ℕ) : ZMod q) then
       Real.log (t.2.1 : ℝ) else 0) =
      originalWeight q N (toOriginalIndex N t ht) := by
  rfl

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerTripleWeight
