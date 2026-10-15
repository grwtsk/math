/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone; OpenAI Codex formalization assistance.
Upstream Mathlib and Lean authorship and Apache-2.0 licensing are preserved. -/
import GRWTSK.Combinatorics.DirectedGraph.EdgeTrace

set_option autoImplicit false

open Quiver
open GRWTSK.Combinatorics.DirectedGraph.EdgeTrace

namespace GRWTSK.Combinatorics.DirectedGraph.EdgeTrace.Checks.Negative

local instance : Quiver Bool := ⟨fun _ _ => Bool⟩

def firstEdge : TotalEdge Bool := ⟨false, true, false⟩

def brokenEdge : TotalEdge Bool := ⟨false, false, true⟩

theorem valid_initial : ValidFrom false [firstEdge] := ⟨rfl, trivial⟩

theorem broken_join_rejected : ¬ ValidFrom false [firstEdge, brokenEdge] :=
  broken_join_not_valid false _ _ [] (by decide)

/- A valid initial edge does not prove the missing join for the full trace. -/
noncomputable example : PathStar false := decode false [firstEdge, brokenEdge] valid_initial

end GRWTSK.Combinatorics.DirectedGraph.EdgeTrace.Checks.Negative
