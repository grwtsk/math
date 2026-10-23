/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerArithmeticGainSplit
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerArithmeticGainSplitControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["total graded Fejer gain splits as beta/2 plus 1-rho",
   "complete bandwidth neutralization leaves smoothed-value exponent rho",
   "residual value closure is equivalent to arithmetic gain at least 1-rho",
   "pure bandwidth neutralization cannot close a subunit threshold",
   "boundary-minimal bandwidth is beta=2(1-rho)",
   "boundary-minimal total gain is 2(1-rho)",
   "at rho=7/8 the boundary-minimal bandwidth is 1/4",
   "at rho=7/8 bandwidth neutralization contributes 1/8",
   "at rho=7/8 residual arithmetic cancellation must contribute at least 1/8",
   "the split supplier converts to the corrected total-gain supplier",
   "seven-eighths smoothed-value supplier remains open"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerArithmeticGainSplitControls
