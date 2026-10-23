/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimePartialDiscrepancy
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimePartialDiscrepancyControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["thetaError(m)-thetaError(2X) equals finite prime log mass discrepancy on (2X,m]",
   "real points reduce to floor(y) with additive rounding error <1",
   "the X^(3/4)*(log X)^2 target is therefore a finite partial-prime-sum estimate",
   "no three-quarter power saving is supplied"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimePartialDiscrepancyControls
