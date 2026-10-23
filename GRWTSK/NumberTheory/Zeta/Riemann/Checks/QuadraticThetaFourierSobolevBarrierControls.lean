/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaFourierSobolevBarrier
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaFourierSobolevBarrierControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["plain Sobolev supremum route requires s>1/2",
   "a model jump c_k~1/k gives weighted square exponent 2s-2",
   "p-series convergence for that model requires s<1/2",
   "the two strict thresholds do not overlap",
   "weighted arithmetic supplier and non-Sobolev maximal readout remain open"]

example {s : ℝ} :
    jumpModelWeightedSquareExponent s < -1 ↔
      s < (1 : ℝ) / 2 :=
  jumpModelWeightedSquareSummableExponent_iff

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaFourierSobolevBarrierControls
