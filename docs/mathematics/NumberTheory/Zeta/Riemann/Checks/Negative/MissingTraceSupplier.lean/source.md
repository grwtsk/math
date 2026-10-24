# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Negative.MissingTraceSupplier

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d3052edf71ed83dde4f4ac5fd9096bd2ccd8b00` · SHA-256 `8d0d636c94afc9374b7c94b32358ba43f5d933ebdc799c1097942b049809bfb9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticTraceCriterion
open GRWTSK.NumberTheory.Zeta.Riemann
-- The consumer's mathematical premise cannot be dropped.
example : _root_.RiemannHypothesis := riemannHypothesis_of_trace_extraction
```
