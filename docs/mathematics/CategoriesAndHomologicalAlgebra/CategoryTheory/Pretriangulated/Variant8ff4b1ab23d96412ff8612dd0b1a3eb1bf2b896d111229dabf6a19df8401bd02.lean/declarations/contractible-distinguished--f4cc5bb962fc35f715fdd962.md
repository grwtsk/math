# contractible_distinguished

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2cbd4c6def0ee15a35071ea01a7d57f9b024f32",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8ff4b1ab23d96412ff8612dd0b1a3eb1bf2b896d111229dabf6a19df8401bd02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0176bb4c-b97a-a531-a84c-9c1c8fe163ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29818df6-6bd1-4b5b-9b6a-d5d952ded0a9",
  "kind": "lemma",
  "lexical_name": "contractible_distinguished",
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
  "slug": "contractible-distinguished--f4cc5bb962fc35f715fdd962",
  "source": {
    "blob": "d2cbd4c6def0ee15a35071ea01a7d57f9b024f32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 95,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant8ff4b1ab23d96412ff8612dd0b1a3eb1bf2b896d111229dabf6a19df8401bd02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4cc5bb962fc35f715fdd96233b800d0b1f6ba54b2c5b0a31f92f44a0242126e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant8ff4b1ab23d96412ff8612dd0b1a3eb1bf2b896d111229dabf6a19df8401bd02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29818df6-6bd1-4b5b-9b6a-d5d952ded0a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma contractible_distinguished (X : Cᵒᵖ) :
    contractibleTriangle X ∈ distinguishedTriangles C := by
  rw [mem_distinguishedTriangles_iff']
  exact ⟨_, inv_rot_of_distTriang _ (Pretriangulated.contractible_distinguished X.unop),
    ⟨contractibleTriangleIso X⟩⟩

/-- Isomorphism expressing a compatibility of the equivalence `triangleOpEquivalence C`
with the rotation of triangles. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant8ff4b1ab23d96412ff8612dd0b1a3eb1bf2b896d111229dabf6a19df8401bd02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant8ff4b1ab23d96412ff8612dd0b1a3eb1bf2b896d111229dabf6a19df8401bd02.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2cbd4c6def0ee15a35071ea01a7d57f9b024f32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
