# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.PrefixReferenceMissingSupport

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f8fffae20cb15ef5c347a63a18e1cf5f1880b34` · SHA-256 `488a12912ef79cf3a011de15123a6dc2b1038ccc6b97ac560ad062e299ad7c88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Intended rejection: actual valid dictionary bounds are not actual real-reference membership. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableReferenceTransport

set_option autoImplicit false

open Quiver
open GRWTSK.Combinatorics.DirectedGraph
open PrefixTableReferenceTransport PrefixTableReferenceTransport.Checks.Positive

example := transport_reference (SingleObj.star Bool) initial
  PrefixTableSchedule.Checks.Positive.actions (11, 2) unused_slot_bound
```
