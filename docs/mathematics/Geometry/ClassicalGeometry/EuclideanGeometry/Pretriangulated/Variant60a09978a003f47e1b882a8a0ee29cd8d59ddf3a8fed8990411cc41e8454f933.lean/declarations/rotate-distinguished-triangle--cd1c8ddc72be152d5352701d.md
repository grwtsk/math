# rotate_distinguished_triangle'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85878911211140df9f83db3e6c6f88c76e3d1d2d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 444,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1492f35b-9c01-94de-b8ef-1232dcf38bf7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e142eca1-e34e-41f2-8142-c08e81500576",
  "kind": "lemma",
  "lexical_name": "rotate_distinguished_triangle'",
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
  "slug": "rotate-distinguished-triangle--cd1c8ddc72be152d5352701d",
  "source": {
    "blob": "85878911211140df9f83db3e6c6f88c76e3d1d2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 444,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd1c8ddc72be152d5352701dd49162267e9f55854998ac4408b1e383f7d7d9e0",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e142eca1-e34e-41f2-8142-c08e81500576`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 444–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rotate_distinguished_triangle' (T : Triangle (HomotopyCategory C (ComplexShape.up ℤ)))
    (hT : T ∈ distinguishedTriangles C) : T.rotate ∈ distinguishedTriangles C := by
  obtain ⟨K, L, φ, ⟨e⟩⟩ := hT
  exact ⟨_, _, _, ⟨(rotate _).mapIso e ≪≫ CochainComplex.mappingCone.rotateTrianglehIso φ⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean#L444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85878911211140df9f83db3e6c6f88c76e3d1d2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
