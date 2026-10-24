# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.RoleReindexMissingInjectivity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a65a13ea7206717359004a991d9a05c4b5a6a678` · SHA-256 `83bdf44ebec2d61d0db542f92b8c0745a3110105627c91b0bb788dd61f81767b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib and Lean imports retain their individual authorship and Apache-2.0 licenses. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.RoleRelationReindex

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.RoleRelationReindex
open GRWTSK.Combinatorics.DirectedGraph.RoleRelationReindex.Checks.Positive

namespace GRWTSK.Combinatorics.DirectedGraph.RoleRelationReindex.Checks.Negative

/-- Equal source vertices cannot replace the required injectivity of actual relation identities. -/
example : Function.Injective (qualified collapse false) :=
  qualified_injective collapse false collapse.source

end GRWTSK.Combinatorics.DirectedGraph.RoleRelationReindex.Checks.Negative
```
