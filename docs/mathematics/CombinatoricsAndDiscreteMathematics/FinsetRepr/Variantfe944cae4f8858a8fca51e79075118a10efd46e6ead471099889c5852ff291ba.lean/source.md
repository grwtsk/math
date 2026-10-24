# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FinsetRepr.Variantfe944cae4f8858a8fca51e79075118a10efd46e6ead471099889c5852ff291ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc7f94ebbb11c5c083152916c9810b0e0f96f529` · SHA-256 `fe944cae4f8858a8fca51e79075118a10efd46e6ead471099889c5852ff291ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Sort

#eval show Lean.MetaM Unit from guard <|
  (repr (0 : Multiset (List ℕ)) |>.pretty 15) = "0"
#eval show Lean.MetaM Unit from guard <|
  (repr ({[1, 2, 3], [4, 5, 6]} : Multiset (List ℕ)) |>.pretty 15) = "{[1, 2, 3],\n [4, 5, 6]}"

#eval show Lean.MetaM Unit from guard <|
  (repr (∅ : Finset (List ℕ)) |>.pretty 15) = "∅"
#eval show Lean.MetaM Unit from guard <|
  (repr ({[1, 2, 3], [4, 5, 6]} : Finset (List ℕ)) |>.pretty 15) = "{[1, 2, 3],\n [4, 5, 6]}"
```
