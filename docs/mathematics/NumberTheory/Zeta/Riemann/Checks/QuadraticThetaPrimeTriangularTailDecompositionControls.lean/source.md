# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeTriangularTailDecompositionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74d929469ffeb55635440c25cb3d1c7507838c5d` · SHA-256 `8cb88d4a140697a3769cad13e8bc2b5e06b249cd4515981573bb76e6e5a49dca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularTailDecomposition
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularTailDecompositionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["strict compact boundary localization is too strong for a global triangular kernel",
   "correct error model is near-boundary plus tail leakage",
   "near-boundary term is <= ceil(X/N)*log(4X)",
   "only the global tail leakage estimate remains analytic",
   "at beta=1/3 the near-boundary power is 2/3"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularTailDecompositionControls
```
