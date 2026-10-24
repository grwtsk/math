# Complete source: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteVolume.Checks.Negative.ZeroTraceAllEnergies

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4fb97199f08a528d098fd9afe64f326be1286f26` · SHA-256 `4ecc699b198b2206cc33c7ac49369701fc2bc20d6557fb564b8b6bd6e9c99e8d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.Sturmian
open GRWTSK.LinearAlgebra.Sturmian

-- The free transfer at energy three remains outside the bounded-trace interval.
example : |Matrix.trace (transfer 3 0 0 0 0)| ≤ 2 := by
  exact (zero_coupling_trace_iff 3 0 0 0).2 (by norm_num)
```
