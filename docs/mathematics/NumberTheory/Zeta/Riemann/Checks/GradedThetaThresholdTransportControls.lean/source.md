# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.GradedThetaThresholdTransportControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2feefb65a2d908e1108195abe128f4f38ec6f195` · SHA-256 `9e0ede8aad48c40bd6600d36bfb125fa48d70e62a5aca086ca011f70939eef20`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
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
```
