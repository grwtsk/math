# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Terrain.Variant6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `183d4702bedfdf5005143f2a8562a3d38b910b85` · SHA-256 `6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Universe.Hypercube

/-!
# Finite active DAF terrain
-/

namespace DAF.Universe

/-- Bounded query policy.  `GammaResolutionPolicy` is unrelated to the
archimedean Gamma function. -/
structure GammaResolutionPolicy where
  dependencyRadius : Nat
  reverseDependencyRadius : Nat
  conceptRadius : Nat
  maximumCellDimension : Nat
  foldTraversalDepth : Nat
  spectralCutoff : Nat
  diffusionNumerator : Nat
  diffusionDenominator : Nat
  diffusionDenominator_pos : 0 < diffusionDenominator
  maximumActiveNodeCount : Nat
  deriving Repr

/-- Closure of a selected finite terrain under its declared edge and cell
references. -/
def ActiveTerrainClosed
    (manifest : UniverseManifest)
    (nodes : Finset TerrainNodeId)
    (edges : Finset TerrainEdgeId)
    (cells : Finset TerrainCellId) : Prop :=
  (∀ nodeId ∈ nodes, manifest.HasNode nodeId) ∧
  (∀ edgeId ∈ edges,
      ∃ edge ∈ manifest.edges,
        edge.id = edgeId ∧ edge.source ∈ nodes ∧ edge.target ∈ nodes) ∧
  (∀ cellId ∈ cells,
      ∃ cell ∈ manifest.higherCells,
        cell.id = cellId ∧ cell.boundaryEdges ⊆ edges)

/-- Version-one queries always operate on a finite manifest subcomplex. -/
structure ActiveTerrain (manifest : UniverseManifest) where
  snapshot : SnapshotId
  snapshot_eq : snapshot = manifest.snapshotId
  nodes : Finset TerrainNodeId
  edges : Finset TerrainEdgeId
  cells : Finset TerrainCellId
  closed : ActiveTerrainClosed manifest nodes edges cells

namespace ActiveTerrain

theorem node_resolves
    {manifest : UniverseManifest}
    (terrain : ActiveTerrain manifest)
    {nodeId : TerrainNodeId}
    (membership : nodeId ∈ terrain.nodes) :
    manifest.HasNode nodeId :=
  terrain.closed.1 nodeId membership

theorem edge_endpoints_active
    {manifest : UniverseManifest}
    (terrain : ActiveTerrain manifest)
    {edgeId : TerrainEdgeId}
    (membership : edgeId ∈ terrain.edges) :
    ∃ edge ∈ manifest.edges,
      edge.id = edgeId ∧
      edge.source ∈ terrain.nodes ∧
      edge.target ∈ terrain.nodes :=
  terrain.closed.2.1 edgeId membership

end ActiveTerrain

/-- Exact address of one face in a theorem or declaration cell. -/
structure CellFaceAddress where
  cell : TerrainCellId
  axis : StableId
  value : Bool
  deriving DecidableEq, Repr

/-- A finite oriented path in the terrain with an explicit edge relation. -/
structure TerrainChain where
  nodes : List TerrainNodeId
  edges : List TerrainEdgeId
  nonempty : nodes ≠ []
  edgeCount : edges.length + 1 = nodes.length

/-- One stable anchor used by a reasoning claim. -/
structure TerrainAnchor where
  node : TerrainNodeId
  face : Option CellFaceAddress
  deriving DecidableEq, Repr

end DAF.Universe
```
