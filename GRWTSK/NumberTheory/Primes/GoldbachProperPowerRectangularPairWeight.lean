/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairNormalization
import Mathlib.Tactic

/-!
# Rectangular pair-index weight transport

The PairIndex to RectangularIndex map preserves p and k. The nonunit
prime-logarithmic summand is therefore definitionally identical.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairWeight

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairEquiv
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerWeightTransport

noncomputable section

/-- Nonunit logarithmic weight on the finite filtered pair subtype. -/
def pairWeight (q N : ℕ) (t : PairIndex N) : ℝ :=
  if ¬ IsUnit ((t.1.1 ^ t.1.2 : ℕ) : ZMod q) then
    Real.log (t.1.1 : ℝ)
  else 0

/-- Exact weight preservation under the rectangular pair equivalence. -/
theorem pairWeight_eq_rectangularWeight (q N : ℕ) (t : PairIndex N) :
    pairWeight q N t =
      rectangularWeight q N (pairToRectangular N t) := by
  rfl

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairWeight
