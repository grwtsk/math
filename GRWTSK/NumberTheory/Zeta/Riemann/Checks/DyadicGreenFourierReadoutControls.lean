/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenFourierReadout
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicGreenFourierReadoutControls

open GRWTSK.RiemannHypothesis

theorem nonzero_mode_is_exact_action
    {X : ℕ} (hX : 0 < X)
    {k : ℤ} (hk : k ≠ 0) :
    ‖action X (fourierModeComplexTest k hk).value‖^2 =
      ‖greenResidualFourierCoeff X k‖^2 :=
  action_fourierModeComplexTest_norm_sq hX hk

end GRWTSK.RiemannHypothesis.Checks.DyadicGreenFourierReadoutControls
