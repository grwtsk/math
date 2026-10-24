/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaNormalization
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberSumTransport
import Mathlib.Tactic

/-!
# Finite sigma-to-fiber weight transport

The sigma-to-fiber map changes the indexing representation but
retains n, p and k, so the nonunit prime-logarithmic weight agrees.
This source candidate does not claim the full mass equality.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaWeight

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaFiberEquiv
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberWeight

noncomputable section

/-- Weight on the finite supported sigma index. -/
def sigmaWeight (q N : ℕ) (t : SigmaSupportedIndex N) : ℝ :=
  if ¬ IsUnit (t.1.1 : ZMod q) then
    Real.log (t.1.2.1 : ℝ)
  else 0

/-- The sigma-to-fiber map preserves the nonunit logarithmic weight. -/
theorem sigmaWeight_eq_fiberWeight (q N : ℕ)
    (t : SigmaSupportedIndex N) :
    sigmaWeight q N t = fiberWeight q N (sigmaToFiber N t) := by
  rfl

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaWeight
