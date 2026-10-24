# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.PrefixCompactionStaleReferences

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ce93fafd7993b6e5164ec13ceaa53b5a726d9f5` · SHA-256 `0899afe2a1c47acb7be4704f41d2d9c6b19f286b218bad94b772ca379f73aee8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableCompaction

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.PrefixTableState
open GRWTSK.Combinatorics.DirectedGraph.PrefixTableCompaction.Checks.Positive

namespace GRWTSK.Combinatorics.DirectedGraph.PrefixTableCompaction.Checks.Negative

/-- Valid bounds on stale slots do not identify the old full histories after compaction. -/
example : decode stale = some [(11, [falseTag]), (11, [falseTag])] := stale_actual_decode

end GRWTSK.Combinatorics.DirectedGraph.PrefixTableCompaction.Checks.Negative
```
