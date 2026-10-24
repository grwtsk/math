# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.PathMissingEdgeIdentity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e7454449ee7939368a80ae229ebab867fa33c25` · SHA-256 `f1936c3eaf77f02e7fbc644de6d0404c1cc787f8de64c67c37af7c2dff8eba69`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Combinatorics.DirectedGraph.PathOccurrences

open GRWTSK.Combinatorics.DirectedGraph.PathOccurrences

-- Expected type mismatch: equality of full vertex sequences cannot identify parallel Bool edges.
example : parallelLoop false = parallelLoop true :=
  (rfl : (parallelLoop false).vertices = (parallelLoop true).vertices)
```
