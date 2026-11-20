/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.CharacterWeilWindowBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletModThreeCharacter
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaData

/-!
# The native conductor-three integrated kernel

These declarations are moved without changing their namespace, types or bodies
from `WeilConductorThreeRadiusFourScrewGreen` at
`grwtsk/math@7dcbe07202484a7fdff0d631f6b1649ad64680c2`.
They retain the exact gamma constant, parity kernel, character, arithmetic
cutoff and signed prime term. The original file retains its analytical
argument and historical evidence status and imports this common source.

The definitions alone do not prove integral convergence, a derivative-carrier
return, the physical Green-metric identity, or positivity. The separate
truncation and sampling modules establish the bounds stated there.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen

open CharacterWindow OddRootProjection
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction

/-- The exact spectral rates of the native parity-one kernel. -/
def gammaRate (m : ℕ) : ℝ := 2 * (m : ℝ) + 3 / 2

/-- The physical inverse Neumann Green kernel; this is not the identity norm. -/
def physicalGreen (x y : ℝ) : ℝ :=
  (x ^ 2 + y ^ 2) / 16 - |x - y| / 2 + 2 / 3

/-- Native signed arithmetic hinges. The factor one half cancels exactly
`twistedPrime`'s factor two; there is no replacement of the character. -/
def primeHinges (t : ℝ) : ℝ :=
  twistedPrime 4 modThreeQuadratic
    (fun n => ((max (|t| - Real.log (n : ℝ)) 0 / 2 : ℝ) : ℂ))

/-- The original integrated source kernel. Its analytical interpretation is
recorded in `WeilConductorThreeRadiusFourScrewGreen`; the definition alone
does not prove convergence or a derivative-carrier return. -/
def sourceKernel (t : ℝ) : ℝ :=
  -gammaConstant 3 1 * |t| / 2 -
    (∫ r in Set.Ioi (0 : ℝ), parityKernel 1 r * min |t| r) +
    primeHinges t

/-- Finite gamma expansion retaining the same signed arithmetic. Pointwise
kernel order must not be confused with quadratic-form order. -/
def partialSourceKernel (M : ℕ) (t : ℝ) : ℝ :=
  -gammaConstant 3 1 * |t| / 2 -
    (∑ m ∈ Finset.range M,
      (1 - Real.exp (-gammaRate m * |t|)) / gammaRate m ^ 2) +
    primeHinges t

/-- Every retained exponential rate is positive, independently of an
arithmetic sign. -/
theorem gammaRate_pos (m : ℕ) : 0 < gammaRate m := by
  unfold gammaRate
  positivity

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen
