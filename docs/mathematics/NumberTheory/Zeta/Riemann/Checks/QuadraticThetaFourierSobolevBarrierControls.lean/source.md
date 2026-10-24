# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaFourierSobolevBarrierControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83074f6c38db60021b2ad1e986eebbb9f2e0683e` · SHA-256 `37dd59fdf1b1428672b90e0da580680ac3f88f3704059b4659d3af154f71c676`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaFourierSobolevBarrier
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaFourierSobolevBarrierControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["plain Sobolev supremum route requires s>1/2",
   "a model jump c_k~1/k gives weighted square exponent 2s-2",
   "p-series convergence for that model requires s<1/2",
   "the two strict thresholds do not overlap",
   "weighted arithmetic supplier and non-Sobolev maximal readout remain open"]

example {s : ℝ} :
    jumpModelWeightedSquareExponent s < -1 ↔
      s < (1 : ℝ) / 2 :=
  jumpModelWeightedSquareSummableExponent_iff

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaFourierSobolevBarrierControls
```
