# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerCyclicUnitSupportControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43535464563b8c5ad14bf110d1d7e8633fdf7cc5` · SHA-256 `9d118dfbfe1b7f71c5ab4558ce15d278efeefd9daec4c76dc000fbf75268d000`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicUnitSupport
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicUnitSupportControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["unit-shift error support is explicit as a finite ZMod filter",
   "each changed residue contributes exactly one to L1",
   "unit translation L1 equals support cardinality exactly",
   "unit bound reduces to support card <= 2",
   "full translation-cardinality theorem reduces to the same two-boundary support claim"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicUnitSupportControls
```
