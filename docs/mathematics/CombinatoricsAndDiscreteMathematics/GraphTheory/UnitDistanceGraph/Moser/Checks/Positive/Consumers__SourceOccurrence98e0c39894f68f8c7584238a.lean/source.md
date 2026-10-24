# Complete source: GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.Moser.Checks.Positive.Consumers

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c751b738d0575390ea10ef9f46e14d0e6c27480a` · SHA-256 `d13b567ef3ef6d495f3176ad7de7584d350ee9e8b3a9c9baba84f16bccfea9cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.Moser
open GRWTSK.Combinatorics.GraphTheory.HadwigerNelson
-- Apply the shared canonical theorem directly to separate obligations.
example : FinitePointColorable 4 := moser_unit_graph_exact_four.1
example : ¬ FinitePointColorable 2 :=
  moser_unit_graph_exact_four.2 2 (by decide)
example : ¬ PlaneColorable 3 := plane_not_three_colorable
```
