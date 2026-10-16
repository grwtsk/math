/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone; OpenAI Codex formalization assistance.
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
