# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Authorization.Checks.Negative.UnauthorizedV2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4aa2f9cfa77d7f8acd6b91708fd694a4bf67c031` · SHA-256 `854d2ad4d07763dbcfb0cea229629f766c7bfedd57a6d5bc48ed1f7eadbff501`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Genesis

-- Independently specified bad grant: the compiler must reject this assertion.
example : GRWTSK.Genesis.MayAct False True (fun (_ : Unit) => True) () := by
  unfold GRWTSK.Genesis.MayAct
  decide
```
