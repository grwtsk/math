# smallCategoryFinalModel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56a32a3f80bf2eabc0ec5882427bb26d25384e7329c4fd01353ce90eda9035b3",
  "kind": "instance",
  "lexical_name": "smallCategoryFinalModel",
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
  "slug": "smallcategoryfinalmodel--45c9feef5e099563fa36f2f2",
  "source": {
    "blob": "0d9f164e36af4cf1916e3e22c1f10fc685962de2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 51,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45c9feef5e099563fa36f2f2700620a4243cd4d6a375d0426a9cd09e7397df6a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56a32a3f80bf2eabc0ec5882427bb26d25384e7329c4fd01353ce90eda9035b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance smallCategoryFinalModel [FinallySmall.{w} J] :
    SmallCategory (FinalModel J) :=
  Classical.choose (Classical.choose_spec (@FinallySmall.final_smallCategory J _ _))

/-- An arbitrarily chosen final functor `FinalModel J ⥤ J`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d9f164e36af4cf1916e3e22c1f10fc685962de2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
