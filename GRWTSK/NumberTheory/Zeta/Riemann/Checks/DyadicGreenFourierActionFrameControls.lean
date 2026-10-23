/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenFourierActionFrame
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicGreenFourierActionFrameControls

open Filter Topology
open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem zero_mode_is_centered_out
    {X : ℕ} (hX : 0 < X) :
    greenResidualFourierCoeff X 0 = 0 :=
  greenResidualFourierCoeff_zero hX

theorem action_frame_captures_augmented_energy
    {X : ℕ} (hX : 0 < X) :
    Tendsto (fullGreenAdmissibleActionStage X)
      atTop (𝓝 (augmentedEnergy X)) :=
  fullGreenAdmissibleActionStage_tendsto hX

end GRWTSK.RiemannHypothesis.Checks.DyadicGreenFourierActionFrameControls
