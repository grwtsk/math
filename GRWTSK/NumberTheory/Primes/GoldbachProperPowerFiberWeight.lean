/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberBoxEquiv
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerBoxSumTransport
import Mathlib.Tactic

/-!
# Weight transport across dependent fiber and supported-box indices

The underlying triple is unchanged by fiberBoxEquiv, so the nonunit
prime-log weight is definitionally preserved. The dependent fiber
sum normalization remains separate.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberWeight

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberIndex
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberBoxEquiv
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerBoxSumTransport

noncomputable section

/-- Nonunit prime-log weight on a dependent fiber index. -/
def fiberWeight (q N : ℕ) (t : FiberIndex N) : ℝ :=
  if ¬ IsUnit ((t.1.1 : ℕ) : ZMod q) then
    Real.log (t.1.2.1 : ℝ)
  else 0

/-- The fiber-to-box map preserves the weight exactly. -/
theorem fiberWeight_eq_boxWeight (q N : ℕ) (t : FiberIndex N) :
    fiberWeight q N t = boxWeight q N (fiberToBox N t) := by
  rfl

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberWeight
