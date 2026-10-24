# Complete source: GRWTSK.Order.Embeddings.Checks.Negative.PrefixMissingReflection

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `740e2d5ef21f53f6da340d25911df6d611b0c88c` · SHA-256 `c68af330ee9d86c1aa3fc9e162c44efadefb975beec8167c1a9ae1662d625e8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Order.Embeddings.PrefixObstruction

open GRWTSK.Order.Embeddings.PrefixObstruction

-- Expected type mismatch: preservation by this actual injective map cannot supply reflection.
example : ReflectsPrefix DiamondLe diamondAddress :=
  diamondAddress_preserves
```
