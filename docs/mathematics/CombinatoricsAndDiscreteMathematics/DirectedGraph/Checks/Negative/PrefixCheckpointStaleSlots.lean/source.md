# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.PrefixCheckpointStaleSlots

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c45b932cbc60e54f4018818350eb5e03cc533e3` · SHA-256 `da2ca6b1115eeb97dee592dcf27604f88bde3fe01332103817940c7b5c2e0e2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableCheckpoint

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph
open PrefixTableCheckpoint.Checks.Positive

/-- Actual numeric bounds cannot supply exact full-history agreement after compaction. -/
example : PrefixTableState.decode stalePost = PrefixTableState.decode post := stalePost_bounds
```
