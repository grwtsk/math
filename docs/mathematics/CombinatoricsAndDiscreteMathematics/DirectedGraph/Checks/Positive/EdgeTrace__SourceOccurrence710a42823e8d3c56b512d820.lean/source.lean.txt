/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Upstream Mathlib and Lean authorship and Apache-2.0 licensing are preserved. -/
import GRWTSK.Combinatorics.DirectedGraph.EdgeTrace

set_option autoImplicit false

open Quiver
open GRWTSK.Combinatorics.DirectedGraph.EdgeTrace

section Generic

variable {V : Type*} [Quiver V] (root : V)

example (path : PathStar root) :
    (pathStarEquivTrace root).symm ((pathStarEquivTrace root) path) = path :=
  (pathStarEquivTrace root).symm_apply_apply path

example (trace : {trace : List (TotalEdge V) // ValidFrom root trace}) :
    (pathStarEquivTrace root) ((pathStarEquivTrace root).symm trace) = trace :=
  (pathStarEquivTrace root).apply_symm_apply trace

example {a b c : V} (left : Path a b) (right : Path b c) :
    encodePath (left.comp right) = encodePath left ++ encodePath right :=
  encodePath_comp left right

example (trace : List (TotalEdge V)) (hvalid : ValidFrom root trace) :
    (decode root trace hvalid).1 = finish root trace := decode_endpoint root trace hvalid

end Generic

namespace GRWTSK.Combinatorics.DirectedGraph.EdgeTrace.Checks.Positive

/- Two actual vertices, with two parallel arrows at each typed endpoint pair. -/
local instance : Quiver Bool := ⟨fun _ _ => Bool⟩

def outward (label : Bool) : Path false true := (show false ⟶ true from label).toPath

def returning : Path true false := (show true ⟶ false from true).toPath

def firstEdge (label : Bool) : TotalEdge Bool := ⟨false, true, label⟩

def returnEdge : TotalEdge Bool := ⟨true, false, true⟩

def brokenEdge : TotalEdge Bool := ⟨false, false, true⟩

example (label : Bool) : encodePath (outward label) = [firstEdge label] := rfl

example (label : Bool) :
    encodePath ((outward label).comp returning) = [firstEdge label, returnEdge] := rfl

example : (outward false).vertices = [false, true] := rfl

example : (outward true).vertices = [false, true] := rfl

example : (outward false).vertices = (outward true).vertices := rfl

theorem parallel_arrows_distinct : outward false ≠ outward true := by
  intro hequal
  have htrace := congrArg encodePath hequal
  change [firstEdge false] = [firstEdge true] at htrace
  simp [firstEdge] at htrace

theorem actual_valid : ValidFrom false [firstEdge false, returnEdge] :=
  ⟨rfl, rfl, trivial⟩

example : decode false [firstEdge false, returnEdge] actual_valid =
    (⟨false, (outward false).comp returning⟩ : PathStar false) := by
  exact decode_encode false ⟨false, (outward false).comp returning⟩

example : encode false (decode false [firstEdge false, returnEdge] actual_valid) =
    [firstEdge false, returnEdge] := encode_decode false _ actual_valid

example : (decode false [firstEdge false, returnEdge] actual_valid).1 = false :=
  decode_endpoint false _ actual_valid

example : decode false [] trivial = (⟨false, Path.nil⟩ : PathStar false) := rfl

theorem wrong_root_rejected : ¬ ValidFrom true [firstEdge false] :=
  wrong_root_not_valid true _ [] (by decide)

theorem broken_join_rejected : ¬ ValidFrom false [firstEdge false, brokenEdge] :=
  broken_join_not_valid false _ _ [] (by decide)

example : ValidFrom false [firstEdge false] ∧
    ¬ ValidFrom false [firstEdge false, brokenEdge] :=
  ⟨⟨rfl, trivial⟩, broken_join_rejected⟩

end GRWTSK.Combinatorics.DirectedGraph.EdgeTrace.Checks.Positive
