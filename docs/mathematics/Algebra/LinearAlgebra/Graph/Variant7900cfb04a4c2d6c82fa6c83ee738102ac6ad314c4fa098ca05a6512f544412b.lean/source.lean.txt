-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.TreeChildEdgesFrom.Variant2fbe233fee8a07b7c39b14d6fe4dbf04bb19ac43c00ce1a02f492d4381d3a2db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2fbe233fee8a07b7c39b14d6fe4dbf04bb19ac43c00ce1a02f492d4381d3a2db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.TreeChildEdgesFrom.Variant2fbe233fee8a07b7c39b14d6fe4dbf04bb19ac43c00ce1a02f492d4381d3a2db","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"2fbe233fee8a07b7c39b14d6fe4dbf04bb19ac43c00ce1a02f492d4381d3a2db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Tree/Graph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Tree.Size
import Boolean.Matrix.Warshall


namespace GRWTSK.Algebra.LinearAlgebra.TreeChildEdgesFrom.Variant2fbe233fee8a07b7c39b14d6fe4dbf04bb19ac43c00ce1a02f492d4381d3a2db

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
