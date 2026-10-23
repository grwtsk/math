/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFirstMomentCorrection
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerFirstMomentCorrectionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["plain sampled-kernel mass is not the correct sharp-step error budget",
   "displacement d crosses d boundary positions",
   "correct budget is the first moment sum d*kappa(d)",
   "period-4X square decay gives d*kappa(d) <= X/(N*d)",
   "finite harmonic summation is isolated explicitly",
   "remaining arithmetic theorem is the sharp-step convolution comparison"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerFirstMomentCorrectionControls
