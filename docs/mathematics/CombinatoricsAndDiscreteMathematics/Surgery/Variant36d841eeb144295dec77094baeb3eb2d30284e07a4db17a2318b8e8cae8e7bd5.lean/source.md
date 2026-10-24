# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Surgery.Variant36d841eeb144295dec77094baeb3eb2d30284e07a4db17a2318b8e8cae8e7bd5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c08cb2f7c4c0e018da4ca80b1b4c48b61a2f320` · SHA-256 `09fffd2c18ac70cd102cb6616df383a54af5829cedee702381078283fa00284f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SurgeryLayer.Variantcec70f168b012b5be96da641964879d6232733c39912dcfc3a3ba6b2ab37c929","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cec70f168b012b5be96da641964879d6232733c39912dcfc3a3ba6b2ab37c929","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SurgeryLayer.Variantcec70f168b012b5be96da641964879d6232733c39912dcfc3a3ba6b2ab37c929","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"cec70f168b012b5be96da641964879d6232733c39912dcfc3a3ba6b2ab37c929","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/DAF/Terrain/Surgery.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Terrain.AvalanchePartition
import DAF.Terrain.Legality
import DAF.Manifest

/-!
# Globally located terrain surgery

Here "surgery" means a typed replacement at one exact global locus.  It is not
a claim about smooth manifold surgery.  The terrain adapter carries concrete
pre/post adjacency, boundary, obstacle, and resource data and proves that every
vertex outside the locus is unchanged.  Overlay patches and changes to the
global generator ruleset are distinct constructors.  Reversibility requires
explicit rollback data; it is never inferred from the word `surgery`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SurgeryLayer.Variantcec70f168b012b5be96da641964879d6232733c39912dcfc3a3ba6b2ab37c929

universe u v

namespace DAF.Terrain

/-- The independently owned layers on which a globally located patch may act. -/
inductive SurgeryLayer
  | mathematicalObject
  | finiteState
  | cycleTransport
  | binaryMatrix
  | terrain
  | mesh
  | raster
  | fabricPresentation
  | prismaticRealization
  | integration
  | communicationIndex
  deriving DecidableEq, Repr

/-- One exact global locus with a stable external identifier. -/
structure GlobalSurgeryLocus
    {State : Type u} (G : KnownMaximalState State) where
  region : AbsoluteRegion G
  globalIdentifier : String

/-- Generic governance-neutral data shared by layer-specific surgery adapters. -/
structure SurgeryPatch
    {State : Type u} (G : KnownMaximalState State) where
  layer : SurgeryLayer
  locus : GlobalSurgeryLocus G
  beforeVersion : DAF.Version
  afterVersion : DAF.Version
  beforeRef : String
  afterRef : String
  boundaryRef : String
  outsideUnchanged : Prop
  outsideUnchanged_proof : outsideUnchanged
  boundaryCompatible : Prop
  boundaryCompatible_proof : boundaryCompatible
  rulesetCompatible : Prop
  rulesetCompatible_proof : rulesetCompatible
  unresolvedObligations : List String

/-- Overlaying fixed values and changing the total ruleset are different operations. -/
inductive TerrainSurgeryMode
  | overlay
  | rulesetRewrite
  deriving DecidableEq, Repr

/-- Typed rollback payload for a terrain-local patch. -/
structure TerrainRollback (V : Type v) [Fintype V] [DecidableEq V] where
  terrain : Terrain V
  boundary : BoundaryState V
  resources : ResourceState V

/-- A terrain replacement located in one fixed absolute coordinate frame. -/
structure TerrainSurgery
    {State : Type u} (G : KnownMaximalState State)
    (V : Type v) [Fintype V] [DecidableEq V] where
  patch : SurgeryPatch G
  isTerrainLayer : patch.layer = .terrain
  mode : TerrainSurgeryMode
  vertexGlobal : V ↪ G.Coord
  changedVertices : Finset V
  changed_inside_locus :
    letI := G.coordDecEq
    ∀ v, v ∈ changedVertices →
      vertexGlobal v ∈ patch.locus.region.coordinates
  beforeTerrain : Terrain V
  afterTerrain : Terrain V
  beforeBoundary : BoundaryState V
  afterBoundary : BoundaryState V
  beforeResources : ResourceState V
  afterResources : ResourceState V
  adjacency_outside_unchanged :
    letI := G.coordDecEq
    ∀ v, vertexGlobal v ∉ patch.locus.region.coordinates →
      afterTerrain.neighbors v = beforeTerrain.neighbors v
  boundary_outside_unchanged :
    letI := G.coordDecEq
    ∀ v, vertexGlobal v ∉ patch.locus.region.coordinates →
      (v ∈ afterBoundary.boundary ↔ v ∈ beforeBoundary.boundary) ∧
      (v ∈ afterBoundary.obstacles ↔ v ∈ beforeBoundary.obstacles)
  resources_outside_unchanged :
    letI := G.coordDecEq
    ∀ v, vertexGlobal v ∉ patch.locus.region.coordinates →
      afterResources.capacity v = beforeResources.capacity v ∧
      afterResources.permeability v = beforeResources.permeability v
  seamCompatible : Prop
  seamCompatible_proof : seamCompatible
  globalRulesetCompatible : Prop
  globalRulesetCompatible_proof : globalRulesetCompatible
  newLocalLegalityObligations : List String
  rollback : Option (TerrainRollback V)
  rollback_spec : ∀ data, rollback = some data →
    data.terrain = beforeTerrain ∧
    data.boundary = beforeBoundary ∧
    data.resources = beforeResources

namespace TerrainSurgery

variable {State : Type u} {G : KnownMaximalState State}
  {V : Type v} [Fintype V] [DecidableEq V]

theorem changed_vertex_has_global_locus (S : TerrainSurgery G V)
    {v : V} (hv : v ∈ S.changedVertices) :
    S.vertexGlobal v ∈ S.patch.locus.region.coordinates := by
  letI : DecidableEq G.Coord := G.coordDecEq
  exact S.changed_inside_locus v hv

theorem complement_adjacency_unchanged (S : TerrainSurgery G V)
    {v : V} (hv : S.vertexGlobal v ∉ S.patch.locus.region.coordinates) :
    S.afterTerrain.neighbors v = S.beforeTerrain.neighbors v := by
  letI : DecidableEq G.Coord := G.coordDecEq
  exact S.adjacency_outside_unchanged v hv

/-- A supplied rollback really contains the exact pre-surgery terrain state. -/
theorem rollback_recovers_before (S : TerrainSurgery G V)
    {data : TerrainRollback V} (h : S.rollback = some data) :
    data.terrain = S.beforeTerrain ∧
    data.boundary = S.beforeBoundary ∧
    data.resources = S.beforeResources :=
  S.rollback_spec data h

end TerrainSurgery

/-- A reversible terrain patch is one with explicit rollback data. -/
structure ReversibleTerrainSurgery
    {State : Type u} (G : KnownMaximalState State)
    (V : Type v) [Fintype V] [DecidableEq V] where
  surgery : TerrainSurgery G V
  rollbackData : TerrainRollback V
  rollback_present : surgery.rollback = some rollbackData

/-- Stable evidence that a layer-specific patch could not be extended globally. -/
structure SurgeryObstruction
    {State : Type u} (G : KnownMaximalState State) where
  locus : GlobalSurgeryLocus G
  layer : SurgeryLayer
  failedCondition : Prop
  witness : failedCondition
  obstructionIdentifier : String
  unresolvedObligations : List String

theorem overlay_ne_rulesetRewrite :
    TerrainSurgeryMode.overlay ≠ TerrainSurgeryMode.rulesetRewrite := by
  decide

end DAF.Terrain
```
