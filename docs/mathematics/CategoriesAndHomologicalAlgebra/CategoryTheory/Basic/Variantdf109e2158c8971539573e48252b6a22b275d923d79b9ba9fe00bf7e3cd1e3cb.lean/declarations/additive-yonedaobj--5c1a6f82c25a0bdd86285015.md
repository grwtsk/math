# additive_yonedaObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc9a324d26b67bec599a7d0caa3057f644ec0e2567ec5b542f9d6023b62847cf",
  "kind": "instance",
  "lexical_name": "additive_yonedaObj",
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
  "slug": "additive-yonedaobj--5c1a6f82c25a0bdd86285015",
  "source": {
    "blob": "be40033c8a984488535b040b2d7d09b7246d9d08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 106,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c1a6f82c25a0bdd86285015e2a24fae5ea2c7fbf1b65ba7340a815d74006cd1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc9a324d26b67bec599a7d0caa3057f644ec0e2567ec5b542f9d6023b62847cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance additive_yonedaObj (X : C) : Functor.Additive (preadditiveYonedaObj X) where
#align category_theory.additive_yoneda_obj CategoryTheory.additive_yonedaObj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be40033c8a984488535b040b2d7d09b7246d9d08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
