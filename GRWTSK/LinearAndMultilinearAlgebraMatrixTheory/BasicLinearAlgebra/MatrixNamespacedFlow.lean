-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.FlowUnitDeterminantCertificate.Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.FlowUnitDeterminantCertificate.Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Flow/Matrix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import Boolean.Matrix.Warshall
import Surface.Flow.Examples


namespace GRWTSK.Algebra.LinearAlgebra.FlowUnitDeterminantCertificate.Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1

namespace Surface

universe u

/-!
Matrix-level flow bridge.

This module turns symbolic `Flow.Expression` objects into finite matrices.

The construction is deliberately combinatorial:

* a flow tree is traversed in preorder;
* its parent-child relation gives a Boolean adjacency matrix;
* Warshall closure gives the zeta/incidence relation of the tree poset;
* Möbius inversion is represented by the tree-poset Möbius matrix:
  diagonal entries are `1`, parent-child cover entries are `-1`, and all other
  entries are `0`;
* the determinant bridge is packaged as a finite Möbius triple

    [matrix, midpoint-balance metadata, tree].

The determinant is recorded as a structural certificate rather than computed by
a general determinant algorithm. For the preorder tree-poset Möbius matrix, the
unit diagonal gives the determinant witness `1`.
-/

/-- Integer-valued finite matrix. -/
abbrev Flow.IntMatrix (rows cols : Nat) :=
  Fin rows → Fin cols → Int

/-- Read an integer matrix entry. -/
def Flow.IntMatrix.entry
    (A : Flow.IntMatrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    Int :=
  A i j

/-- Integer identity matrix. -/
def Flow.IntMatrix.identity (n : Nat) :
    Flow.IntMatrix n n :=
  fun i j =>
    if i = j then
      1
    else
      0

/-- Convert a Boolean matrix into an integer `0/1` matrix. -/
def Flow.IntMatrix.ofBool
    (A : _root_.Boolean.Matrix rows cols) :
    Flow.IntMatrix rows cols :=
  fun i j =>
    if A i j then
      1
    else
      0

/-- A symbolic determinant certificate for a unitriangular matrix. -/
structure Flow.UnitDeterminantCertificate where
  determinant : Int
  reason : String
deriving Repr, DecidableEq

/-- The standard determinant witness for tree-poset Möbius matrices. -/
def Flow.UnitDeterminantCertificate.treeMobius :
    Flow.UnitDeterminantCertificate where
  determinant := 1
  reason := "tree Möbius matrix is unitriangular in preorder"

/--
Midpoint-balance metadata.

This is the middle component of the finite Möbius bridge
`[matrix, midpoint-balance metadata, tree]`.
-/
structure Flow.MidpointBalanceMetadata where
  leftBoundary : String
  rightBoundary : String
  midpoint : String
  balanceDescription : String
deriving Repr, DecidableEq

/-- The standard symbolic midpoint-balance metadata used in this bridge. -/
def Flow.MidpointBalanceMetadata.standard :
    Flow.MidpointBalanceMetadata where
  leftBoundary := "Re(s) = 0"
  rightBoundary := "Re(s) = 1"
  midpoint := "Re(s) = 1/2"
  balanceDescription := "balanced midpoint between pole and shell"

/--
finite Möbius determinant bridge.

The triple is:

* `matrix`: the Möbius matrix obtained from the flow tree;
* `midpointBalance`: the symbolic midpoint-balance metadata metadata;
* `tree`: the original symbolic flow tree.
-/
structure Flow.FiniteMobiusTraceTriple (α : Type u) where
  nodes : Nat
  matrix : Flow.IntMatrix nodes nodes
  determinant : Flow.UnitDeterminantCertificate
  midpointBalance : Flow.MidpointBalanceMetadata
  tree : Flow.Expression α

mutual

/-- Number of preorder nodes in a flow tree. -/
def Flow.Expression.nodeCount :
    Flow.Expression α → Nat
  | .atom _ => 1
  | .nat _ => 1
  | .int _ => 1
  | .symbol _ => 1
  | .variadic _ args =>
      1 + Flow.Expression.nodeCountList args
  | .expBase base exponent _ =>
      1 + Flow.Expression.nodeCount base +
        Flow.Expression.nodeCount exponent
  | .binaryAction _ lhs rhs _ =>
      1 + Flow.Expression.nodeCount lhs +
        Flow.Expression.nodeCount rhs
  | .attend _ t =>
      1 + Flow.Expression.nodeCount t

/-- Number of preorder nodes in a list of flow trees. -/
def Flow.Expression.nodeCountList :
    List (Flow.Expression α) → Nat
  | [] => 0
  | t :: ts =>
      Flow.Expression.nodeCount t +
        Flow.Expression.nodeCountList ts

end

mutual

/--
Parent-child edges of a flow tree under preorder numbering.

The root receives index `root`. Children are allocated consecutive preorder
blocks.
-/
def Flow.Expression.childEdgesFrom
    (root : Nat) :
    Flow.Expression α → List (Nat × Nat)
  | .atom _ => []
  | .nat _ => []
  | .int _ => []
  | .symbol _ => []
  | .variadic _ args =>
      Flow.Expression.childEdgesFromList root (root + 1) args
  | .expBase base exponent _ =>
      let left := root + 1
      let right := root + 1 + Flow.Expression.nodeCount base
      [(root, left), (root, right)] ++
        Flow.Expression.childEdgesFrom left base ++
        Flow.Expression.childEdgesFrom right exponent
  | .binaryAction _ lhs rhs _ =>
      let left := root + 1
      let right := root + 1 + Flow.Expression.nodeCount lhs
      [(root, left), (root, right)] ++
        Flow.Expression.childEdgesFrom left lhs ++
        Flow.Expression.childEdgesFrom right rhs
  | .attend _ t =>
      let child := root + 1
      [(root, child)] ++
        Flow.Expression.childEdgesFrom child t

/--
Parent-child edges for a variadic list of children.

`parent` is the variadic operator node. `next` is the preorder index assigned to
the next child.
-/
def Flow.Expression.childEdgesFromList
    (parent next : Nat) :
    List (Flow.Expression α) → List (Nat × Nat)
  | [] => []
  | t :: ts =>
      [(parent, next)] ++
        Flow.Expression.childEdgesFrom next t ++
        Flow.Expression.childEdgesFromList
          parent
          (next + Flow.Expression.nodeCount t)
          ts

end

/-- Parent-child edges of a flow tree, rooted at preorder index `0`. -/
def Flow.Expression.childEdges
    (t : Flow.Expression α) :
    List (Nat × Nat) :=
  Flow.Expression.childEdgesFrom 0 t

/-- Boolean adjacency matrix of a flow tree. -/
def Flow.Expression.adjacencyMatrix
    (t : Flow.Expression α) :
    _root_.Boolean.Matrix
      (Flow.Expression.nodeCount t)
      (Flow.Expression.nodeCount t) :=
  fun i j =>
    decide ((i.val, j.val) ∈ Flow.Expression.childEdges t)

/-- Boolean reachability matrix of a flow tree, computed by Warshall closure. -/
def Flow.Expression.reachabilityMatrix
    (t : Flow.Expression α) :
    _root_.Boolean.Matrix
      (Flow.Expression.nodeCount t)
      (Flow.Expression.nodeCount t) :=
  _root_.Boolean.Matrix.warshall (Flow.Expression.adjacencyMatrix t)

/--
Boolean zeta relation of the tree poset.

A `1` at `(i,j)` means `i = j` or `j` is reachable below `i`.
-/
def Flow.Expression.zetaBoolMatrix
    (t : Flow.Expression α) :
    _root_.Boolean.Matrix
      (Flow.Expression.nodeCount t)
      (Flow.Expression.nodeCount t) :=
  fun i j =>
    decide (i = j) ||
      Flow.Expression.reachabilityMatrix t i j

/-- Integer zeta matrix of the tree poset. -/
def Flow.Expression.zetaMatrix
    (t : Flow.Expression α) :
    Flow.IntMatrix
      (Flow.Expression.nodeCount t)
      (Flow.Expression.nodeCount t) :=
  Flow.IntMatrix.ofBool
    (Flow.Expression.zetaBoolMatrix t)

/--
Möbius matrix of the tree poset.

For a rooted tree poset in preorder:

* diagonal entries are `1`;
* cover entries, i.e. parent-child edges, are `-1`;
* all other entries are `0`.

This is the local Möbius inversion operator for the zeta/incidence matrix.
-/
def Flow.Expression.mobiusMatrix
    (t : Flow.Expression α) :
    Flow.IntMatrix
      (Flow.Expression.nodeCount t)
      (Flow.Expression.nodeCount t) :=
  fun i j =>
    if i = j then
      1
    else if (i.val, j.val) ∈ Flow.Expression.childEdges t then
      -1
    else
      0

/-- Matrix package carrying both zeta and Möbius data for a flow tree. -/
structure Flow.MobiusInversion (α : Type u) where
  nodes : Nat
  zeta : Flow.IntMatrix nodes nodes
  mobius : Flow.IntMatrix nodes nodes
  tree : Flow.Expression α

/-- Build the zeta/Möbius inversion package from a flow tree. -/
def Flow.Expression.mobiusInversion
    (t : Flow.Expression α) :
    Flow.MobiusInversion α where
  nodes := Flow.Expression.nodeCount t
  zeta := Flow.Expression.zetaMatrix t
  mobius := Flow.Expression.mobiusMatrix t
  tree := t

/--
Build the finite Möbius determinant bridge from a flow tree.

The matrix component is the Möbius inversion matrix.
-/
def Flow.Expression.finiteMobiusTraceTriple
    (t : Flow.Expression α) :
    Flow.FiniteMobiusTraceTriple α where
  nodes := Flow.Expression.nodeCount t
  matrix := Flow.Expression.mobiusMatrix t
  determinant := Flow.UnitDeterminantCertificate.treeMobius
  midpointBalance :=
    Flow.MidpointBalanceMetadata.standard
  tree := t

/-- The matrix component of the finite Möbius triple is the Möbius matrix. -/
theorem Flow.Expression.finiteMobiusTraceTriple_matrix_eq_mobius
    (t : Flow.Expression α) :
    (Flow.Expression.finiteMobiusTraceTriple t).matrix =
      Flow.Expression.mobiusMatrix t :=
  rfl

/-- The determinant witness of the finite Möbius triple is `1`. -/
theorem Flow.Expression.finiteMobiusTraceTriple_determinant_one
    (t : Flow.Expression α) :
    (Flow.Expression.finiteMobiusTraceTriple t).determinant.determinant = 1 :=
  rfl

/-- The tree component of the finite Möbius triple is the original flow tree. -/
theorem Flow.Expression.finiteMobiusTraceTriple_tree_eq
    (t : Flow.Expression α) :
    (Flow.Expression.finiteMobiusTraceTriple t).tree = t :=
  rfl

/-- The zeta matrix has `1` on the diagonal. -/
theorem Flow.Expression.zeta_diagonal
    (t : Flow.Expression α)
    (i : Fin (Flow.Expression.nodeCount t)) :
    Flow.Expression.zetaMatrix t i i = 1 := by
  simp [Flow.Expression.zetaMatrix,
    Flow.Expression.zetaBoolMatrix,
    Flow.IntMatrix.ofBool]

/-- The Möbius matrix has `1` on the diagonal. -/
theorem Flow.Expression.mobius_diagonal
    (t : Flow.Expression α)
    (i : Fin (Flow.Expression.nodeCount t)) :
    Flow.Expression.mobiusMatrix t i i = 1 := by
  simp [Flow.Expression.mobiusMatrix]

/--
Every immediate tree edge has Möbius entry `-1`.

The side condition `i ≠ j` avoids the impossible self-cover case and keeps the
statement syntactically direct.
-/
theorem Flow.Expression.mobius_cover_entry
    (t : Flow.Expression α)
    (i j : Fin (Flow.Expression.nodeCount t))
    (hneq : i ≠ j)
    (hedge : (i.val, j.val) ∈ Flow.Expression.childEdges t) :
    Flow.Expression.mobiusMatrix t i j = -1 := by
  simp [Flow.Expression.mobiusMatrix, hneq, hedge]

/-- The matrix-triple for the BSD-motivated symbolic flow pipeline. -/
def Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple :
    Flow.FiniteMobiusTraceTriple String :=
  Flow.Expression.finiteMobiusTraceTriple
    Flow.Examples.bsdMotivatedSymbolicPipeline

/-- The Möbius inversion package for the BSD-motivated symbolic flow pipeline. -/
def Flow.Examples.bsdMotivatedSymbolicMobiusInversion :
    Flow.MobiusInversion String :=
  Flow.Expression.mobiusInversion
    Flow.Examples.bsdMotivatedSymbolicPipeline

/--
The determinant bridge for the full pipeline has determinant witness `1`.
-/
theorem Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple_determinant :
    Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple.determinant.determinant =
      1 :=
  rfl

/--
The midpoint-balance component of the determinant bridge is the standard midpoint

-/
theorem Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple_midpoint :
    Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple.midpointBalance =
      Flow.MidpointBalanceMetadata.standard :=
  rfl

end Surface
