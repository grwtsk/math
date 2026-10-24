# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Order.Embeddings.Checks.Negative.PrefixMissingReflection

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `865fe3c9ce98c40f13d24d97019b79a24feb30d5` · SHA-256 `3d90dcc955661be3fc59bdc6edb00c335047861e0fbc27aba7b24506421aa3e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.Order.Embeddings.PrefixObstruction

open GRWTSK.Order.Embeddings.PrefixObstruction

-- Expected type mismatch: preservation by this actual injective map cannot supply reflection.
example : ReflectsPrefix DiamondLe diamondAddress :=
  diamondAddress_preserves
```
