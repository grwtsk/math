# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListSublists.Variantf011d03e67929ee071fd14e17cc30fc916157bfe659ec1d9b362e4c43896cc76

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bae15b0b0b97e575dfc230f92631943ec1a4e61` · SHA-256 `f011d03e67929ee071fd14e17cc30fc916157bfe659ec1d9b362e4c43896cc76`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Data.List.Basic

-- this times out with `sublistsFast`
set_option maxRecDepth 562 in
example : [1, 2, 3].sublists.sublists.length = 256 := rfl
```
