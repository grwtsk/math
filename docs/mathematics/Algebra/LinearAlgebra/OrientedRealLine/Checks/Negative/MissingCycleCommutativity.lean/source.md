# Complete source: GRWTSK.LinearAlgebra.OrientedRealLine.Checks.Negative.MissingCycleCommutativity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0afdd7d3e02e090d83242d89ded971018720237` · SHA-256 `cd4c001412d209860a2968372f136f246b636fdb8379822fda58d9719a762997`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.LinearAlgebra.OrientedRealLine.PositiveScale

set_option autoImplicit false

open GRWTSK.LinearAlgebra.OrientedRealLine
open scoped BigOperators

example (C : Chain) (n : ℕ)
    (close : PositiveScaleEquiv (C.object n) (C.object 0)) :
    close.scale * (∏ i ∈ Finset.range n, (C.edge i).scale) = 1 := by
  exact C.cycle_scale n close
```
