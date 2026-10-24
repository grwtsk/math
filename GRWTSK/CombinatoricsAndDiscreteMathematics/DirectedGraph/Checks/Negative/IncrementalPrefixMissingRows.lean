/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.IncrementalPrefixTable

set_option autoImplicit false

open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PrefixInventory
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.IncrementalPrefixTable
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.IncrementalPrefixTable.Checks.Positive
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IndexedDictionary

/- The old-reference decoder cannot justify omitting actual newly appended real rows. -/
example : unpack (realPacked oldRows newRows) = some (traceRows oldRows) :=
  unpack_oldPacked oldRows newRows
