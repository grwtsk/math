# comp_comparison_forget_hasLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63396dac1912525cb6eddd607122ed197ca217fc57c2711517be4d5011e1f188",
  "kind": "instance",
  "lexical_name": "comp_comparison_forget_hasLimit",
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
  "slug": "comp-comparison-forget-haslimit--110379427218cda533247751",
  "source": {
    "blob": "8b002b83f180d6d7a2cda941746d7da8db92ba09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 285,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:110379427218cda533247751bf1b369d19bc930541e96ee9e7b9763e49d08eab",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63396dac1912525cb6eddd607122ed197ca217fc57c2711517be4d5011e1f188`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance comp_comparison_forget_hasLimit (F : J ⥤ D) (R : D ⥤ C) [MonadicRightAdjoint R]
    [HasLimit (F ⋙ R)] :
    HasLimit ((F ⋙ Monad.comparison (Adjunction.ofRightAdjoint R)) ⋙ Monad.forget _) :=
  @hasLimitOfIso _ _ _ _ (F ⋙ R) _ _
    (isoWhiskerLeft F (Monad.comparisonForget (Adjunction.ofRightAdjoint R)).symm)
#align category_theory.comp_comparison_forget_has_limit CategoryTheory.comp_comparison_forget_hasLimit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant887209488471f348a13ce2780b157984e69fe4e6bcb62b4ae527e89fb9ebed70.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b002b83f180d6d7a2cda941746d7da8db92ba09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
