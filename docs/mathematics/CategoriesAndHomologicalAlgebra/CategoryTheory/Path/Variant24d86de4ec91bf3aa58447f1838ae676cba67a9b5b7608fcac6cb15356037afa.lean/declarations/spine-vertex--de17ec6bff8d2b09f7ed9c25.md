# spine_vertex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:541b27ed-b2b2-ecca-85e3-820b82d1c711",
  "kind": "lemma",
  "lexical_name": "spine_vertex",
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
  "slug": "spine-vertex--de17ec6bff8d2b09f7ed9c25",
  "source": {
    "blob": "03d1b5c9ebf0add768429e30b873fed73a5f2699",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 178,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant24d86de4ec91bf3aa58447f1838ae676cba67a9b5b7608fcac6cb15356037afa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de17ec6bff8d2b09f7ed9c2520f1805129390efb5f939f3da08aab4f709e54c2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant24d86de4ec91bf3aa58447f1838ae676cba67a9b5b7608fcac6cb15356037afa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:541b27ed-b2b2-ecca-85e3-820b82d1c711`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma spine_vertex (Δ : X _⦋m⦌ₙ₊₁) (i : Fin (m + 1)) :
    (X.spine m hₘ Δ).vertex i =
      X.map (tr (SimplexCategory.const ⦋0⦌ ⦋m⦌ i)).op Δ :=
  rfl

/- We write this lemma manually to ensure it refers to `Path.arrow`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant24d86de4ec91bf3aa58447f1838ae676cba67a9b5b7608fcac6cb15356037afa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant24d86de4ec91bf3aa58447f1838ae676cba67a9b5b7608fcac6cb15356037afa.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03d1b5c9ebf0add768429e30b873fed73a5f2699` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
