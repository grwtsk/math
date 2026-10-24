# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaShellPrimeEndpointControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dce19435011b69adee9efece01c29990b1c719a8` · SHA-256 `3061ed8b3e055d870f6543097f0ac49468efa345d8b0b21e6ce0965f06dfe329`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaShellPrimeEndpoint
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaShellPrimeEndpointControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["thetaShellError(X) = X*(primeOnlyMass0(X)+primeOnlyMass1(X))",
   "uniform shell cancellation implies endpoint cancellation",
   "endpoint cancellation is exactly expressible in prime-only coordinates",
   "endpoint-to-uniform shell extension remains open"]

example {X : ℕ} (hX : 0 < X) :
    thetaShellError (X : ℝ) =
      (X : ℝ) * (primeOnlyMass0 X + primeOnlyMass1 X) :=
  thetaShellError_natCast_eq_primeOnlyEndpoint hX

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaShellPrimeEndpointControls
```
