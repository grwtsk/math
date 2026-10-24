# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ChainComplex.Varianta6d66d1fc32d9365bfa1b6b1aad5b8f9ac0e5ab59ee992a8e27f58944d4a3456

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1bae3cd6de715e59e1155da3736ccd4ef7d5eb97` · SHA-256 `a6d66d1fc32d9365bfa1b6b1aad5b8f9ac0e5ab59ee992a8e27f58944d4a3456`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Flow.Heat.Coverage

namespace Surface

structure ChainComplex where
  objectName : String
  boundarySquaredZero : Prop

theorem chainComplex_requires_boundary_squared_zero
    (C : ChainComplex) :
    C.boundarySquaredZero -> C.boundarySquaredZero := by
  intro h
  exact h

end Surface
```
