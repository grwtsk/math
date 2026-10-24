/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.PrefixTableBatch

set_option autoImplicit false

open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph
open PrefixTableBatch PrefixTableState PrefixInventory
open PrefixTableBatch.Checks.Positive

/-- Validity of the empty state cannot certify the actual hostile initial reference. -/
example : PrefixTableState.decode (run invalid [singletonRows]) =
    (PrefixTableState.decode invalid).map
      (fun entries => entries ++ [singletonRows].flatMap traceRows) :=
  decode_run invalid (empty_wellFormed vertexA) [singletonRows]
