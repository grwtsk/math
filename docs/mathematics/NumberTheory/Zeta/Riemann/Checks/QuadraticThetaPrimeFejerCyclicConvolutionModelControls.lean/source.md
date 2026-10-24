# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerCyclicConvolutionModelControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `34a84a307b00f96beaaf223d835127c929a538ad` · SHA-256 `6f975cc6ee8e0a5b406d4064700127ecd979dda8a1e6ada8c01d2a59e4d82824`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicConvolutionModel
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicConvolutionModelControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["residue zero is explicitly identified with arithmetic endpoint 4X",
   "cyclic sharp prefix indicator is defined exactly on ZMod(4X)",
   "period-4X Fejer convolution is defined on the full cyclic group",
   "full-cycle L1 error and translation L1 error are explicit",
   "remaining proof splits into arithmetic restriction, convex-combination reduction, and interval translation count"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicConvolutionModelControls
```
