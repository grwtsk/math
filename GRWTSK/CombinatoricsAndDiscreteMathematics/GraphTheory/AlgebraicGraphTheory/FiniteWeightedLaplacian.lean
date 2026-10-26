/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage
import Mathlib.Combinatorics.SimpleGraph.LapMatrix
import Mathlib.LinearAlgebra.Matrix.PosDef

set_option autoImplicit false

noncomputable section

/-!
# Finite weighted Laplacians for search-graph diffusion

This module adds an explicit operator boundary between a source-grounded search
graph and spectral diffusion.

* `FiniteWeightedGraph` records symmetric nonnegative weights and no loops.
* Weighted degree, adjacency, Laplacian, energy, and quadratic forms are explicit.
* `WeightedLaplacianCertificate` and `NormalizedTransition` retain the proof
  obligations needed for positivity and normalization.
* `FiniteSimpleGraphOperator` supplies the 0--1 specialization through
  Mathlib's finite simple-graph Laplacian, including symmetry, positive
  semidefiniteness, constant-vector normalization, and the zero spectral value.
* `LaplacianOrderWitness` is the additional operator-order premise required
  before any spectral monotonicity claim.

No search relation is automatically symmetrized. No graph inclusion theorem is
converted into adjacency or Laplacian spectral ordering. No heat-semigroup,
Chowla cancellation, zeta-zero comparison, or compression improvement is
proved here.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

universe u v

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.AlgebraicGraphTheory.FiniteWeightedLaplacian

open Matrix
open GRWTSK.GraphSandwichDiffusion

/-- The graph-sandwich layer from which an operator was constructed. -/
inductive SandwichLayer where
  | certified
  | candidate
  | admissible
  deriving DecidableEq, Fintype, Repr

/-- Select the relation represented by one source-search sandwich layer. -/
def SourceSearchInventory.relationAtLayer
    {Vertex : Type u} [DecidableEq Vertex]
    (inventory : SourceSearchInventory Vertex) :
    SandwichLayer → Vertex → Vertex → Prop
  | .certified => inventory.certified
  | .candidate => inventory.candidate
  | .admissible => inventory.admissible

/-- Eligibility of one inventory layer for an undirected loopless graph
operator. Search relations do not receive these properties automatically. -/
structure InventoryLayerEligibility
    {Vertex : Type u} [DecidableEq Vertex]
    (inventory : SourceSearchInventory Vertex)
    (layer : SandwichLayer) where
  symmetric : ∀ ⦃source target : Vertex⦄,
    inventory.relationAtLayer layer source target →
      inventory.relationAtLayer layer target source
  loopless : ∀ vertex : Vertex,
    ¬ inventory.relationAtLayer layer vertex vertex

/-- A relation is eligible for the finite simple-graph operator only after
symmetry and looplessness have been supplied explicitly. -/
structure EligibleUndirectedRelation (Vertex : Type u) where
  edge : Vertex → Vertex → Prop
  symmetric : ∀ ⦃source target : Vertex⦄,
    edge source target → edge target source
  loopless : ∀ vertex : Vertex, ¬ edge vertex vertex

/-- Convert an eligible relation to Mathlib's `SimpleGraph`. -/
def EligibleUndirectedRelation.toSimpleGraph
    {Vertex : Type u} (relation : EligibleUndirectedRelation Vertex) :
    SimpleGraph Vertex where
  Adj := relation.edge
  symm := relation.symmetric
  loopless := relation.loopless

/-- Package a certified inventory layer as an eligible undirected relation. -/
def InventoryLayerEligibility.toEligibleRelation
    {Vertex : Type u} [DecidableEq Vertex]
    {inventory : SourceSearchInventory Vertex}
    {layer : SandwichLayer}
    (eligibility : InventoryLayerEligibility inventory layer) :
    EligibleUndirectedRelation Vertex where
  edge := inventory.relationAtLayer layer
  symmetric := eligibility.symmetric
  loopless := eligibility.loopless

/-- A finite undirected weighted graph over real nonnegative weights. -/
structure FiniteWeightedGraph (Vertex : Type u) [Fintype Vertex] where
  weight : Vertex → Vertex → ℝ
  symmetric : ∀ source target,
    weight source target = weight target source
  nonnegative : ∀ source target, 0 ≤ weight source target
  diagonal_zero : ∀ vertex, weight vertex vertex = 0

variable {Vertex : Type u} [Fintype Vertex] [DecidableEq Vertex]

namespace FiniteWeightedGraph

/-- Weighted adjacency matrix. -/
def adjacencyMatrix (graph : FiniteWeightedGraph Vertex) : Matrix Vertex Vertex ℝ :=
  graph.weight

/-- Weighted degree of one vertex. -/
def degree (graph : FiniteWeightedGraph Vertex) (source : Vertex) : ℝ :=
  ∑ target : Vertex, graph.weight source target

/-- Diagonal weighted-degree matrix. -/
def degreeMatrix (graph : FiniteWeightedGraph Vertex) : Matrix Vertex Vertex ℝ :=
  Matrix.diagonal graph.degree

/-- Combinatorial weighted Laplacian `D - A`. -/
def laplacian (graph : FiniteWeightedGraph Vertex) : Matrix Vertex Vertex ℝ :=
  graph.degreeMatrix - graph.adjacencyMatrix

/-- Dirichlet energy associated to the symmetric edge weights. -/
def energy (graph : FiniteWeightedGraph Vertex) (x : Vertex → ℝ) : ℝ :=
  (1 / 2 : ℝ) *
    ∑ source : Vertex, ∑ target : Vertex,
      graph.weight source target * (x source - x target) ^ 2

/-- The matrix quadratic form written as an explicit finite sum. -/
def quadratic (graph : FiniteWeightedGraph Vertex) (x : Vertex → ℝ) : ℝ :=
  ∑ source : Vertex,
    x source * ∑ target : Vertex, graph.laplacian source target * x target

/-- Weighted degree is nonnegative. -/
theorem degree_nonnegative (graph : FiniteWeightedGraph Vertex) (source : Vertex) :
    0 ≤ graph.degree source := by
  classical
  exact Finset.sum_nonneg (fun target _ => graph.nonnegative source target)

/-- The weighted adjacency matrix is symmetric. -/
theorem adjacencyMatrix_isSymm (graph : FiniteWeightedGraph Vertex) :
    graph.adjacencyMatrix.IsSymm := by
  apply Matrix.IsSymm.ext
  intro source target
  exact graph.symmetric target source

/-- The weighted degree matrix is symmetric. -/
theorem degreeMatrix_isSymm (graph : FiniteWeightedGraph Vertex) :
    graph.degreeMatrix.IsSymm := by
  exact Matrix.isSymm_diagonal graph.degree

/-- The weighted Laplacian is symmetric. -/
theorem laplacian_isSymm (graph : FiniteWeightedGraph Vertex) :
    graph.laplacian.IsSymm := by
  apply Matrix.IsSymm.ext
  intro source target
  simp only [laplacian, Matrix.sub_apply]
  rw [graph.degreeMatrix_isSymm.apply source target]
  rw [graph.adjacencyMatrix_isSymm.apply source target]

/-- The explicit weighted energy is nonnegative. -/
theorem energy_nonnegative (graph : FiniteWeightedGraph Vertex) (x : Vertex → ℝ) :
    0 ≤ graph.energy x := by
  unfold energy
  apply mul_nonneg
  · norm_num
  · exact Finset.sum_nonneg (fun source _ =>
      Finset.sum_nonneg (fun target _ =>
        mul_nonneg (graph.nonnegative source target)
          (sq_nonneg (x source - x target))))

end FiniteWeightedGraph

/-- Proof obligations certifying that the declared weighted Laplacian has zero
row sums and that its quadratic form is the nonnegative weighted energy. -/
structure WeightedLaplacianCertificate
    (graph : FiniteWeightedGraph Vertex) where
  rowSumZero : ∀ source : Vertex,
    (∑ target : Vertex, graph.laplacian source target) = 0
  quadratic_eq_energy : ∀ x : Vertex → ℝ,
    graph.quadratic x = graph.energy x

/-- A certified weighted Laplacian has a nonnegative quadratic form. -/
theorem WeightedLaplacianCertificate.quadratic_nonnegative
    {graph : FiniteWeightedGraph Vertex}
    (certificate : WeightedLaplacianCertificate graph)
    (x : Vertex → ℝ) :
    0 ≤ graph.quadratic x := by
  rw [certificate.quadratic_eq_energy x]
  exact graph.energy_nonnegative x

/-- A normalized nonnegative transition matrix supported by the weighted graph.
The row-normalization proof is retained rather than inferred from weights that
may have zero degree. -/
structure NormalizedTransition (graph : FiniteWeightedGraph Vertex) where
  matrix : Matrix Vertex Vertex ℝ
  nonnegative : ∀ source target, 0 ≤ matrix source target
  rowSumOne : ∀ source : Vertex,
    (∑ target : Vertex, matrix source target) = 1
  supported : ∀ ⦃source target : Vertex⦄,
    matrix source target ≠ 0 → graph.weight source target ≠ 0

/-- An eligible weighted diffusion operator consists of the graph plus the
mathematical certificates needed by later diffusion theorems. -/
structure EligibleWeightedOperator (Vertex : Type u) [Fintype Vertex]
    [DecidableEq Vertex] where
  graph : FiniteWeightedGraph Vertex
  laplacianCertificate : WeightedLaplacianCertificate graph
  transition : Option (NormalizedTransition graph)
  height : ℕ
  layer : SandwichLayer
  operatorName : String
  provenance : List SourceIdentity

/-- Provenance-bearing finite 0--1 graph operator. -/
structure FiniteSimpleGraphOperator (Vertex : Type u) where
  graph : SimpleGraph Vertex
  height : ℕ
  layer : SandwichLayer
  operatorName : String
  provenance : List SourceIdentity

namespace FiniteSimpleGraphOperator

/-- Explicit 0--1 adjacency weight. -/
noncomputable def adjacencyWeight
    (operator : FiniteSimpleGraphOperator Vertex)
    (source target : Vertex) : ℝ := by
  classical
  exact if operator.graph.Adj source target then 1 else 0

/-- Mathlib adjacency matrix. -/
noncomputable def adjacencyMatrix
    (operator : FiniteSimpleGraphOperator Vertex) : Matrix Vertex Vertex ℝ := by
  classical
  exact SimpleGraph.adjMatrix ℝ operator.graph

/-- Mathlib degree matrix. -/
noncomputable def degreeMatrix
    (operator : FiniteSimpleGraphOperator Vertex) : Matrix Vertex Vertex ℝ := by
  classical
  exact SimpleGraph.degMatrix ℝ operator.graph

/-- Mathlib combinatorial Laplacian. -/
noncomputable def laplacian
    (operator : FiniteSimpleGraphOperator Vertex) : Matrix Vertex Vertex ℝ := by
  classical
  exact SimpleGraph.lapMatrix ℝ operator.graph

/-- Quadratic form of the Mathlib Laplacian. -/
noncomputable def quadratic
    (operator : FiniteSimpleGraphOperator Vertex)
    (x : Vertex → ℝ) : ℝ :=
  (((Matrix.toLinearMap₂' ℝ) operator.laplacian) x) x

/-- The 0--1 weight is symmetric. -/
theorem adjacencyWeight_symmetric
    (operator : FiniteSimpleGraphOperator Vertex)
    (source target : Vertex) :
    operator.adjacencyWeight source target =
      operator.adjacencyWeight target source := by
  classical
  by_cases edge : operator.graph.Adj source target
  · have reverse := operator.graph.symm edge
    simp [adjacencyWeight, edge, reverse]
  · have reverse : ¬ operator.graph.Adj target source := by
      intro reverseEdge
      exact edge (operator.graph.symm reverseEdge)
    simp [adjacencyWeight, edge, reverse]

/-- The 0--1 weight is nonnegative. -/
theorem adjacencyWeight_nonnegative
    (operator : FiniteSimpleGraphOperator Vertex)
    (source target : Vertex) :
    0 ≤ operator.adjacencyWeight source target := by
  classical
  by_cases edge : operator.graph.Adj source target <;>
    simp [adjacencyWeight, edge]

/-- The 0--1 weight vanishes on the diagonal. -/
theorem adjacencyWeight_diagonal_zero
    (operator : FiniteSimpleGraphOperator Vertex)
    (vertex : Vertex) :
    operator.adjacencyWeight vertex vertex = 0 := by
  classical
  simp [adjacencyWeight, operator.graph.loopless vertex]

/-- The explicit 0--1 weights form a finite weighted graph. -/
noncomputable def toWeightedGraph
    (operator : FiniteSimpleGraphOperator Vertex) :
    FiniteWeightedGraph Vertex where
  weight := operator.adjacencyWeight
  symmetric := operator.adjacencyWeight_symmetric
  nonnegative := operator.adjacencyWeight_nonnegative
  diagonal_zero := operator.adjacencyWeight_diagonal_zero

/-- The Mathlib finite simple-graph Laplacian is symmetric. -/
theorem laplacian_isSymm
    (operator : FiniteSimpleGraphOperator Vertex) :
    operator.laplacian.IsSymm := by
  classical
  exact SimpleGraph.isSymm_lapMatrix ℝ operator.graph

/-- The Mathlib finite simple-graph Laplacian is positive semidefinite. -/
theorem laplacian_posSemidef
    (operator : FiniteSimpleGraphOperator Vertex) :
    operator.laplacian.PosSemidef := by
  classical
  exact SimpleGraph.posSemidef_lapMatrix ℝ operator.graph

/-- The constant vector is in the kernel of the Mathlib Laplacian. -/
theorem laplacian_mulVec_one_eq_zero
    (operator : FiniteSimpleGraphOperator Vertex) :
    operator.laplacian.mulVec 1 = 0 := by
  classical
  exact SimpleGraph.lapMatrix_mulVec_one_eq_zero ℝ operator.graph

/-- Every nonempty finite simple-graph Laplacian has zero in its spectrum. -/
theorem zero_mem_laplacian_spectrum
    [Nonempty Vertex]
    (operator : FiniteSimpleGraphOperator Vertex) :
    0 ∈ spectrum ℝ operator.laplacian := by
  classical
  exact SimpleGraph.zero_mem_spectrum_lapMatrix ℝ operator.graph

/-- The exact quadratic-energy identity supplied by Mathlib. -/
theorem quadratic_eq_edge_energy
    (operator : FiniteSimpleGraphOperator Vertex)
    (x : Vertex → ℝ) :
    operator.quadratic x =
      (∑ source : Vertex, ∑ target : Vertex,
        if operator.graph.Adj source target then
          (x source - x target) ^ 2 else 0) / 2 := by
  classical
  exact SimpleGraph.lapMatrix_toLinearMap₂' ℝ operator.graph x

/-- Build an operator from a separately certified undirected relation. -/
def ofEligibleRelation
    (relation : EligibleUndirectedRelation Vertex)
    (height : ℕ) (layer : SandwichLayer)
    (operatorName : String) (provenance : List SourceIdentity) :
    FiniteSimpleGraphOperator Vertex where
  graph := relation.toSimpleGraph
  height := height
  layer := layer
  operatorName := operatorName
  provenance := provenance

/-- Construct the operator for one inventory layer only after symmetry and
looplessness have been certified. -/
def ofInventoryLayer
    (inventory : SourceSearchInventory Vertex)
    (layer : SandwichLayer)
    (eligibility : InventoryLayerEligibility inventory layer)
    (height : ℕ) (operatorName : String)
    (provenance : List SourceIdentity) :
    FiniteSimpleGraphOperator Vertex :=
  ofEligibleRelation eligibility.toEligibleRelation
    height layer operatorName provenance

end FiniteSimpleGraphOperator

/-- A declared operator coordinate. Height is a graph filtration index; it is
not a zeta-zero ordinate or real part. -/
structure OperatorCoordinate where
  height : ℕ
  layer : SandwichLayer
  operatorName : String
  deriving DecidableEq, Repr

/-- Coordinate of a finite simple-graph operator. -/
def FiniteSimpleGraphOperator.coordinate
    (operator : FiniteSimpleGraphOperator Vertex) : OperatorCoordinate where
  height := operator.height
  layer := operator.layer
  operatorName := operator.operatorName

/-- A total finite family covers every operator in its declared finite index
type. It makes no claim about operators outside that type. -/
structure HeightIndexedOperatorFamily
    (Index : Type v) (Vertex : Type u) [Fintype Index] where
  operator : Index → FiniteSimpleGraphOperator Vertex

/-- Relative operator completeness for the declared finite family. -/
theorem HeightIndexedOperatorFamily.operator_covered
    {Index : Type v} [Fintype Index]
    (family : HeightIndexedOperatorFamily Index Vertex)
    (index : Index) :
    ∃ operator : FiniteSimpleGraphOperator Vertex,
      family.operator index = operator :=
  ⟨family.operator index, rfl⟩

/-- A Loewner-style quadratic-form comparison witness. Such a witness, or an
equivalent operator-order theorem, is additional data; edge inclusion alone does
not construct it. -/
structure LaplacianOrderWitness
    (lower upper : FiniteSimpleGraphOperator Vertex) where
  quadratic_le : ∀ x : Vertex → ℝ,
    lower.quadratic x ≤ upper.quadratic x
  assumptions : List String
  provenance : List SourceIdentity

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.AlgebraicGraphTheory.FiniteWeightedLaplacian
