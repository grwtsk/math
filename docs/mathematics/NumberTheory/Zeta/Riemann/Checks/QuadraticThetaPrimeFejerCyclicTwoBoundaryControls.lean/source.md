# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerCyclicTwoBoundaryControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ff44f2c98a884b4b2a4ea1071b12e7f472434b5` · SHA-256 `b249ce1dbddc7df89cd7d44abcb55b4522a0eb7a6c344de473e32cfc2e5b33c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicTwoBoundary
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicTwoBoundaryControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["endpoint-aware predecessor formula is source-proved",
   "unit change support is contained in {2X+1, m+1 mod 4X}",
   "change support cardinality is at most two",
   "CyclicSharpUnitTranslationBoundClaim is discharged",
   "CyclicSharpTranslationCardinalityClaim is discharged",
   "universal cyclic smoothing combinatorics are source-complete"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicTwoBoundaryControls
```
