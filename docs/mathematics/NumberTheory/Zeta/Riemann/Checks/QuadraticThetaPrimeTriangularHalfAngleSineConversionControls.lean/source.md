# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeTriangularHalfAngleSineConversionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9add63fa0383f80a2122e8af0411a85adb67cf9e` · SHA-256 `95824beab38d616ac947bfe1d817caf1044bcf09c29a4f9b99771ed475ca5b5c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularHalfAngleSineConversion
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularHalfAngleSineConversionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["exp(2ix)-1 half-angle identity is source-written",
   "geometric numerator and denominator are rewritten through sine factors",
   "geometric block becomes phase times sine ratio off-boundary",
   "remaining sine-norm step is only phase times conjugate phase equals one"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularHalfAngleSineConversionControls
```
