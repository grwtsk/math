/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularBoundaryLocalization
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularBoundaryLocalizationControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["the previous boundary claim is provably vacuous",
   "localized prime mass in length H below 4X is <= H*log(4X)",
   "corrected localization data names the actual approximation error",
   "actual kernel localization into width ceil(X/N) remains open"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularBoundaryLocalizationControls
