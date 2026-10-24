# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Levenshtein.Varianta11c68351129cbe5800d505506167c8c82a3c3a1a77920059015f1cbef6eb31e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `783d415ca50ca4961c3d86b934af29ce5313d163` · SHA-256 `a11c68351129cbe5800d505506167c8c82a3c3a1a77920059015f1cbef6eb31e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.List.EditDistance.Defs
import Mathlib.Algebra.Group.Nat.Defs

#guard
  (suffixLevenshtein Levenshtein.defaultCost "kitten".toList "sitting".toList).1 =
    [3, 3, 4, 5, 6, 6, 7]

#guard levenshtein Levenshtein.defaultCost
  "but our fish said, 'no! no!'".toList
  "'put me down!' said the fish.".toList = 21
```
