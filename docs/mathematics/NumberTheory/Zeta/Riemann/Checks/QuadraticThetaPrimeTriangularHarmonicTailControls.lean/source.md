# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeTriangularHarmonicTailControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95cd56d1a510da7377f94c2031c52d06b9ce90d0` · SHA-256 `a05f886c53f71f90ef3f548c78b16c6cf80541bdf467bdd2d06e44d3d2aed14b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularHarmonicTail
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularHarmonicTailControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["triangular tail modeled by pointwise leakage O((X/N)/d)",
   "summing over lattice distance costs harmonic(X)",
   "harmonic(X) <= 1+log X",
   "balanced N~X^(1/3) keeps tail power at 2/3 up to logs",
   "actual pointwise kernel leakage theorem remains open"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularHarmonicTailControls
```
