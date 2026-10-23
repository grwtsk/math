/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularAutocorrelationDiagonals
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularAutocorrelationDiagonalsControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["fixed positive autocorrelation diagonal has multiplicity N-d",
   "all terms on that diagonal have phase exp(2*pi*i*d*t)",
   "negative diagonal is the conjugate phase",
   "multiplicity divided by N matches triangular coefficient",
   "remaining autocorrelation step is only partitioning the double sum by offsets"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularAutocorrelationDiagonalsControls
