# Complete source: GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.Moser.Checks.Negative.WrongColor

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c103d5576bc3eadc37504471fcc956b3911cfdc` · SHA-256 `c3998d64ef4f18ae3dff2fe3268c5c717772719d9592a752a700d189d9a562ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.Moser
open GRWTSK.Combinatorics.GraphTheory.HadwigerNelson
def badColor : Fin 7 → Fin 4 := ![0, 1, 2, 0, 1, 2, 0]
example : ∀ i j, (i,j) ∈ moserEdges → badColor i ≠ badColor j := by
  decide
```
