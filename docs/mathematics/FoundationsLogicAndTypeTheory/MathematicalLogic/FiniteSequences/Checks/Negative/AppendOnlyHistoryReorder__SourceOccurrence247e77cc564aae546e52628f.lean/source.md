# Complete source: GRWTSK.Logic.FiniteSequences.Checks.Negative.AppendOnlyHistoryReorder

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e880fe58f13b06d9be9315711ecb2313ebbd1261` · SHA-256 `b817c436b1f8f6baf476adac5b1ef8a68ca07434f848d81a220fe2507b830726`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.FiniteSequences.AppendOnlyHistory

open GRWTSK.Logic.FiniteSequences.AppendOnlyHistory

-- Expected type mismatch: reflexive prefix acceptance cannot certify reordered history.
example : checkPrefix ([1, 2] : List Nat) [2, 1] = true :=
  checkPrefix_refl ([1, 2] : List Nat)
```
