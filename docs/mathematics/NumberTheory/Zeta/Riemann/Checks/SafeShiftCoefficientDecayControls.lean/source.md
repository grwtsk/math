# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.SafeShiftCoefficientDecayControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4eb4609426886f236781a9bfeb9553193bf5f8c7` · SHA-256 `eeb3d12f3b73663d48ab9bf90714fa8442673a462c2658d33c3112e724533e0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftCoefficientDecay
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.SafeShiftCoefficientDecayControls

open Filter Topology
open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem axial_unrenormalized_decay (z : ZeroPoint) :
    Tendsto (safeAxialQuarticCoefficient z) atTop (𝓝 0) :=
  safeAxialQuarticCoefficient_tendsto_zero z

theorem transverse_unrenormalized_decay (z : ZeroPoint) :
    Tendsto (safeTransverseQuarticCoefficient z) atTop (𝓝 0) :=
  safeTransverseQuarticCoefficient_tendsto_zero z

end GRWTSK.RiemannHypothesis.Checks.SafeShiftCoefficientDecayControls
```
