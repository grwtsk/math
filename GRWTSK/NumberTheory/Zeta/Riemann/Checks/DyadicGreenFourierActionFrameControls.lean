/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenFourierActionFrame
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicGreenFourierActionFrameControls

open Filter Topology
open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

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
