# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicGreenFourierFrameControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd1cccd744e4d8afbd36bd548ca028ee21d21958` · SHA-256 `8166ea5bf23d8a8396f6d0a5086ea7a25633cce4551cc9b9c3db0bbeb41e5e6b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenFourierFrame
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicGreenFourierFrameControls

open Filter Topology
open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem Fourier_heads_capture_green_energy
    (X : ℕ) :
    Tendsto (greenFourierHeadEnergy X) atTop (𝓝 (greenEnergy X)) :=
  greenFourierHeadEnergy_tendsto X

theorem full_Fourier_stage_captures_augmented_energy
    (X : ℕ) :
    Tendsto (fullGreenFourierStage X) atTop (𝓝 (augmentedEnergy X)) :=
  fullGreenFourierStage_tendsto X

end GRWTSK.RiemannHypothesis.Checks.DyadicGreenFourierFrameControls
```
