# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SpatialCarrier.Variant38830784d8901aade8faa6163bca1e84474db10f9cce8e88c592027b22fb82f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a9acc30a2b29463428075efdd4473a25e8eddf0` · SHA-256 `2e26e8a93b485cca7c76b03d85258e434737b7288f56c3cd1daf8385e6c367b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteHypergraph.Variantbc18b1967da6382e1cfc7c6ca96355d4d05732cd0e4f3d133f50fd2c0ccb90b0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc18b1967da6382e1cfc7c6ca96355d4d05732cd0e4f3d133f50fd2c0ccb90b0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FiniteHypergraph.Variantbc18b1967da6382e1cfc7c6ca96355d4d05732cd0e4f3d133f50fd2c0ccb90b0","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"bc18b1967da6382e1cfc7c6ca96355d4d05732cd0e4f3d133f50fd2c0ccb90b0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:3aecf689b7793ca2052f430f/workspace/lib/Surface/Core/TypeII/SpatialCarrier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.Interaction
import Mathlib.Tactic

/-!
# Spatial carriers and exact block surgery for Type II packets

An incidence hypergraph records which packet labels can interact.  It is not
in general a three-manifold: a common shading point can create a simplex of
arbitrarily high dimension.  This file therefore keeps incidence data
separate from an explicitly three-dimensional finite graded carrier.

The carrier below is an abstract cubical or simplicial grading.  A
separate predicate says that its atom subcomplexes realize supplied packet
shadings; no construction of such a realization is claimed here.  Likewise,
a valid neck contains independent closed-surface, sphere-recognition, and
separation certificates.  A concentrated hyperedge is never promoted to a
neck merely by definition.

The last section gives exact bipartite block bookkeeping.  The cutoff matrix
is decomposed into block matrices and a cross matrix.  The hard signed bound
for the cross matrix is the separately named proposition
`CrossCorrelationBound`; it is deliberately not a field of the structural
surgery data.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteHypergraph.Variantbc18b1967da6382e1cfc7c6ca96355d4d05732cd0e4f3d133f50fd2c0ccb90b0

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped BigOperators
open Surface.Core.PrimeWalkSpatialEncoding

/-! ## Coefficient-blind finite incidence data -/

/-- A finite hypergraph.  Hyperedges are required to be nonempty, but no
dimension bound is imposed. -/
structure FiniteHypergraph (Vertex : Type*)
    [Fintype Vertex] [DecidableEq Vertex] where
  hyperedges : Finset (Finset Vertex)
  hyperedge_nonempty : ∀ edge ∈ hyperedges, edge.Nonempty

/-- Coefficient-blind interaction data.  The hypergraph records simultaneous
incidence, while `overlapWeight` records a symmetric pairwise statistic.
`convexCluster` is only a supplied geometric predicate; it carries no
arithmetic cancellation theorem. -/
structure TypeIIInteractionData (Atom : Type*)
    [Fintype Atom] [DecidableEq Atom] where
  incidenceHypergraph : FiniteHypergraph Atom
  overlapWeight : Atom → Atom → ℝ
  overlapWeight_nonneg : ∀ left right, 0 ≤ overlapWeight left right
  overlapWeight_symm : ∀ left right,
    overlapWeight left right = overlapWeight right left
  overlapWeight_self : ∀ atom, overlapWeight atom atom = 0
  convexCluster : Finset Atom → Prop
  convexCluster_nonempty : ∀ cluster,
    convexCluster cluster → cluster.Nonempty

/-! ## A distinct finite three-dimensional spatial carrier -/

/-- The two supported finite carrier models.  No equivalence between their
combinatorial realizations is asserted. -/
inductive FiniteCellModel
  | cubical
  | simplicial
deriving DecidableEq, Repr

/-- An abstract finite graded carrier of dimension exactly three, together
with a geometric carrier for every cell label in the fixed spatial Euclidean
space.  `faces` is an acyclic transitive grading relation.

This deliberately is *not* called a cell complex: it does not yet assert
regular-cell characteristic maps, geometric face containment, or closure
axioms from a general-purpose CW-complex library. -/
structure FiniteGradedCarrier3 where
  model : FiniteCellModel
  Cell : Type
  cellFintype : Fintype Cell
  cellDecidableEq : DecidableEq Cell
  dimension : Cell → Fin 4
  faces : Cell → Finset Cell
  face_irrefl : ∀ cell, cell ∉ faces cell
  face_dimension_lt : ∀ {face cell}, face ∈ faces cell →
    (dimension face).1 < (dimension cell).1
  face_transitive : ∀ {small middle large},
    small ∈ faces middle → middle ∈ faces large →
      small ∈ faces large
  geometricCell : Cell → Set SpatialPoint
  topCell_exists : ∃ cell, (dimension cell).1 = 3

instance FiniteGradedCarrier3.instFintypeCell
    (complex : FiniteGradedCarrier3) : Fintype complex.Cell :=
  complex.cellFintype

instance FiniteGradedCarrier3.instDecidableEqCell
    (complex : FiniteGradedCarrier3) : DecidableEq complex.Cell :=
  complex.cellDecidableEq

/-- A face-closed finite subcarrier.  The historical name `FiniteSubcomplex`
means only closure under the supplied finite face relation. -/
structure FiniteSubcomplex (complex : FiniteGradedCarrier3) where
  cells : Finset complex.Cell
  face_closed : ∀ {cell face}, cell ∈ cells →
    face ∈ complex.faces cell → face ∈ cells

/-- Geometric union of a finite collection of cells. -/
@[expose]
def FiniteGradedCarrier3.realizeCells (complex : FiniteGradedCarrier3)
    (cells : Finset complex.Cell) : Set SpatialPoint :=
  ⋃ cell ∈ cells, complex.geometricCell cell

/-- Geometric realization of a finite subcomplex. -/
@[expose]
def FiniteGradedCarrier3.geometricRealization
    (complex : FiniteGradedCarrier3) (subcomplex : FiniteSubcomplex complex) :
    Set SpatialPoint :=
  complex.realizeCells subcomplex.cells

/-- A three-dimensional spatial carrier assigns a face-closed subcarrier to
each packet atom.  It does not assert that the subcarrier has already been
identified with the packet shading. -/
structure TypeIISpatialCarrier3 (Atom : Type*)
    [Fintype Atom] [DecidableEq Atom] where
  carrierComplex : FiniteGradedCarrier3
  atomCarrier : Atom → FiniteSubcomplex carrierComplex

/-- The missing geometric adapter: the assigned subcomplex for every atom
has exactly the supplied measurable shading as its realization.

No inhabitant is provided in this module. -/
@[expose]
def TypeIISpatialCarrier3.RealizesShadings
    {Atom : Type*} [Fintype Atom] [DecidableEq Atom]
    (carrier : TypeIISpatialCarrier3 Atom)
    (shading : Atom → Set SpatialPoint) : Prop :=
  ∀ atom, carrier.carrierComplex.geometricRealization
      (carrier.atomCarrier atom) = shading atom

/-! ## Closed surface, sphere, and separation certificates -/

/-- One-dimensional cells incident to a proposed vertex in a subcomplex. -/
@[expose]
def FiniteSubcomplex.incidentEdges {complex : FiniteGradedCarrier3}
    (subcomplex : FiniteSubcomplex complex) (vertex : complex.Cell) :
    Finset complex.Cell :=
  subcomplex.cells.filter fun edge ↦
    (complex.dimension edge).1 = 1 ∧ vertex ∈ complex.faces edge

/-- Two-dimensional cells incident to an edge in a subcomplex. -/
@[expose]
def FiniteSubcomplex.incidentFaces {complex : FiniteGradedCarrier3}
    (subcomplex : FiniteSubcomplex complex) (edge : complex.Cell) :
    Finset complex.Cell :=
  subcomplex.cells.filter fun face ↦
    (complex.dimension face).1 = 2 ∧ edge ∈ complex.faces face

/-- Adjacency in the combinatorial link of `vertex`: two incident edges are
adjacent when they occur in a common incident two-cell. -/
@[expose]
def FiniteSubcomplex.linkAdjacent {complex : FiniteGradedCarrier3}
    (subcomplex : FiniteSubcomplex complex) (vertex : complex.Cell)
    (left right : complex.Cell) : Prop :=
  ∃ face ∈ subcomplex.cells,
    (complex.dimension face).1 = 2 ∧
      vertex ∈ complex.faces face ∧
      left ∈ complex.faces face ∧ right ∈ complex.faces face

/-- A finite circle-link certificate around a vertex.  The connectedness and
degree-two conditions are explicit finite obligations. -/
structure CombinatorialCircleLinkCertificate
    {complex : FiniteGradedCarrier3}
    (subcomplex : FiniteSubcomplex complex) (vertex : complex.Cell) : Prop where
  vertex_mem : vertex ∈ subcomplex.cells
  vertex_dimension : (complex.dimension vertex).1 = 0
  incidentEdges_nonempty : (subcomplex.incidentEdges vertex).Nonempty
  incidentEdge_degree_two : ∀ edge ∈ subcomplex.incidentEdges vertex,
    (subcomplex.incidentFaces edge).card = 2
  link_connected : ∀ left ∈ subcomplex.incidentEdges vertex,
    ∀ right ∈ subcomplex.incidentEdges vertex,
      Relation.ReflTransGen (subcomplex.linkAdjacent vertex) left right

/-- Proof object that a subcomplex is a closed combinatorial two-manifold.
The local circle-link condition rules out treating a mere two-dimensional
pseudomanifold certificate as a manifold certificate. -/
structure ClosedCombinatorialTwoManifoldCertificate
    {complex : FiniteGradedCarrier3}
    (surface : FiniteSubcomplex complex) : Prop where
  pure_dimension_two : ∀ cell ∈ surface.cells,
    ∃ top ∈ surface.cells,
      (complex.dimension top).1 = 2 ∧
        (cell = top ∨ cell ∈ complex.faces top)
  edge_has_two_faces : ∀ edge ∈ surface.cells,
    (complex.dimension edge).1 = 1 →
      (surface.incidentFaces edge).card = 2
  vertex_link_circle : ∀ vertex ∈ surface.cells,
    (complex.dimension vertex).1 = 0 →
      CombinatorialCircleLinkCertificate surface vertex

/-- Topological recognition of the geometric separator as the unit
two-sphere in the ambient three-dimensional spatial space. -/
structure CombinatorialSphereRecognition
    {complex : FiniteGradedCarrier3}
    (surface : FiniteSubcomplex complex) : Prop where
  homeomorphToUnitSphere : Nonempty
    (complex.geometricRealization surface ≃ₜ
      Metric.sphere (0 : SpatialPoint) 1)

/-- Exact combinatorial and geometric separation data for a surface. -/
structure SeparatesCarrierCertificate
    {complex : FiniteGradedCarrier3}
    (separator : FiniteSubcomplex complex) where
  inside : FiniteSubcomplex complex
  outside : FiniteSubcomplex complex
  inside_only_nonempty : (inside.cells \ separator.cells).Nonempty
  outside_only_nonempty : (outside.cells \ separator.cells).Nonempty
  cover : inside.cells ∪ outside.cells = Finset.univ
  overlap : inside.cells ∩ outside.cells = separator.cells
  no_cross_face : ∀ {left right},
    left ∈ inside.cells \ separator.cells →
    right ∈ outside.cells \ separator.cells →
      left ∉ complex.faces right ∧ right ∉ complex.faces left
  geometric_sides_disjoint : Disjoint
    (complex.realizeCells (inside.cells \ separator.cells))
    (complex.realizeCells (outside.cells \ separator.cells))

/-- A valid combinatorial surgery neck.  Incidence concentration alone does
not produce this data: closedness, sphere recognition, and separation are
three independent certificate fields. -/
structure ValidCombinatorialNeck (complex : FiniteGradedCarrier3) where
  separator : FiniteSubcomplex complex
  separator_is_closed_surface :
    ClosedCombinatorialTwoManifoldCertificate separator
  separator_is_sphere : CombinatorialSphereRecognition separator
  separator_separates : SeparatesCarrierCertificate separator

/-- The two certified sides of a valid separating neck. -/
inductive NeckSide
  | inside
  | outside
deriving DecidableEq, Repr

/-- The face-closed subcarrier selected by one side of a valid neck. -/
@[expose]
def ValidCombinatorialNeck.sideCarrier
    {complex : FiniteGradedCarrier3}
    (neck : ValidCombinatorialNeck complex) :
    NeckSide → FiniteSubcomplex complex
  | .inside => neck.separator_separates.inside
  | .outside => neck.separator_separates.outside

/-! ## Exact bipartite block surgery -/

/-- Finite sesquilinear matrix pairing used to expose the cross-block term.
It is structural bookkeeping, not a norm estimate. -/
@[expose]
def bipartiteMatrixPairing
    {Left Right : Type*} [Fintype Left] [Fintype Right]
    (leftCoefficient : Left → ℂ)
    (matrix : Matrix Left Right ℂ)
    (rightCoefficient : Right → ℂ) : ℂ :=
  ∑ left, ∑ right,
    (starRingEnd ℂ) (leftCoefficient left) *
      matrix left right * rightCoefficient right

@[surface_novel, surface_published]
theorem bipartiteMatrixPairing_add
    {Left Right : Type*} [Fintype Left] [Fintype Right]
    (leftCoefficient : Left → ℂ)
    (first second : Matrix Left Right ℂ)
    (rightCoefficient : Right → ℂ) :
    bipartiteMatrixPairing leftCoefficient (first + second)
        rightCoefficient =
      bipartiteMatrixPairing leftCoefficient first rightCoefficient +
        bipartiteMatrixPairing leftCoefficient second rightCoefficient := by
  simp [bipartiteMatrixPairing, mul_add, add_mul,
    Finset.sum_add_distrib]

@[surface_novel, surface_published]
theorem bipartiteMatrixPairing_sum
    {Index Left Right : Type*}
    [Fintype Index] [Fintype Left] [Fintype Right]
    (leftCoefficient : Left → ℂ)
    (matrices : Index → Matrix Left Right ℂ)
    (rightCoefficient : Right → ℂ) :
    bipartiteMatrixPairing leftCoefficient (∑ index, matrices index)
        rightCoefficient =
      ∑ index, bipartiteMatrixPairing leftCoefficient
        (matrices index) rightCoefficient := by
  classical
  simp only [bipartiteMatrixPairing, Matrix.sum_apply,
    Finset.mul_sum, Finset.sum_mul]
  calc
    (∑ left, ∑ right, ∑ index,
        (starRingEnd ℂ) (leftCoefficient left) *
          matrices index left right * rightCoefficient right) =
      ∑ left, ∑ index, ∑ right,
        (starRingEnd ℂ) (leftCoefficient left) *
          matrices index left right * rightCoefficient right := by
            apply Fintype.sum_congr
            intro left
            exact Finset.sum_comm
    _ = ∑ index, ∑ left, ∑ right,
        (starRingEnd ℂ) (leftCoefficient left) *
          matrices index left right * rightCoefficient right :=
      Finset.sum_comm

/-- Exact structural data for a block surgery of a bipartite cutoff matrix.

`leftBlock` and `rightBlock` are literal partitions: every index has one
block and the surjectivity fields prevent empty named blocks.  The matrices
are all expressed on the parent index types so the decomposition is an exact
matrix identity.  No cross-correlation estimate occurs in this structure. -/
structure TypeIIBlockSurgery
    (N : ℕ)
    {Left Right : Type*}
    [Fintype Left] [DecidableEq Left]
    [Fintype Right] [DecidableEq Right]
    (cutoffMatrix : ℕ → Matrix Left Right ℂ)
    (spatialCarrier : TypeIISpatialCarrier3 (Sum Left Right)) where
  Child : Type
  childFintype : Fintype Child
  childDecidableEq : DecidableEq Child
  leftBlock : Left → Child
  rightBlock : Right → Child
  leftBlock_surjective : Function.Surjective leftBlock
  rightBlock_surjective : Function.Surjective rightBlock
  blockMatrix : Child → ℕ → Matrix Left Right ℂ
  blockMatrix_support : ∀ child x left right,
    blockMatrix child x left right ≠ 0 →
      leftBlock left = child ∧ rightBlock right = child
  crossMatrix : ℕ → Matrix Left Right ℂ
  cutoff_decomposition : ∀ x,
    cutoffMatrix x = ∑ child, blockMatrix child x + crossMatrix x
  inducedSpatialCut : ValidCombinatorialNeck spatialCarrier.carrierComplex

instance TypeIIBlockSurgery.instFintypeChild
    {N : ℕ} {Left Right : Type*}
    [Fintype Left] [DecidableEq Left]
    [Fintype Right] [DecidableEq Right]
    {cutoffMatrix : ℕ → Matrix Left Right ℂ}
    {spatialCarrier : TypeIISpatialCarrier3 (Sum Left Right)}
    (surgery : TypeIIBlockSurgery N cutoffMatrix spatialCarrier) :
    Fintype surgery.Child :=
  surgery.childFintype

instance TypeIIBlockSurgery.instDecidableEqChild
    {N : ℕ} {Left Right : Type*}
    [Fintype Left] [DecidableEq Left]
    [Fintype Right] [DecidableEq Right]
    {cutoffMatrix : ℕ → Matrix Left Right ℂ}
    {spatialCarrier : TypeIISpatialCarrier3 (Sum Left Right)}
    (surgery : TypeIIBlockSurgery N cutoffMatrix spatialCarrier) :
    DecidableEq surgery.Child :=
  surgery.childDecidableEq

/-- Reusable geometric certificate tying the algebraic block assignments to
the two sides of the surgery neck.

Each named child block is assigned one certified neck side; surjectivity
ensures that both sides occur.  Every left and right packet subcarrier is
then required to lie in the side assigned to its algebraic block.  This is
kept separate from `TypeIIBlockSurgery`: an exact matrix decomposition alone
does not establish spatial compatibility. -/
structure BlockAssignmentsRealizeNeckSides
    {N : ℕ} {Left Right : Type*}
    [Fintype Left] [DecidableEq Left]
    [Fintype Right] [DecidableEq Right]
    {cutoffMatrix : ℕ → Matrix Left Right ℂ}
    {spatialCarrier : TypeIISpatialCarrier3 (Sum Left Right)}
    (surgery : TypeIIBlockSurgery N cutoffMatrix spatialCarrier) where
  childSide : surgery.Child → NeckSide
  childSide_surjective : Function.Surjective childSide
  leftCarrier_subset_side : ∀ left : Left,
    (spatialCarrier.atomCarrier (Sum.inl left)).cells ⊆
      (surgery.inducedSpatialCut.sideCarrier
        (childSide (surgery.leftBlock left))).cells
  rightCarrier_subset_side : ∀ right : Right,
    (spatialCarrier.atomCarrier (Sum.inr right)).cells ⊆
      (surgery.inducedSpatialCut.sideCarrier
        (childSide (surgery.rightBlock right))).cells

@[surface_novel, surface_published]
theorem BlockAssignmentsRealizeNeckSides.side_has_child
    {N : ℕ} {Left Right : Type*}
    [Fintype Left] [DecidableEq Left]
    [Fintype Right] [DecidableEq Right]
    {cutoffMatrix : ℕ → Matrix Left Right ℂ}
    {spatialCarrier : TypeIISpatialCarrier3 (Sum Left Right)}
    {surgery : TypeIIBlockSurgery N cutoffMatrix spatialCarrier}
    (certificate : BlockAssignmentsRealizeNeckSides surgery)
    (side : NeckSide) :
    ∃ child : surgery.Child, certificate.childSide child = side :=
  certificate.childSide_surjective side

/-- Every left index lies in a unique child block. -/
@[surface_novel, surface_published]
theorem TypeIIBlockSurgery.leftBlock_unique
    {N : ℕ} {Left Right : Type*}
    [Fintype Left] [DecidableEq Left]
    [Fintype Right] [DecidableEq Right]
    {cutoffMatrix : ℕ → Matrix Left Right ℂ}
    {spatialCarrier : TypeIISpatialCarrier3 (Sum Left Right)}
    (surgery : TypeIIBlockSurgery N cutoffMatrix spatialCarrier)
    (left : Left) (first second : surgery.Child)
    (hfirst : surgery.leftBlock left = first)
    (hsecond : surgery.leftBlock left = second) :
    first = second := by
  rw [← hfirst, hsecond]

/-- Every right index lies in a unique child block. -/
@[surface_novel, surface_published]
theorem TypeIIBlockSurgery.rightBlock_unique
    {N : ℕ} {Left Right : Type*}
    [Fintype Left] [DecidableEq Left]
    [Fintype Right] [DecidableEq Right]
    {cutoffMatrix : ℕ → Matrix Left Right ℂ}
    {spatialCarrier : TypeIISpatialCarrier3 (Sum Left Right)}
    (surgery : TypeIIBlockSurgery N cutoffMatrix spatialCarrier)
    (right : Right) (first second : surgery.Child)
    (hfirst : surgery.rightBlock right = first)
    (hsecond : surgery.rightBlock right = second) :
    first = second := by
  rw [← hfirst, hsecond]

/-- Exact decomposition of the coefficient pairing into child pairings and
the cross-block pairing. -/
@[surface_novel, surface_published]
theorem TypeIIBlockSurgery.pairing_decomposition
    {N : ℕ} {Left Right : Type*}
    [Fintype Left] [DecidableEq Left]
    [Fintype Right] [DecidableEq Right]
    {cutoffMatrix : ℕ → Matrix Left Right ℂ}
    {spatialCarrier : TypeIISpatialCarrier3 (Sum Left Right)}
    (surgery : TypeIIBlockSurgery N cutoffMatrix spatialCarrier)
    (leftCoefficient : Left → ℂ)
    (rightCoefficient : Right → ℂ) (x : ℕ) :
    bipartiteMatrixPairing leftCoefficient (cutoffMatrix x)
        rightCoefficient =
      ∑ child, bipartiteMatrixPairing leftCoefficient
          (surgery.blockMatrix child x) rightCoefficient +
        bipartiteMatrixPairing leftCoefficient
          (surgery.crossMatrix x) rightCoefficient := by
  rw [surgery.cutoff_decomposition]
  rw [bipartiteMatrixPairing_add, bipartiteMatrixPairing_sum]

/-- The hard coefficient-sensitive cross-block estimate.  It is a separate
proposition about a completed structural surgery, not a field used to create
one.  No inhabitant is supplied here. -/
@[expose]
def CrossCorrelationBound
    (N : ℕ)
    {Left Right : Type*}
    [Fintype Left] [DecidableEq Left]
    [Fintype Right] [DecidableEq Right]
    {cutoffMatrix : ℕ → Matrix Left Right ℂ}
    {spatialCarrier : TypeIISpatialCarrier3 (Sum Left Right)}
    (surgery : TypeIIBlockSurgery N cutoffMatrix spatialCarrier)
    (leftCoefficient : Left → ℂ)
    (rightCoefficient : Right → ℂ)
    (localSurgeryMass : ℝ) : Prop :=
  0 ≤ localSurgeryMass ∧
    ∀ ε : ℝ, 0 < ε →
      ∃ C : ℝ, 0 ≤ C ∧
        ∀ x : ℕ, x ≤ 2 * N →
          ‖bipartiteMatrixPairing leftCoefficient
              (surgery.crossMatrix x) rightCoefficient‖ ≤
            C * localSurgeryMass * (N : ℝ) ^ ε

end

end Surface.Core.TypeII

end
```
