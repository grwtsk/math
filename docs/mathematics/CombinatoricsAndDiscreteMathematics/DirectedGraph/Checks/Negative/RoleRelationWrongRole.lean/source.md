# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.RoleRelationWrongRole

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91f27960317dc0807f4749122939e56170ab9d46` · SHA-256 `83a09767098520d51c6ea4ba4c033a0e0cb416cb520989d56bd11dd433b5e2df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib and Lean imports retain their individual authorship and Apache-2.0 licenses. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.RoleRelationTable

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.RoleRelationTable
open GRWTSK.Combinatorics.DirectedGraph.RoleRelationTable.Checks.Positive

namespace GRWTSK.Combinatorics.DirectedGraph.RoleRelationTable.Checks.Negative

/-- Actual membership in role S cannot supply membership in the selected role R. -/
example : RoleId fixture false := ⟨index3, index3_role⟩

end GRWTSK.Combinatorics.DirectedGraph.RoleRelationTable.Checks.Negative
```
