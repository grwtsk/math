# vertexCoordinate_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "19a038bf60ad42ec5b1095996a14e6c3d28c78c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5a91cc728d206e7328607955ed229d0f837bede3c5662a0a1b14d5489c4bc5f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30ccd1e3-134f-2361-cd3e-ff6155aecb71",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca71b7aa-62ac-7463-c658-41ebf61829f0",
  "kind": "theorem",
  "lexical_name": "vertexCoordinate_injective",
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
  "slug": "vertexcoordinate-injective--9f135a2b00f4d089adbb6ee7",
  "source": {
    "blob": "19a038bf60ad42ec5b1095996a14e6c3d28c78c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 44,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RasterBridge/Varianta5a91cc728d206e7328607955ed229d0f837bede3c5662a0a1b14d5489c4bc5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f135a2b00f4d089adbb6ee7cbc2d0d0719a02676f0a5a2d4e38460888bf8983",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RasterBridge/Varianta5a91cc728d206e7328607955ed229d0f837bede3c5662a0a1b14d5489c4bc5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca71b7aa-62ac-7463-c658-41ebf61829f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vertexCoordinate_injective
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
    (bridge : RasterSourceBridge terrain raster) :
    Function.Injective bridge.vertexCoordinate :=
  bridge.vertexCoordinate.injective

/-- The exact raster/source realization square supplied by the bridge. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RasterBridge/Varianta5a91cc728d206e7328607955ed229d0f837bede3c5662a0a1b14d5489c4bc5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RasterBridge/Varianta5a91cc728d206e7328607955ed229d0f837bede3c5662a0a1b14d5489c4bc5f.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19a038bf60ad42ec5b1095996a14e6c3d28c78c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
