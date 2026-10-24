# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DepthFirst.Variant593420f2c0261ee2283c4175d900ab952f051393973c6d4f60c8c2658ec9fa56

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3cb16f665295b5bcc50449bfb7f691c4fc92864` · SHA-256 `593420f2c0261ee2283c4175d900ab952f051393973c6d4f60c8c2658ec9fa56`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.MLList.DepthFirst

-- We perform a depth first search of the "proper divisors in descending order" tree.
#eval show Lean.MetaM Unit from do
  let r := depthFirstRemovingDuplicates' (fun n => List.range n |>.filter (n % · = 0) |>.reverse) 24
  guard $ r = [24, 12, 6, 3, 1, 2, 4, 8]
```
