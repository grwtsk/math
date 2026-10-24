# Complete source: GRWTSK.Spectral.FiniteVolume.Checks.Negative.ZeroTraceAllEnergies

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61e4868eacce3c276f43e819a5645e1f54f4f49e` · SHA-256 `3967d2d9f515622db0d3b59e6f67286c5f4a7c29c254e75a01397f4fc611579d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.Sturmian
open GRWTSK.LinearAlgebra.Sturmian

-- The free transfer at energy three remains outside the bounded-trace interval.
example : |Matrix.trace (transfer 3 0 0 0 0)| ≤ 2 := by
  exact (zero_coupling_trace_iff 3 0 0 0).2 (by norm_num)
```
