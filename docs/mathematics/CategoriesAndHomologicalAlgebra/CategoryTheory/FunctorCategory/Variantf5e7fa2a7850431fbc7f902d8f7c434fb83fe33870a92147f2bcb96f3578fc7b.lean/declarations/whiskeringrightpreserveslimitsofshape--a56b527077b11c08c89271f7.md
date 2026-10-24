# whiskeringRightPreservesLimitsOfShape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc2a1584df039987c844b2c93755a8e8376f9d363432f59f39d02b382cb8de69",
  "kind": "instance",
  "lexical_name": "whiskeringRightPreservesLimitsOfShape",
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
  "slug": "whiskeringrightpreserveslimitsofshape--a56b527077b11c08c89271f7",
  "source": {
    "blob": "577d126e7630208808a43f1756e7c40928e9ab0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 97,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5e7fa2a7850431fbc7f902d8f7c434fb83fe33870a92147f2bcb96f3578fc7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a56b527077b11c08c89271f7636ab7f22397671ec72a34285b78d001468c9798",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5e7fa2a7850431fbc7f902d8f7c434fb83fe33870a92147f2bcb96f3578fc7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc2a1584df039987c844b2c93755a8e8376f9d363432f59f39d02b382cb8de69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance whiskeringRightPreservesLimitsOfShape {C : Type u} [Category C] {D : Type*}
    [Category.{u} D] {E : Type*} [Category.{u} E] {J : Type u} [SmallCategory J]
    [HasLimitsOfShape J D] (F : D ⥤ E) [PreservesLimitsOfShape J F] :
    PreservesLimitsOfShape J ((whiskeringRight C D E).obj F) :=
  ⟨fun {K} =>
    ⟨fun c {hc} => by
      apply evaluationJointlyReflectsLimits _ (fun k => ?_)
      change IsLimit (((evaluation _ _).obj k ⋙ F).mapCone c)
      exact PreservesLimit.preserves hc⟩⟩
#align category_theory.whiskering_right_preserves_limits_of_shape CategoryTheory.whiskeringRightPreservesLimitsOfShape

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5e7fa2a7850431fbc7f902d8f7c434fb83fe33870a92147f2bcb96f3578fc7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5e7fa2a7850431fbc7f902d8f7c434fb83fe33870a92147f2bcb96f3578fc7b.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `577d126e7630208808a43f1756e7c40928e9ab0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
