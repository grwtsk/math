# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListSublists.Variantfbe2994da43431978d9900c2c3ada674ba56b36f1ea6f3d3bdbf86b29c8a7a15

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4db1678274f567c7fc42be4d2931305dfd0413e0` · SHA-256 `fbe2994da43431978d9900c2c3ada674ba56b36f1ea6f3d3bdbf86b29c8a7a15`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Data.List.Basic

-- this times out with `sublistsFast`
set_option maxRecDepth 561 in
example : [1, 2, 3].sublists.sublists.length = 256 := rfl

-- TODO(std4#307): until we have the `csimp` lemma in std, this is a sanity check that these two
-- are equal.
example : ([] : List Nat).sublists = [].sublistsFast := rfl
example : [1, 2, 3].sublists = [1, 2, 3].sublistsFast := rfl
```
