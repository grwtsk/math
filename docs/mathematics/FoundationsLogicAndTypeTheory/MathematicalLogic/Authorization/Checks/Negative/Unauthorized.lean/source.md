# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Authorization.Checks.Negative.Unauthorized

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ece907b8d18fffca39dfc6ffe07d2aee651fab8e` · SHA-256 `6746906d033681f8b1f941f1ac26d6186ec05d0fb2530b895b4c8c091578e97d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Genesis

-- Independently specified bad grant: the compiler must reject this assertion.
example : GRWTSK.Genesis.MayAct False True (fun (_ : Unit) => True) () := by
  decide
```
