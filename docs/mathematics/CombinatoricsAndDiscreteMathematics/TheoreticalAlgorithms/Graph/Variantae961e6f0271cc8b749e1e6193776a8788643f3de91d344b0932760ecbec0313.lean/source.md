# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Graph.Variantae961e6f0271cc8b749e1e6193776a8788643f3de91d344b0932760ecbec0313

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7db0280d8a64a53ff566e55466db3f4b1a50e148` · SHA-256 `ae961e6f0271cc8b749e1e6193776a8788643f3de91d344b0932760ecbec0313`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Boolean.Syntax.Basic
import Surface.Boolean.Matrix.Warshall

namespace Surface.Boolean

universe u

/--
Edges of a Boolean expression tree under preorder numbering.

The root receives index `root`. A unary node has one child at `root + 1`.
A binary node has its left child at `root + 1` and its right child after the
entire left subtree.
-/
def FormulaTree.childEdgesFrom (root : Nat) : FormulaTree α → List (Nat × Nat)
  | .var _ => []
  | .falsum => []
  | .truth => []
  | .neg p =>
      let child := root + 1
      [(root, child)] ++ FormulaTree.childEdgesFrom child p
  | .conj p q =>
      let left := root + 1
      let right := root + 1 + FormulaTree.nodeCount p
      [(root, left), (root, right)] ++
        FormulaTree.childEdgesFrom left p ++
        FormulaTree.childEdgesFrom right q
  | .disj p q =>
      let left := root + 1
      let right := root + 1 + FormulaTree.nodeCount p
      [(root, left), (root, right)] ++
        FormulaTree.childEdgesFrom left p ++
        FormulaTree.childEdgesFrom right q
  | .impl p q =>
      let left := root + 1
      let right := root + 1 + FormulaTree.nodeCount p
      [(root, left), (root, right)] ++
        FormulaTree.childEdgesFrom left p ++
        FormulaTree.childEdgesFrom right q
  | .eqv p q =>
      let left := root + 1
      let right := root + 1 + FormulaTree.nodeCount p
      [(root, left), (root, right)] ++
        FormulaTree.childEdgesFrom left p ++
        FormulaTree.childEdgesFrom right q
  | .nand p q =>
      let left := root + 1
      let right := root + 1 + FormulaTree.nodeCount p
      [(root, left), (root, right)] ++
        FormulaTree.childEdgesFrom left p ++
        FormulaTree.childEdgesFrom right q

/--
A Boolean expression tree as a Boolean adjacency matrix.

A `1` at `(i, j)` means that node `i` is the parent of node `j`.
-/
def FormulaTree.adjacencyMatrix
    (p : FormulaTree α) :
    BoolMatrix (FormulaTree.nodeCount p) (FormulaTree.nodeCount p) :=
  fun i j => decide ((i.val, j.val) ∈ FormulaTree.childEdgesFrom 0 p)

@[simp] theorem FormulaTree.entry_adjacencyMatrix
    (p : FormulaTree α)
    (i j : Fin (FormulaTree.nodeCount p)) :
    BoolMatrix.entry (FormulaTree.adjacencyMatrix p) i j =
      decide ((i.val, j.val) ∈ FormulaTree.childEdgesFrom 0 p) :=
  rfl

/--
The transitive reachability matrix of the tree graph.

This applies Warshall's algorithm to the tree adjacency matrix.
-/
def FormulaTree.reachabilityMatrix
    (p : FormulaTree α) :
    BoolMatrix (FormulaTree.nodeCount p) (FormulaTree.nodeCount p) :=
  BoolMatrix.warshall (FormulaTree.adjacencyMatrix p)

end Surface.Boolean
```
