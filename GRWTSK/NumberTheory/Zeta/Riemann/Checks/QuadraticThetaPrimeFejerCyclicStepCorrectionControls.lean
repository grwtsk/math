/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicStepCorrection
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicStepCorrectionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["factor-one positive first moment undercounts the safe cyclic step budget",
   "a displacement d can cross two step boundaries",
   "the symmetric kernel contributes both +d and -d",
   "safe corrected L1 budget is four times the positive-distance first moment",
   "factor four preserves the X/N harmonic power-log shape",
   "remaining theorem is universal cyclic translation contraction"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicStepCorrectionControls
