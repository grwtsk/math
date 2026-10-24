# carries_embedding_at

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9019322231f748ca4a2c69c7bead5d9a79334c5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5dff998f26b403a0643d34325280e114b565a6ab45d475c3ea86d924479db87f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6eb1b9b6-bda7-d98a-078c-d062884d35db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f03f7335-4f7e-0bb6-cce7-a61f5ebdcedf",
  "kind": "theorem",
  "lexical_name": "carries_embedding_at",
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
  "slug": "carries-embedding-at--32d71ca9ef0e7f0bd9f580c3",
  "source": {
    "blob": "9019322231f748ca4a2c69c7bead5d9a79334c5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 211,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AmbientIsotopyExtension/Variant5dff998f26b403a0643d34325280e114b565a6ab45d475c3ea86d924479db87f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32d71ca9ef0e7f0bd9f580c34fc9a48064e0b7f6d2c2ce1591e88326350fff06",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AmbientIsotopyExtension/Variant5dff998f26b403a0643d34325280e114b565a6ab45d475c3ea86d924479db87f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f03f7335-4f7e-0bb6-cce7-a61f5ebdcedf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem carries_embedding_at
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁)
    (t : A.Time) :
    A.CarriesEmbedding (A.ambientFamily h t) e₀ (A.framedEmbeddingAt h t) :=
  A.ambient_carries_embedding_at h t

/-- Support stays away from the old boundary at every time. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AmbientIsotopyExtension/Variant5dff998f26b403a0643d34325280e114b565a6ab45d475c3ea86d924479db87f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AmbientIsotopyExtension/Variant5dff998f26b403a0643d34325280e114b565a6ab45d475c3ea86d924479db87f.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9019322231f748ca4a2c69c7bead5d9a79334c5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
