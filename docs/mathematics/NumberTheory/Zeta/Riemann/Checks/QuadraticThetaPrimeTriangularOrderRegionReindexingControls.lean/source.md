# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeTriangularOrderRegionReindexingControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2afd087c56924fe78cd36b284eba103e17e6e68` · SHA-256 `f6775f922fb58ac3465e563e342e1c96d486b6667c981f255b38ae26dac15eaf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularOrderRegionReindexing
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularOrderRegionReindexingControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["positive and negative offset regions are explicit biUnions of diagonal pair finsets",
   "distinct offsets give disjoint diagonal pair finsets",
   "sum_biUnion reindexes each order region by offset",
   "TriangularOrderRegionsToDiagonalsClaim is discharged",
   "next step is zero diagonal plus normalized coefficient assembly"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularOrderRegionReindexingControls
```
