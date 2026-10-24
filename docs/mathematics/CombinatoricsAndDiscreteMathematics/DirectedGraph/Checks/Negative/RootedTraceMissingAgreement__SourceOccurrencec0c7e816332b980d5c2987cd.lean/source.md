# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.RootedTraceMissingAgreement

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd955f3a1f4ea0902681f09262bae75be2aa7860` · SHA-256 `5b4e401193616bed3f7bea23184781ccaa2a6884aa45c7ef23bfa2c3e41f4b66`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.RootedTraceRevision

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.PrefixInventory
open GRWTSK.Logic.FiniteSequences.DictionaryRevision
open GRWTSK.Combinatorics.DirectedGraph.RootedTraceRevision.Checks.Positive

/- In-bounds old indices cannot supply missing agreement of their complete rooted meanings. -/
example : AgreesOnReferences (inventory oldRows) (inventory appendedRows)
    (packed oldRows).references :=
  stale_references_in_bounds
```
