# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.PathOccurrences

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a681dc3ec376781903edd6f04804328e68aa948d` · SHA-256 `9761fc200513200356a5479a0c77b0ead0259e0f5587966d000df2779531b73b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PathOccurrences
import Mathlib.Combinatorics.SimpleGraph.Basic

open Quiver
open GRWTSK.Combinatorics.DirectedGraph.PathOccurrences

set_option autoImplicit false

example {V : Type*} [Quiver V] {a b c : V}
    (left : Quiver.Path a b) (right : Quiver.Path b c) :
    (left.comp right).vertices = left.vertices ++ right.vertices.tail :=
  vertices_comp_keep_left left right

example {V : Type*} [Quiver V] {a b : V} (path : Quiver.Path a b)
    (index : Nat) (hi : index < path.vertices.length) :
    ∃ (initial : Quiver.Path a path.vertices[index])
      (suffix : Quiver.Path path.vertices[index] b),
      path = initial.comp suffix ∧ initial.length = index :=
  split_at_occurrence path index hi

example {Edge : Type*}
    (path : Quiver.Path (SingleObj.star Edge) (SingleObj.star Edge)) :
    SingleObj.pathEquivList.symm (edgeOccurrences path).reverse = path :=
  reconstruct_edgeOccurrences path

example {Edge : Type*}
    (left right : Quiver.Path (SingleObj.star Edge) (SingleObj.star Edge)) :
    edgeOccurrences (left.comp right) = edgeOccurrences left ++ edgeOccurrences right :=
  edgeOccurrences_comp left right

-- Chronological full edge identity is retained, even though all vertex occurrences coincide.
example : edgeOccurrences ((parallelLoop false).comp (parallelLoop true)) = [false, true] := rfl
example : ((parallelLoop false).comp (parallelLoop true)).vertices =
    [SingleObj.star Bool, SingleObj.star Bool, SingleObj.star Bool] := rfl

example : (parallelLoop false).vertices = (parallelLoop true).vertices := rfl
example : parallelLoop false ≠ parallelLoop true := parallel_loops_ne

-- Actual simple-graph adjacency gives at most one typed arrow: vertex reconstruction is safe.
example {V : Type*} (graph : SimpleGraph V) :
    letI : Quiver V := ⟨fun a b => PLift (graph.Adj a b)⟩
    ∀ (a b : V) (left right : Quiver.Path a b),
      left.vertices = right.vertices → left = right := by
  intro a b left right hvertices
  exact @path_eq_of_vertices_eq V (⟨fun a b => PLift (graph.Adj a b)⟩ : Quiver V) a b
    (fun a b => inferInstanceAs (Subsingleton (PLift (graph.Adj a b))))
    left right hvertices
```
