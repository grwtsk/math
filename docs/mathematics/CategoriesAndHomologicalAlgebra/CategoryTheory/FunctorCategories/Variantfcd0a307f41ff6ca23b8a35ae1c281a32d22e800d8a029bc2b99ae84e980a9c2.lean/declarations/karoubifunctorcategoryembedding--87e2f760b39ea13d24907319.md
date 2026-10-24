# karoubiFunctorCategoryEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df6fe1514d989ee21e9d4921128b21a5a85c9b306864737359d5704c9e5669a5",
  "kind": "def",
  "lexical_name": "karoubiFunctorCategoryEmbedding",
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
  "slug": "karoubifunctorcategoryembedding--87e2f760b39ea13d24907319",
  "source": {
    "blob": "1f98d555003d064430fc6d76904a6182d41f0149",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 117,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variantfcd0a307f41ff6ca23b8a35ae1c281a32d22e800d8a029bc2b99ae84e980a9c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87e2f760b39ea13d249073194396663c1063146e21dfb0676d81db6edd5c92aa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variantfcd0a307f41ff6ca23b8a35ae1c281a32d22e800d8a029bc2b99ae84e980a9c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df6fe1514d989ee21e9d4921128b21a5a85c9b306864737359d5704c9e5669a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def karoubiFunctorCategoryEmbedding : Karoubi (J ⥤ C) ⥤ J ⥤ Karoubi C where
  obj := KaroubiFunctorCategoryEmbedding.obj
  map := KaroubiFunctorCategoryEmbedding.map
#align category_theory.idempotents.karoubi_functor_category_embedding CategoryTheory.Idempotents.karoubiFunctorCategoryEmbedding

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variantfcd0a307f41ff6ca23b8a35ae1c281a32d22e800d8a029bc2b99ae84e980a9c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variantfcd0a307f41ff6ca23b8a35ae1c281a32d22e800d8a029bc2b99ae84e980a9c2.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f98d555003d064430fc6d76904a6182d41f0149` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
