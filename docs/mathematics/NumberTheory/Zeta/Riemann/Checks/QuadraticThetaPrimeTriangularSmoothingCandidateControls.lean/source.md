# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeTriangularSmoothingCandidateControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7baa844ca020ab197c88a1b1cd8884dbb6da1733` · SHA-256 `4983eff9f14c3d92a1af5005482e7599cf6783c5c15514eee012723ce22a2723`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularSmoothingCandidate
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularSmoothingCandidateControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["triangular weight is supported on n<N",
   "0 <= triangular weight <= 1",
   "sum of squared triangular weights <= N",
   "concrete smoothing packet is instantiated",
   "boundary approximation O(X/N) remains open"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularSmoothingCandidateControls
```
