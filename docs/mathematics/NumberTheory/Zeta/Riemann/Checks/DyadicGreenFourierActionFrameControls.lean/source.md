# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicGreenFourierActionFrameControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f3ba521cdf44624f986b58c8e1f94a047d31b69` · SHA-256 `7a9d554947bd475942d750a75b36019614c96b48d6a848c2d06f33fb2ca2c552`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
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
```
