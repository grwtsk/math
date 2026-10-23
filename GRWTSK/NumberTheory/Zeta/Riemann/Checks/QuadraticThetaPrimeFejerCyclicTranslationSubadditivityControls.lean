/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicTranslationSubadditivity
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicTranslationSubadditivityControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["generic cyclic translation L1 is subadditive",
   "natural-multiple shifts telescope from the unit shift",
   "reverse shift is represented by L-r.val",
   "minimum of forward and reverse lengths gives cyclic distance",
   "CyclicSharpTranslationTelescopingClaim is discharged",
   "remaining smoothing supplier is unit translation boundary control only"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicTranslationSubadditivityControls
