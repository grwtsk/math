# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeTriangularAutocorrelationDiagonalsControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a98d21638bc52be9c6bcf1c7d98176445dce49c` · SHA-256 `13c72b258c954096a5ca6b83fceddbff2d3e18807a07cf37481f154c115a83f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularAutocorrelationDiagonals
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularAutocorrelationDiagonalsControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["fixed positive autocorrelation diagonal has multiplicity N-d",
   "all terms on that diagonal have phase exp(2*pi*i*d*t)",
   "negative diagonal is the conjugate phase",
   "multiplicity divided by N matches triangular coefficient",
   "remaining autocorrelation step is only partitioning the double sum by offsets"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularAutocorrelationDiagonalsControls
```
