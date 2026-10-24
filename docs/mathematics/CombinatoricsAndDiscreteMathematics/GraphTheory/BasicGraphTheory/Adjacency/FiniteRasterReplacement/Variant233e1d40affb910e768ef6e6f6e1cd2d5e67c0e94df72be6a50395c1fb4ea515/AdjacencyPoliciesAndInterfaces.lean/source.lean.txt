/-
Deterministic replay of an established source split; no new conceptual review.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515
Organized SHA-256: 68340f32725ab341898b3f5c89b4bb63d24916ea447360c970829be7224bf717
Established decision SHA-256: ad13c4f5fe0d7f3ddd063ba7c8c3de1f4a1fff66aa1a52f2f1304a643e22f5f1
PMD: 510.7.030.010.020 adjacency
Source mathematics, hypotheses, namespaces, imports and proof text remain source copies.
Comments may differ from the established source; all exact versions remain archived.
Uncompiled; no Lean/Lake, public umbrella admission, proof acceptance or authorship determination.
-/

import BitMatrix.Topology.RasterCubicalComplex
import Mathlib.Data.Int.Basic

import GRWTSK.Topology.CombinatorialTopology.FiniteRasterReplacement.Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515.FiniteCutAndReplacement
/-!
# Finite digital surgery data

The operation here is exact replacement on a finite set of typed raster
cells.  It proves locality and reconstruction laws.  Topology-sensitive use is
represented by a provider-scoped `DigitalTopologySemantics` and a
`ControlledDigitalSurgery` checked against that one fixed provider.  The
provider is an explicit conditional capability: this module neither chooses a
canonical digital topology nor proves that a provider is mathematically
adequate.  No such record is promoted to smooth manifold surgery.
-/

namespace GRWTSK.Topology.CombinatorialTopology.FiniteRasterReplacement.Variantd682b033bfb58079

namespace BitMatrix.Surgery.Digital

open BitMatrix.Runtime.Semantics
open BitMatrix.Topology.Raster

/-- The explicitly chosen digital-neighbor convention. -/
inductive AdjacencyPolicy where
  | edge
  | vertex
  deriving DecidableEq, Repr

/-- Canonical mathematical denotation of the configured four- or
eight-neighbor policy. -/
def AdjacencyPolicy.Adjacent {rows columns : Nat}
    (policy : AdjacencyPolicy) (left right : GridCell rows columns) : Prop :=
  match policy with
  | .edge => EdgeAdjacent left right
  | .vertex => VertexAdjacent left right

instance adjacencyPolicyDecidable {rows columns : Nat}
    (policy : AdjacencyPolicy) (left right : GridCell rows columns) :
    Decidable (policy.Adjacent left right) := by
  cases policy <;> simp only [AdjacencyPolicy.Adjacent] <;> infer_instance

theorem AdjacencyPolicy.adjacent_symmetric {rows columns : Nat}
    (policy : AdjacencyPolicy) {left right : GridCell rows columns} :
    policy.Adjacent left right ↔ policy.Adjacent right left := by
  cases policy
  · exact edgeAdjacent_symmetric
  · exact vertexAdjacent_symmetric

theorem AdjacencyPolicy.not_adjacent_self {rows columns : Nat}
    (policy : AdjacencyPolicy) (cell : GridCell rows columns) :
    ¬ policy.Adjacent cell cell := by
  cases policy
  · exact not_edgeAdjacent_self cell
  · exact not_vertexAdjacent_self cell

namespace CutDatum

/-- The retained interface computed with an explicit digital-adjacency policy. -/
def adjacencyInterface {rows columns : Nat} (cut : CutDatum rows columns)
    (policy : AdjacencyPolicy) : Finset (GridCell rows columns) :=
  cut.exterior.filter fun outside =>
    ∃ inside ∈ cut.selected, policy.Adjacent outside inside

theorem adjacencyInterface_subset_exterior {rows columns : Nat}
    (cut : CutDatum rows columns) (policy : AdjacencyPolicy) :
    cut.adjacencyInterface policy ⊆ cut.exterior := by
  intro cell member
  exact (Finset.mem_filter.mp member).1

@[simp]
theorem adjacencyInterface_edge {rows columns : Nat}
    (cut : CutDatum rows columns) :
    cut.adjacencyInterface .edge = cut.exposedInterface :=
  rfl

end CutDatum

end BitMatrix.Surgery.Digital

end GRWTSK.Topology.CombinatorialTopology.FiniteRasterReplacement.Variantd682b033bfb58079
