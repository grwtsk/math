# Complete source: GRWTSK.Topology.CombinatorialTopology.FiniteRasterReplacement.Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515.ProviderScopedTopologyObligations

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed70dbb69dc8d2aab029ee38c60787d9c948f55b` · SHA-256 `82a18b16cfdc257f2f8295e5503db8bb3d37ef672ebc6109051e83c60308f77d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
PMD: 510.4.070 combinatorial topology
Source mathematics, hypotheses, namespaces, imports and proof text remain source copies.
Comments may differ from the established source; all exact versions remain archived.
Uncompiled; no Lean/Lake, public umbrella admission, proof acceptance or authorship determination.
-/

import BitMatrix.Topology.RasterCubicalComplex
import Mathlib.Data.Int.Basic

import GRWTSK.Topology.CombinatorialTopology.FiniteRasterReplacement.Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515.FiniteCutAndReplacement
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.Adjacency.FiniteRasterReplacement.Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515.AdjacencyPoliciesAndInterfaces
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

/--
A named provider of the topology-sensitive semantics needed to interpret a
finite raster replacement.  Each predicate is a function of the actual cut,
repair, or resulting state; individual surgery records cannot substitute an
unrelated proposition or unrelated Betti functions.

This structure is a conditional interface.  Supplying a value is not, by
itself, evidence that the chosen digital topology agrees with a smooth or
cubical-manifold theory.
-/
structure DigitalTopologySemantics (rows columns : Nat) where
  incidenceMap :
    AdjacencyPolicy → AdjacencyPolicy →
      Cell rows columns → Finset (Cell rows columns)
  incidenceLowersDimension :
    ∀ foreground background cell face,
      face ∈ incidenceMap foreground background cell →
        face.dimension < cell.dimension
  linkCondition :
    (foreground background : AdjacencyPolicy) →
      (cut : CutDatum rows columns) → Repair cut → Prop
  betti :
    AdjacencyPolicy → AdjacencyPolicy →
      RasterState rows columns → Nat → Nat
  exactCarrierCompatible :
    (foreground background : AdjacencyPolicy) →
      (cut : CutDatum rows columns) → Repair cut → Prop
  cubicalManifold :
    AdjacencyPolicy → AdjacencyPolicy → RasterState rows columns → Prop

/--
Proof-carrying obligations for calling a finite replacement *controlled
digital surgery*.  All topology-sensitive propositions are selected once by
the explicit semantics provider and are applied to the record's actual cut,
repair, and post-repair state.  Merely constructing `Repair` supplies none of
their evidence.
-/
structure ControlledDigitalSurgery {rows columns : Nat}
    (semantics : DigitalTopologySemantics rows columns)
    (cut : CutDatum rows columns) where
  repair : Repair cut
  foregroundAdjacency : AdjacencyPolicy
  backgroundAdjacency : AdjacencyPolicy
  adjacencyCompatible : foregroundAdjacency ≠ backgroundAdjacency
  linkConditionEvidence :
    semantics.linkCondition foregroundAdjacency backgroundAdjacency cut repair
  expectedBettiDelta : Nat → Int
  bettiDeltaVerified : ∀ degree,
    Int.ofNat
        (semantics.betti foregroundAdjacency backgroundAdjacency repair.apply degree) -
      Int.ofNat
        (semantics.betti foregroundAdjacency backgroundAdjacency cut.source degree) =
      expectedBettiDelta degree
  exactCarrierEvidence :
    semantics.exactCarrierCompatible
      foregroundAdjacency backgroundAdjacency cut repair
  cubicalManifoldEvidence :
    semantics.cubicalManifold
      foregroundAdjacency backgroundAdjacency repair.apply

namespace ControlledDigitalSurgery

/-- Every controlled surgery retains the unconditional finite locality law. -/
theorem changes_only_selected {rows columns : Nat}
    {semantics : DigitalTopologySemantics rows columns}
    {cut : CutDatum rows columns}
    (surgery : ControlledDigitalSurgery semantics cut) :
    surgery.repair.changeSupport ⊆ cut.selected :=
  surgery.repair.changeSupport_subset_selected

/-- Added cells are computed from the pre/post states and cannot be supplied
independently by a caller. -/
theorem added_only_selected {rows columns : Nat}
    {semantics : DigitalTopologySemantics rows columns}
    {cut : CutDatum rows columns}
    (surgery : ControlledDigitalSurgery semantics cut) :
    surgery.repair.addedCells ⊆ cut.selected :=
  surgery.repair.addedCells_subset_selected

/-- Deleted cells are computed from the pre/post states and cannot be supplied
independently by a caller. -/
theorem deleted_only_selected {rows columns : Nat}
    {semantics : DigitalTopologySemantics rows columns}
    {cut : CutDatum rows columns}
    (surgery : ControlledDigitalSurgery semantics cut) :
    surgery.repair.deletedCells ⊆ cut.selected :=
  surgery.repair.deletedCells_subset_selected

end ControlledDigitalSurgery

end BitMatrix.Surgery.Digital

end GRWTSK.Topology.CombinatorialTopology.FiniteRasterReplacement.Variantd682b033bfb58079
```
