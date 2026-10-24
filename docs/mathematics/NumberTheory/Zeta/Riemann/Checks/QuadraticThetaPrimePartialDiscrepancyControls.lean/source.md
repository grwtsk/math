# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimePartialDiscrepancyControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1d527c4a1bf77efbda5e89767d7836d45f58ffc` · SHA-256 `333a96cf6764a7942532775b4e7e23ea994453f70fc5724555fb0c0ea5ce5fc4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimePartialDiscrepancy
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimePartialDiscrepancyControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["thetaError(m)-thetaError(2X) equals finite prime log mass discrepancy on (2X,m]",
   "real points reduce to floor(y) with additive rounding error <1",
   "the X^(3/4)*(log X)^2 target is therefore a finite partial-prime-sum estimate",
   "no three-quarter power saving is supplied"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimePartialDiscrepancyControls
```
