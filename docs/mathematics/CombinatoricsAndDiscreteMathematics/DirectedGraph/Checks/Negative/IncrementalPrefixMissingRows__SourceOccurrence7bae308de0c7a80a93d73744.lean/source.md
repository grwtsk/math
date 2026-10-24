# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Negative.IncrementalPrefixMissingRows

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e3ab46f23c088144d33f2a1389f1544e27ac6f0` · SHA-256 `83890caf1ff5ccdebad42434bb33d38aea6fd319e7df098f89bd9207ceb64bde`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.IncrementalPrefixTable

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.PrefixInventory
open GRWTSK.Combinatorics.DirectedGraph.IncrementalPrefixTable
open GRWTSK.Combinatorics.DirectedGraph.IncrementalPrefixTable.Checks.Positive
open GRWTSK.Logic.FiniteSequences.IndexedDictionary

/- The old-reference decoder cannot justify omitting actual newly appended real rows. -/
example : unpack (realPacked oldRows newRows) = some (traceRows oldRows) :=
  unpack_oldPacked oldRows newRows
```
