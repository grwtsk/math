# realization_commutes_at_vertex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ac450e2-2e47-1b14-f4dc-699f56c99158",
  "kind": "theorem",
  "lexical_name": "realization_commutes_at_vertex",
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
  "slug": "realization-commutes-at-vertex--ca197fdd56ec9248ac4f929f",
  "source": {
    "blob": "0d1255ddf24b926ec1e1797b6fec50f98d0856f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 70,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RasterBridge/Variante321de7f1c7816866e1368f9a3d45cc04318f304c90f9d6b9a4921a79ee3759c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca197fdd56ec9248ac4f929f3deaeaae201cf67f1f17bdc6608533dd9f1d8a3e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RasterBridge/Variante321de7f1c7816866e1368f9a3d45cc04318f304c90f9d6b9a4921a79ee3759c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ac450e2-2e47-1b14-f4dc-699f56c99158`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realization_commutes_at_vertex
    {State : Type uState}
    {G : DAF.Terrain.KnownMaximalState State}
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    {terrain : TerrainSourceRealization G F P}
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    {carrier : DAF.Geometry.GeometricPrismCarrier V}
    {mesh : DAF.Geometry.PrismMesh carrier}
    {charge : DAF.Terrain.BinaryVertexCharge V}
    {raster : DAF.Geometry.ContinuousTerrainRaster mesh charge}
    (bridge : RasterSourceBridge terrain raster)
    (v : V) :
    bridge.rasterRepresentation
        (fun i ↦ raster.field
          ⟨carrier.vertexPoint v, carrier.vertex_mem v⟩ i) =
      terrain.source.cellCorrespondence
        (terrain.cellAt (bridge.vertexCoordinate v)).2 :=
  bridge.vertexSquare v

end RasterSourceBridge

end DAF.Prismatic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RasterBridge/Variante321de7f1c7816866e1368f9a3d45cc04318f304c90f9d6b9a4921a79ee3759c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RasterBridge/Variante321de7f1c7816866e1368f9a3d45cc04318f304c90f9d6b9a4921a79ee3759c.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d1255ddf24b926ec1e1797b6fec50f98d0856f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
