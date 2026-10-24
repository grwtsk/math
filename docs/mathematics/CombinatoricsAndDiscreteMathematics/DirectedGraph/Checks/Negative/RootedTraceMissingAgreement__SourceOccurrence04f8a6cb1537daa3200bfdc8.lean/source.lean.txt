/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.RootedTraceRevision

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.PrefixInventory
open GRWTSK.Logic.FiniteSequences.DictionaryRevision
open GRWTSK.Combinatorics.DirectedGraph.RootedTraceRevision.Checks.Positive

/- In-bounds old indices cannot supply missing agreement of their complete rooted meanings. -/
example : AgreesOnReferences (inventory oldRows) (inventory appendedRows)
    (packed oldRows).references :=
  stale_references_in_bounds
