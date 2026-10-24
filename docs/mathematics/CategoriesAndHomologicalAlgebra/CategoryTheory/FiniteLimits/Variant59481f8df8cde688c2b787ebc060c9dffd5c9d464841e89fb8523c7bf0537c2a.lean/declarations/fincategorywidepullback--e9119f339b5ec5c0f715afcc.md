# finCategoryWidePullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf0b365e53a5f97dd6f61eef23e870e62f0e1cd32a2b453c63b11640f599fb21",
  "kind": "instance",
  "lexical_name": "finCategoryWidePullback",
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
  "slug": "fincategorywidepullback--e9119f339b5ec5c0f715afcc",
  "source": {
    "blob": "17df89ef677ad838c18d115768571f1f8642804d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 222,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9119f339b5ec5c0f715afcc2eeb7bb561698f408c9b93155d061127e5f43418",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf0b365e53a5f97dd6f61eef23e870e62f0e1cd32a2b453c63b11640f599fb21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance finCategoryWidePullback [Fintype J] : FinCategory (WidePullbackShape J) where
  fintypeHom := WidePullbackShape.fintypeHom
#align category_theory.limits.fin_category_wide_pullback CategoryTheory.Limits.finCategoryWidePullback

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17df89ef677ad838c18d115768571f1f8642804d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
