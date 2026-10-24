# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Terrain.Variantf67244d3c7c48ffbf02839f18dd9038ab9f8848a2fe94fa49fc46dd8f9ca833c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da443447f255398dd296274eaa69469b6548dcd5` · SHA-256 `fc167ab81786844a4a949eac877a650d7ba1091f7b972f2e4677f86d9be351b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.GammaResolutionPolicy.Variant6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.GammaResolutionPolicy.Variant6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Universe/Terrain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Universe.Hypercube

/-!
# Finite active DAF terrain
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GammaResolutionPolicy.Variant6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1

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
