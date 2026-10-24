/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.ParentTraceDictionary

set_option autoImplicit false

open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PathUnfolding
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.ParentTraceDictionary.Checks.Positive

/- Equal empty words cannot supply the missing identity of their retained roots. -/
example : (origin false).endpoint = (origin true).endpoint :=
  same_empty_words
