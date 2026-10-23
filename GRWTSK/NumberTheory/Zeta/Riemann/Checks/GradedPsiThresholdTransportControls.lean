/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.GradedPsiThresholdTransport
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.GradedPsiThresholdTransportControls

open GRWTSK.RiemannHypothesis

theorem psi_to_theta_same_threshold
    {ρ : ℝ} (hρ : (1 / 2 : ℝ) ≤ ρ)
    (hψ : AllDyadicPsiAtThreshold ρ) :
    AllDyadicThetaAtThreshold ρ :=
  psiAtThreshold_to_thetaAtThreshold hρ hψ

end GRWTSK.RiemannHypothesis.Checks.GradedPsiThresholdTransportControls
