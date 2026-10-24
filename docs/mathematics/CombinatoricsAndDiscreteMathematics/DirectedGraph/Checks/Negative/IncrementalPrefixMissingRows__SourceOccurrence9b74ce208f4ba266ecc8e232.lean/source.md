# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.IncrementalPrefixMissingRows

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4f407f18a7f07c5ba4bc5126e7eac6ad0587521` · SHA-256 `317ba5e7b872c8ce98161f080968fa544d406770963d6d3d57809c98746cb28a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.IncrementalPrefixTable

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.PrefixInventory
open GRWTSK.Combinatorics.DirectedGraph.IncrementalPrefixTable
open GRWTSK.Combinatorics.DirectedGraph.IncrementalPrefixTable.Checks.Positive
open GRWTSK.Logic.FiniteSequences.IndexedDictionary

/- The old-reference decoder cannot justify omitting actual newly appended real rows. -/
example : unpack (realPacked oldRows newRows) = some (traceRows oldRows) :=
  unpack_oldPacked oldRows newRows
```
