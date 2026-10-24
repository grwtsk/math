# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Negative.PrefixTableMissingClosure

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7bece40b7a25ad76c1adbc74828bfefe7aa702f` · SHA-256 `dcffee3227d991bd5704a4cb196c90443bbde6bf61817d61601cb1eb660cc03f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.PrefixTableState

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.PrefixTableState
open GRWTSK.Combinatorics.DirectedGraph.PrefixTableState.Checks.Positive

namespace GRWTSK.Combinatorics.DirectedGraph.PrefixTableState.Checks.Negative

/-- The valid full payloads do not supply the missing required prefix-closure field. -/
example : WellFormed missingParent where
  nodup := missingParent_nodup
  closed := missingParent_rooted
  rooted := missingParent_rooted
  cells := missingParent_cells
  references := missingParent_references

end GRWTSK.Combinatorics.DirectedGraph.PrefixTableState.Checks.Negative
```
