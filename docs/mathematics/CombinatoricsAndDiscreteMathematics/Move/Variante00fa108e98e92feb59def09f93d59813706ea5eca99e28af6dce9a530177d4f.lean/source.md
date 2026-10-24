# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Move.Variante00fa108e98e92feb59def09f93d59813706ea5eca99e28af6dce9a530177d4f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64cfdaab3257b1993c7ceaa99c69f3e6791f372c` · SHA-256 `20acffb175622324f48cd2b5944c5c35300217eabcaa883801b8f3b8839075c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TerrainMoveKind.Variant01792d95df196ff0088667c5362b6a1dfdc87dfe7bd60bb07ea2287f9aad041a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"01792d95df196ff0088667c5362b6a1dfdc87dfe7bd60bb07ea2287f9aad041a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TerrainMoveKind.Variant01792d95df196ff0088667c5362b6a1dfdc87dfe7bd60bb07ea2287f9aad041a","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"01792d95df196ff0088667c5362b6a1dfdc87dfe7bd60bb07ea2287f9aad041a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Terrain/Move.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Terrain.Boundary

/-!
# Globally located terrain moves

A terrain move identifies endpoints and an exact global locus, while retaining
before/after boundary and resource states.  This is declarative move data, not
yet a certificate of complete cross-domain legality.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TerrainMoveKind.Variant01792d95df196ff0088667c5362b6a1dfdc87dfe7bd60bb07ea2287f9aad041a

universe u v

namespace DAF.Terrain

inductive TerrainMoveKind
  | transfer
  | boundaryUpdate
  | obstacleUpdate
  | adjacencyUpdate
  | localReplacement
  deriving DecidableEq, Repr

/-- One finite move located inside a fixed maximal coordinate frame. -/
structure TerrainMove {State : Type u} (G : KnownMaximalState State)
    (V : Type v) [Fintype V] [DecidableEq V] where
  kind : TerrainMoveKind
  source : V
  target : V
  locus : AbsoluteRegion G
  vertexGlobal : V ↪ G.Coord
  source_in_locus :
    letI := G.coordDecEq
    vertexGlobal source ∈ locus.coordinates
  target_in_locus :
    letI := G.coordDecEq
    vertexGlobal target ∈ locus.coordinates
  beforeTerrain : Terrain V
  afterTerrain : Terrain V
  beforeBoundary : BoundaryState V
  afterBoundary : BoundaryState V
  beforeResources : ResourceState V
  afterResources : ResourceState V
  movedAmount : Real

namespace TerrainMove

variable {State : Type u} {G : KnownMaximalState State}
  {V : Type v} [Fintype V] [DecidableEq V]

theorem endpoints_have_absolute_loci (M : TerrainMove G V) :
    letI := G.coordDecEq
    M.vertexGlobal M.source ∈ M.locus.coordinates ∧
      M.vertexGlobal M.target ∈ M.locus.coordinates := by
  letI := G.coordDecEq
  exact ⟨M.source_in_locus, M.target_in_locus⟩

end TerrainMove

end DAF.Terrain
```
