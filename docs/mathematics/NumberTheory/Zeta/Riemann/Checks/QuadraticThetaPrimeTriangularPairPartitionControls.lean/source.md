# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeTriangularPairPartitionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22206c21d6ff36948283e3c0202b7952de728c8f` · SHA-256 `0d4a3bc65bff3c5f49182200b5d2e4f38907388223932bae8ca1047f537abef9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularPairPartition
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularPairPartitionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["autocorrelation pair square is explicit",
   "zero/positive/negative offset regions are pairwise disjoint and cover the square",
   "any pair sum decomposes into the three regions",
   "G_N*conj(G_N) is exactly the pair-square sum",
   "remaining step is finite reindexing of positive/negative regions by offset"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularPairPartitionControls
```
