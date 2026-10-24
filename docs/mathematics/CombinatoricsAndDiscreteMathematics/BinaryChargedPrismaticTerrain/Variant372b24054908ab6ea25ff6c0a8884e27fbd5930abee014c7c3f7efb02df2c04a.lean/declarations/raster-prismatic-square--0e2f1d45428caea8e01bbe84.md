# raster_prismatic_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fddac9a54ac8f6815bdb3d8dc874b9abc09bc08b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/372b24054908ab6ea25ff6c0a8884e27fbd5930abee014c7c3f7efb02df2c04a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a03ec986-a75d-26a1-7af7-90c678a6970d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43a60750-ccf8-608c-c6a4-43ac89c56fc2",
  "kind": "theorem",
  "lexical_name": "raster_prismatic_square",
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
  "slug": "raster-prismatic-square--0e2f1d45428caea8e01bbe84",
  "source": {
    "blob": "fddac9a54ac8f6815bdb3d8dc874b9abc09bc08b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 125,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryChargedPrismaticTerrain/Variant372b24054908ab6ea25ff6c0a8884e27fbd5930abee014c7c3f7efb02df2c04a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e2f1d45428caea8e01bbe84a7dc5960efe108a380c0a6381bbc68c2b8ba0f93",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BinaryChargedPrismaticTerrain/Variant372b24054908ab6ea25ff6c0a8884e27fbd5930abee014c7c3f7efb02df2c04a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43a60750-ccf8-608c-c6a4-43ac89c56fc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem raster_prismatic_square
    (T : BinaryChargedPrismaticTerrain G V carrier mesh F P)
    (v : V) :
    T.bridge.rasterRepresentation
        (fun i ↦ T.raster.field
          ⟨carrier.vertexPoint v, carrier.vertex_mem v⟩ i) =
      T.source.source.cellCorrespondence
        (T.source.cellAt (T.bridge.vertexCoordinate v)).2 :=
  T.bridge.realization_commutes_at_vertex v

/-- Vertex-to-global placement is exact and injective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BinaryChargedPrismaticTerrain/Variant372b24054908ab6ea25ff6c0a8884e27fbd5930abee014c7c3f7efb02df2c04a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryChargedPrismaticTerrain/Variant372b24054908ab6ea25ff6c0a8884e27fbd5930abee014c7c3f7efb02df2c04a.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fddac9a54ac8f6815bdb3d8dc874b9abc09bc08b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
