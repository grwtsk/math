# Functor.preservesProjectiveObjects_of_adjunction_of_preservesEpimorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0d3eebe558c6163493fb6ea9c7fc748cb49b512",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e03705b-93b6-f75d-d85b-e707d77fccdc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b98908f-5bc0-86db-ff5b-dbc9f749b06c",
  "kind": "theorem",
  "lexical_name": "Functor.preservesProjectiveObjects_of_adjunction_of_preservesEpimorphisms",
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
  "slug": "functor-preservesprojectiveobjects-of-adjunction-of-preservesepimorphism--3fb15ce567bb7fde430fc86b",
  "source": {
    "blob": "b0d3eebe558c6163493fb6ea9c7fc748cb49b512",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 45,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fb15ce567bb7fde430fc86baa6af40117526eed82c328ab9f153a8cd32a4743",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b98908f-5bc0-86db-ff5b-dbc9f749b06c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Functor.preservesProjectiveObjects_of_adjunction_of_preservesEpimorphisms
    {F : C ⥤ D} {G : D ⥤ C} (adj : F ⊣ G) [G.PreservesEpimorphisms] :
    F.PreservesProjectiveObjects where
  projective_obj h := adj.map_projective _ h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0d3eebe558c6163493fb6ea9c7fc748cb49b512` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
