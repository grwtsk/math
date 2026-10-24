# interpolate_on_cell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f82078c6-e4fb-9df0-be80-d85965f06276",
  "kind": "theorem",
  "lexical_name": "interpolate_on_cell",
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
  "slug": "interpolate-on-cell--e560479cae5fead935920640",
  "source": {
    "blob": "1a091455720fbbd9e94371c4971b6e91356bb1a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 108,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousRaster/Variant3c6c8c5114455e1467c0834bb33826f0e31f1500ae4aaca9842cf3564ee524a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e560479cae5fead935920640e2dd507d9e944a584288916a8ad97c3bcff6c07f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousRaster/Variant3c6c8c5114455e1467c0834bb33826f0e31f1500ae4aaca9842cf3564ee524a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f82078c6-e4fb-9df0-be80-d85965f06276`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interpolate_on_cell
    (raster : ContinuousTerrainRaster mesh charge)
    {c : M.CellId}
    (hc : c ∈ mesh.activeCells)
    {p : M.Point}
    (hp : p ∈ M.cellCarrier c)
    (i : Fin charge.channels) :
    raster.field (M.cellPoint (mesh.activeCell_mem hc) hp) i =
      ∑ v ∈ mesh.cellVertices c,
        mesh.interpolationWeight c p v *
          raster.field ⟨M.vertexPoint v, M.vertex_mem v⟩ i :=
  raster.cellwiseInterpolation c hc p hp i

end ContinuousTerrainRaster

end DAF.Geometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousRaster/Variant3c6c8c5114455e1467c0834bb33826f0e31f1500ae4aaca9842cf3564ee524a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousRaster/Variant3c6c8c5114455e1467c0834bb33826f0e31f1500ae4aaca9842cf3564ee524a4.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a091455720fbbd9e94371c4971b6e91356bb1a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
