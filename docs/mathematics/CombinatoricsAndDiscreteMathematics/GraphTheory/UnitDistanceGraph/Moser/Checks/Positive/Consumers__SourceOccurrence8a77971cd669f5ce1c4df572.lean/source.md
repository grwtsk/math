# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.UnitDistanceGraph.Moser.Checks.Positive.Consumers

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e07abb15a9a3b568e216a8e5f5c694cc2059c215` · SHA-256 `855ad275034fd5fa3877a650f0c7989740b1fa47deb7b1369cb24ffe804c6155`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.UnitDistanceGraph.Moser
open GRWTSK.Combinatorics.GraphTheory.HadwigerNelson
-- Apply the shared canonical theorem directly to separate obligations.
example : FinitePointColorable 4 := moser_unit_graph_exact_four.1
example : ¬ FinitePointColorable 2 :=
  moser_unit_graph_exact_four.2 2 (by decide)
example : ¬ PlaneColorable 3 := plane_not_three_colorable
```
