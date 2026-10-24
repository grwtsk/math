# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaShellCancellationControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `21d3bec358dabfc44001c845b20f6be360ccc7fc` · SHA-256 `e02820d8776c8d2ddd0728893494766076b226856f1c7191e0994ebf785a686b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaShellCancellation
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaShellCancellationControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["thetaError(2u) = thetaError(u) + shell(u)",
   "rho=7/8: inherited error + new shell must cancel to 3/4 scale",
   "rho=3/4: inherited error + new shell must cancel to 1/2 scale",
   "no shell-cancellation estimate is supplied by this control module"]

example (u : ℝ) :
    thetaError (2 * u) =
      thetaError u + thetaShellError u :=
  thetaError_two_mul u

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaShellCancellationControls
```
