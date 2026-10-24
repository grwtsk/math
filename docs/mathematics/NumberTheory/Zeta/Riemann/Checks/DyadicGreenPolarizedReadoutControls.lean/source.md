# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicGreenPolarizedReadoutControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `575375748db0cb69429a9556b0ef78bd008fa01f` · SHA-256 `658e7a0e384753148968827f12cf0e0b636d16894ef60cb3346be4f0f783e6e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenPolarizedReadout
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicGreenPolarizedReadoutControls

open Filter Topology
open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.ComplexReadout
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem every_test_action_has_growing_fourier_reconstruction
    {X : ℕ} (hX : 0 < X)
    (φ : ComplexTest) :
    Tendsto (fourierReconstructedActionHead X φ)
      atTop (𝓝 (action X φ.value)) :=
  fourierReconstructedActionHead_tendsto hX φ

end GRWTSK.RiemannHypothesis.Checks.DyadicGreenPolarizedReadoutControls
```
