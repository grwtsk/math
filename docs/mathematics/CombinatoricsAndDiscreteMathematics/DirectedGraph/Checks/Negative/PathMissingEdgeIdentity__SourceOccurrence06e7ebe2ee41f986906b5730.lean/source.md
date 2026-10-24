# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Negative.PathMissingEdgeIdentity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `451a651ed789fee12cb9fc794551a6bab03ba5de` · SHA-256 `bda61f4c8cfd74be3f917a6df411a13d37ceab00f6f58085912f51472b6cbeb9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PathOccurrences

open GRWTSK.Combinatorics.DirectedGraph.PathOccurrences

-- Expected type mismatch: equality of full vertex sequences cannot identify parallel Bool edges.
example : parallelLoop false = parallelLoop true :=
  (rfl : (parallelLoop false).vertices = (parallelLoop true).vertices)
```
