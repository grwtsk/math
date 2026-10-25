# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Authorization.Checks.Negative.RevokedV2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c62b8b7b58f88972a8c3cb63d4cc81f366583de` · SHA-256 `7fc7ca909ad1fbcccb6af21ac35a5a7d452493d945a78a51ea2252f2e0fd538d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Genesis

-- Independently specified bad grant: the compiler must reject this assertion.
example : GRWTSK.Genesis.MayAct True False (fun (_ : Unit) => True) () := by
  unfold GRWTSK.Genesis.MayAct
  decide
```
