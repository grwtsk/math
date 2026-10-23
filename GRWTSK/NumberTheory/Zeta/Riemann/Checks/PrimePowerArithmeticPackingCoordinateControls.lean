/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerArithmeticPackingCoordinate
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PrimePowerArithmeticPackingCoordinateControls

open GRWTSK.ArithmeticScale
open GRWTSK.RiemannHypothesis

def primeTwo : PrimeIndex := ⟨2, by norm_num⟩

def twoSquaredEvent : PrimePowerEvent where
  prime := primeTwo
  exponent := 2
  exponent_pos := by norm_num

/-- The raw x-coordinate for 2^2 is exactly 2 log 2. -/
theorem twoSquared_logScale :
    twoSquaredEvent.logScale = 2 * Real.log 2 := by
  norm_num [twoSquaredEvent, PrimePowerEvent.logScale, primeTwo]

/-- The raw y-coordinate for every power of 2 remains log 2 before the exact
explicit-formula test weight is applied. -/
theorem twoSquared_mangoldtScale :
    twoSquaredEvent.mangoldtScale = Real.log 2 := by
  rfl

/-- The natural source label is the actual prime-power value 4. -/
theorem twoSquared_natValue :
    twoSquaredEvent.natValue = 4 := by
  norm_num [twoSquaredEvent, PrimePowerEvent.natValue, primeTwo]

/-- The event-level source predicate recognizes the actual value. -/
theorem four_is_primePowerEventValue :
    IsPrimePowerEventValue 4 := by
  exact ⟨twoSquaredEvent, twoSquared_natValue⟩

end GRWTSK.RiemannHypothesis.Checks.PrimePowerArithmeticPackingCoordinateControls
