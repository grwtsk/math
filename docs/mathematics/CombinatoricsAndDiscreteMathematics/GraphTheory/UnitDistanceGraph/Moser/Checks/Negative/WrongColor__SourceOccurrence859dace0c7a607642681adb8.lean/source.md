# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.UnitDistanceGraph.Moser.Checks.Negative.WrongColor

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `579beb6ccd1806f6c51e19e3640bec11d597fb07` · SHA-256 `eee625ca963793aedf54b7f33aa6d688d6b7627e852bfb1f0064c420048457ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.UnitDistanceGraph.Moser
open GRWTSK.Combinatorics.GraphTheory.HadwigerNelson
def badColor : Fin 7 → Fin 4 := ![0, 1, 2, 0, 1, 2, 0]
example : ∀ i j, (i,j) ∈ moserEdges → badColor i ≠ badColor j := by
  decide
```
