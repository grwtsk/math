/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.PrefixTableUpdateReindex

set_option autoImplicit false

open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph
open RoleRelationTable RoleRelationReindex PrefixTableReindex PrefixTableUpdateReindex
open PrefixTableState
open PrefixTableUpdateReindex.Checks.Positive

/-- Role preservation cannot replace injectivity; an actual false equation is proved above. -/
example : transport collapse false (update (empty vertexA) seedRows) =
    update (transport collapse false (empty vertexA : State _ Nat))
      (mapOccurrenceRows collapse false vertexA seedRows) :=
  update_transport collapse false collapse.kind (empty vertexA) seedRows
