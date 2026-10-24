# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaFourierLogLossAdapterControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42959b557298775a6ab78ee9bd4a6f16ff5dbc6b` · SHA-256 `bd7d2d0808211f94684bd4a0fc6444cf1468f4ac6ca26cc89c9d53df0cc3b32f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaFourierLogLossAdapter
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaFourierLogLossAdapterControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["fixed log^2 maximal loss is absorbed by eta-slack",
   "only the power exponent matters for the graded recurrence",
   "at rho=7/8 it suffices to prove X^(3/4)*(log X)^2 oscillation",
   "no logarithmic-loss maximal estimate is supplied"]

example :
    quadraticThreshold ((7 : ℝ) / 8) = (3 : ℝ) / 4 :=
  sevenEighths_logSqOscillation_power

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaFourierLogLossAdapterControls
```
