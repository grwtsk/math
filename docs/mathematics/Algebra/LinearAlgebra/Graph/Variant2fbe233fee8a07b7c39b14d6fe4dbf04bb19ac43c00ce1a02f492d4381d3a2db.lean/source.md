# Complete source: GRWTSK.Algebra.LinearAlgebra.Graph.Variant2fbe233fee8a07b7c39b14d6fe4dbf04bb19ac43c00ce1a02f492d4381d3a2db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5109da573aa3d46e24764508271736bd2d7e5284` · SHA-256 `2fbe233fee8a07b7c39b14d6fe4dbf04bb19ac43c00ce1a02f492d4381d3a2db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Tree.Size
import Boolean.Matrix.Warshall

namespace Boolean

universe u

/--
Edges of a Boolean expression tree under preorder numbering.

The root receives index `root`. A unary node has one child at `root + 1`.
A binary node has its left child at `root + 1` and its right child after the
entire left subtree.
-/
def Tree.childEdgesFrom (root : Nat) : Tree α → List (Nat × Nat)
  | .var _ => []
  | .falsum => []
  | .truth => []
  | .neg p =>
      let child := root + 1
      [(root, child)] ++ Tree.childEdgesFrom child p
  | .conj p q =>
      let left := root + 1
      let right := root + 1 + Tree.nodeCount p
      [(root, left), (root, right)] ++
        Tree.childEdgesFrom left p ++
        Tree.childEdgesFrom right q
  | .disj p q =>
      let left := root + 1
      let right := root + 1 + Tree.nodeCount p
      [(root, left), (root, right)] ++
        Tree.childEdgesFrom left p ++
        Tree.childEdgesFrom right q
  | .impl p q =>
      let left := root + 1
      let right := root + 1 + Tree.nodeCount p
      [(root, left), (root, right)] ++
        Tree.childEdgesFrom left p ++
        Tree.childEdgesFrom right q
  | .eqv p q =>
      let left := root + 1
      let right := root + 1 + Tree.nodeCount p
      [(root, left), (root, right)] ++
        Tree.childEdgesFrom left p ++
        Tree.childEdgesFrom right q
  | .nand p q =>
      let left := root + 1
      let right := root + 1 + Tree.nodeCount p
      [(root, left), (root, right)] ++
        Tree.childEdgesFrom left p ++
        Tree.childEdgesFrom right q

/--
A Boolean expression tree as a Boolean adjacency matrix.

A `1` at `(i, j)` means that node `i` is the parent of node `j`.
-/
def Tree.adjacencyMatrix
    (p : Tree α) :
    Matrix (Tree.nodeCount p) (Tree.nodeCount p) :=
  fun i j => decide ((i.val, j.val) ∈ Tree.childEdgesFrom 0 p)

@[simp] theorem Tree.entry_adjacencyMatrix
    (p : Tree α)
    (i j : Fin (Tree.nodeCount p)) :
    Matrix.entry (Tree.adjacencyMatrix p) i j =
      decide ((i.val, j.val) ∈ Tree.childEdgesFrom 0 p) :=
  rfl

/--
The transitive reachability matrix of the tree graph.

This applies Warshall's algorithm to the tree adjacency matrix.
-/
def Tree.reachabilityMatrix
    (p : Tree α) :
    Matrix (Tree.nodeCount p) (Tree.nodeCount p) :=
  Matrix.warshall (Tree.adjacencyMatrix p)

end Boolean
```
