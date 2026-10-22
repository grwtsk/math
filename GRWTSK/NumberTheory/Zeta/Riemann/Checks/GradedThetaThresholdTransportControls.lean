/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.GradedThetaThresholdTransport
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.GradedThetaThresholdTransportControls

open GRWTSK.RiemannHypothesis

theorem seven_eighths_theta_returns_same_threshold
    (hθ : AllDyadicThetaAtThreshold ((7 : ℝ) / 8)) :
    RiemannZetaZeroFreeRightHalfPlane ((7 : ℝ) / 8) :=
  thetaAtThreshold_to_sameZeroFree
    (by norm_num) (by norm_num) hθ

end GRWTSK.RiemannHypothesis.Checks.GradedThetaThresholdTransportControls
