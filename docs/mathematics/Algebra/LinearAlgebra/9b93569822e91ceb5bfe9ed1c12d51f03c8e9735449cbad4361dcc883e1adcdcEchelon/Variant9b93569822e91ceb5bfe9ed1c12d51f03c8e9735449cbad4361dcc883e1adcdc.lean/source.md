# Complete source: GRWTSK.Algebra.LinearAlgebra.9b93569822e91ceb5bfe9ed1c12d51f03c8e9735449cbad4361dcc883e1adcdcEchelon.Variant9b93569822e91ceb5bfe9ed1c12d51f03c8e9735449cbad4361dcc883e1adcdc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c75e98e2866cefb6744de1ae94e2ba042dc507c0` · SHA-256 `9b93569822e91ceb5bfe9ed1c12d51f03c8e9735449cbad4361dcc883e1adcdc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.LinearAlgebra.Matrix.Echelon.Decomposition
set_option pp.universes true
set_option pp.fullNames true
set_option pp.maxSteps 100000
#check @Matrix.IsPivotedBy
#check @Matrix.IsPivotedBy.rank_eq
#check @Matrix.Echelon.Decomposition
#check @Matrix.Echelon.Decomposition.mk
#check @Matrix.Echelon.Decomposition.rank_eq
```
