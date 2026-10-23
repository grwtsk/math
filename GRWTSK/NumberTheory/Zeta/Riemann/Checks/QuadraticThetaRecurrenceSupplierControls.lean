/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaRecurrenceSupplier
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaRecurrenceSupplierControls

open GRWTSK.RiemannHypothesis

def requiredRecurrences : List String :=
  ["rho=7/8: next octave <= K*A^2/X + descended residual",
   "rho=3/4: next octave <= K*A^2/X + critical residual"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaRecurrenceSupplierControls
