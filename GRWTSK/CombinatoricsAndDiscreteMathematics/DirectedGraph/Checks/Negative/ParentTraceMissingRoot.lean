/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.ParentTraceDictionary

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.PathUnfolding
open GRWTSK.Combinatorics.DirectedGraph.ParentTraceDictionary.Checks.Positive

/- Equal empty words cannot supply the missing identity of their retained roots. -/
example : (origin false).endpoint = (origin true).endpoint :=
  same_empty_words
