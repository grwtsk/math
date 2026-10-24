# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.PrefixUpdateReindexMissingInjectivity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d1c4e044362ea9618ce2229a2620c93358ed61b` · SHA-256 `88d018e64b3f581af42004521df76651dde341a33a9dbdcc4faff9d39857e831`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableUpdateReindex

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph
open RoleRelationTable RoleRelationReindex PrefixTableReindex PrefixTableUpdateReindex
open PrefixTableState
open PrefixTableUpdateReindex.Checks.Positive

/-- Role preservation cannot replace injectivity; an actual false equation is proved above. -/
example : transport collapse false (update (empty vertexA) seedRows) =
    update (transport collapse false (empty vertexA : State _ Nat))
      (mapOccurrenceRows collapse false vertexA seedRows) :=
  update_transport collapse false collapse.kind (empty vertexA) seedRows
```
