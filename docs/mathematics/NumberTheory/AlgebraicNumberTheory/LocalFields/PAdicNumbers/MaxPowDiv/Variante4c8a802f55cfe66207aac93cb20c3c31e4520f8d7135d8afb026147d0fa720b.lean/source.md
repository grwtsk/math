# Complete source: GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.MaxPowDiv.Variante4c8a802f55cfe66207aac93cb20c3c31e4520f8d7135d8afb026147d0fa720b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6501acc023a482547940460a172c817d3b035128` · SHA-256 `e4c8a802f55cfe66207aac93cb20c3c31e4520f8d7135d8afb026147d0fa720b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.NumberTheory.Padics.PadicVal

/- Previously this would hang -/
#eval padicValNat 2 (2 ^ 100000)
```
