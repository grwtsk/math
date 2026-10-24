# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerCyclicConvexContractionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9acd61a32cf1f284b7603b0ca96df33fa5208335` · SHA-256 `b14ce4be22418df2e7f6613815e0bf389df8c85325751be353db734ac49301d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicConvexContraction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicConvexContractionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["range-form kernel mass one is transferred to the ZMod Fintype sum",
   "shifted kernel mass is exactly one",
   "kernel nonnegativity gives a pointwise convex-combination error bound",
   "full L1 contraction is reduced to one double-sum reindexing identity",
   "interval translation cardinality remains separately open"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicConvexContractionControls
```
