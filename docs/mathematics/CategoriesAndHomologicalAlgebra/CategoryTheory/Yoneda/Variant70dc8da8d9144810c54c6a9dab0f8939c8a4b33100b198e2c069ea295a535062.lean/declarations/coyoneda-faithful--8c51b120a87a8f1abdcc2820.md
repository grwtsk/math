# coyoneda_faithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34dee4e70d7b11c1345e2380dcbce0c9473173daecb20618b26e7f2fa6014f3a",
  "kind": "instance",
  "lexical_name": "coyoneda_faithful",
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
  "slug": "coyoneda-faithful--8c51b120a87a8f1abdcc2820",
  "source": {
    "blob": "0c52b8b6c7dcfd34a99a67297f6ac4ad565bdab8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 226,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant70dc8da8d9144810c54c6a9dab0f8939c8a4b33100b198e2c069ea295a535062.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c51b120a87a8f1abdcc2820f4c20c4da107375f899b936bd7a9ea26647776d7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant70dc8da8d9144810c54c6a9dab0f8939c8a4b33100b198e2c069ea295a535062.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34dee4e70d7b11c1345e2380dcbce0c9473173daecb20618b26e7f2fa6014f3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
instance coyoneda_faithful : (coyoneda : Cᵒᵖ ⥤ C ⥤ Type v₁).Faithful :=
  fullyFaithful.faithful

/-- Extensionality via Coyoneda. The typical usage would be
```
-- Goal is `X ≅ Y`
apply Coyoneda.ext
-- Goals are now functions `(X ⟶ Z) → (Y ⟶ Z)`, `(Y ⟶ Z) → (X ⟶ Z)`, and the fact that these
-- functions are inverses and natural in `Z`.
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant70dc8da8d9144810c54c6a9dab0f8939c8a4b33100b198e2c069ea295a535062.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant70dc8da8d9144810c54c6a9dab0f8939c8a4b33100b198e2c069ea295a535062.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c52b8b6c7dcfd34a99a67297f6ac4ad565bdab8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
