# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Authorization.Checks.Negative.OutsideScope

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `086a40969b121f386e2b69d42905e88c0cbf2e19` · SHA-256 `360a3f7fbcde3a99d6eaf493ec404983d4ef2b804f631c8cdc319fb0a442dcbe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Genesis

-- Independently specified bad grant: the compiler must reject this assertion.
example : GRWTSK.Genesis.MayAct True True (fun (_ : Unit) => False) () := by
  decide
```
