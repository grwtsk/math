/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaPhysicalReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveCompactOddArithmeticReturn

/-!
# Compact odd witnesses for the canonical primitive Weil form

The exact inverse-character explicit formula consumes the negative spectral
test on the actual zero divisor. The existing arithmetic return uses the
real-test inverse-character identity to transport the sign to the original
character. This supplies both witness contracts for primitive nonprincipal
characters. The positivity premise in a Weil criterion remains separate.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

/-- The maintained contour and physical-form return supplies the exact
formula used by the compact odd witness construction. -/
theorem primitiveInverseCharacterFormula : PrimitiveInverseCharacterFormula := by
  intro q _ χ hp hn f A hA hf hs
  exact SourcePrimeCorrelation.primitive_hasSum_canonical_arithmetic χ hp hn f A hA hf hs

/-- An off-line zero of a primitive nonprincipal Dirichlet L-function
gives a negative compact odd test for its canonical arithmetic form. -/
theorem primitiveNegativeWitness : PrimitiveNegativeWitness :=
  primitiveNegativeWitness_of_inverseCharacterFormula primitiveInverseCharacterFormula

/-- The same witness construction applies on every residual right corridor. -/
theorem primitiveRightCorridorNegativeWitness (σ : ℝ) :
    PrimitiveRightCorridorNegativeWitness σ :=
  primitiveRightCorridorNegativeWitness_of_inverseCharacterFormula primitiveInverseCharacterFormula

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
