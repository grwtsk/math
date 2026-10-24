/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Upstream Mathlib and Lean authorship and Apache-2.0 licensing are preserved. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixInventory

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.PrefixInventory.Checks.Positive

/- Equal endpoints cannot supply the missing equality of complete actual histories. -/
example : falseOccurrence = trueOccurrence :=
  parallel_same_endpoint
