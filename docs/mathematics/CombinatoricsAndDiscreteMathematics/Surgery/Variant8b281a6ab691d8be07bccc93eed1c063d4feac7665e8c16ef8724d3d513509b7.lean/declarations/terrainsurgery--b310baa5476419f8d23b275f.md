# TerrainSurgery

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86e98caece33854cdcd42e68a71e3b4573e88a6e17dfc3fa7957f3bafdcc6fc2",
  "kind": "structure",
  "lexical_name": "TerrainSurgery",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "terrainsurgery--b310baa5476419f8d23b275f",
  "source": {
    "blob": "dcd0d66e6ad020f2e0077757e33a8db18d5897b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 72,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Surgery/Variant8b281a6ab691d8be07bccc93eed1c063d4feac7665e8c16ef8724d3d513509b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b310baa5476419f8d23b275f8b0d4ce99f887dee4090c22283bc876bf83e61f2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Surgery/Variant8b281a6ab691d8be07bccc93eed1c063d4feac7665e8c16ef8724d3d513509b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86e98caece33854cdcd42e68a71e3b4573e88a6e17dfc3fa7957f3bafdcc6fc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Surgery/Variant8b281a6ab691d8be07bccc93eed1c063d4feac7665e8c16ef8724d3d513509b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Surgery/Variant8b281a6ab691d8be07bccc93eed1c063d4feac7665e8c16ef8724d3d513509b7.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcd0d66e6ad020f2e0077757e33a8db18d5897b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
