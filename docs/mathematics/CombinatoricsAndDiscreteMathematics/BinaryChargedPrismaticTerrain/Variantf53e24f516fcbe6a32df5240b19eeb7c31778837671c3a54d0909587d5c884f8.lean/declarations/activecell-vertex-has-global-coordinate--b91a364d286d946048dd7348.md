# activeCell_vertex_has_global_coordinate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19cb3ac3-a0f1-ad02-0c7a-fb34a0c24f4d",
  "kind": "theorem",
  "lexical_name": "activeCell_vertex_has_global_coordinate",
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
  "slug": "activecell-vertex-has-global-coordinate--b91a364d286d946048dd7348",
  "source": {
    "blob": "73ee51bafe0e6843363e6952a893c412fc6c67fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 113,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryChargedPrismaticTerrain/Variantf53e24f516fcbe6a32df5240b19eeb7c31778837671c3a54d0909587d5c884f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b91a364d286d946048dd7348cee862ebe54df2cc2a04832a2f5238e8fd2019f6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BinaryChargedPrismaticTerrain/Variantf53e24f516fcbe6a32df5240b19eeb7c31778837671c3a54d0909587d5c884f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19cb3ac3-a0f1-ad02-0c7a-fb34a0c24f4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem activeCell_vertex_has_global_coordinate
    (T : BinaryChargedPrismaticTerrain G V carrier mesh F P)
    (cell : mesh.ActiveCell)
    {v : V}
    (hv : v ∈ mesh.cellVertices cell.1) :
    T.bridge.vertexCoordinate v ∈
      (T.activeCellGlobalLocus cell).coordinates :=
  T.cellAbsolutePlacement.locus_coordinates cell ▸
    Finset.mem_map_of_mem T.bridge.vertexCoordinate hv

/-- Embedded vertices retain their exact one-bit charge in the raster. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BinaryChargedPrismaticTerrain/Variantf53e24f516fcbe6a32df5240b19eeb7c31778837671c3a54d0909587d5c884f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryChargedPrismaticTerrain/Variantf53e24f516fcbe6a32df5240b19eeb7c31778837671c3a54d0909587d5c884f8.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73ee51bafe0e6843363e6952a893c412fc6c67fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
