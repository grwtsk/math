import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.DerivativeRadicalBound
import GRWTSK.NumberTheory.DiophantineEquations.ABCStatement

-- A field-polynomial degree bound cannot inhabit the all-epsilon integer target.
example : GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCConjecture := by
  exact @Polynomial.abc
