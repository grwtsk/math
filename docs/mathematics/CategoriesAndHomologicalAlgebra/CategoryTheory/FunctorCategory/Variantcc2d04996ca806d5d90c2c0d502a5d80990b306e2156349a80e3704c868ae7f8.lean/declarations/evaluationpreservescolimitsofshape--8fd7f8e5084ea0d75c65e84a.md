# evaluationPreservesColimitsOfShape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab2d05d5d3eb015ac4383679cc8d079a163550a50d3d58d5061db220e3f9d17c",
  "kind": "instance",
  "lexical_name": "evaluationPreservesColimitsOfShape",
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
  "slug": "evaluationpreservescolimitsofshape--8fd7f8e5084ea0d75c65e84a",
  "source": {
    "blob": "4dbebefbe5dc6f2ad3b7dcb411751419c7a9b4a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 263,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantcc2d04996ca806d5d90c2c0d502a5d80990b306e2156349a80e3704c868ae7f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8fd7f8e5084ea0d75c65e84ab05252e3c7007c58cc81c2b0e965db28a8fe82a9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantcc2d04996ca806d5d90c2c0d502a5d80990b306e2156349a80e3704c868ae7f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab2d05d5d3eb015ac4383679cc8d079a163550a50d3d58d5061db220e3f9d17c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance evaluationPreservesColimitsOfShape [HasColimitsOfShape J C] (k : K) :
    PreservesColimitsOfShape J ((evaluation K C).obj k) where
  preservesColimit {F} := by
    -- Porting note: added a let because X was not inferred
    let X : (k:K) → ColimitCocone (Prefunctor.obj (Functor.flip F).toPrefunctor k) :=
      fun k => getColimitCocone (Prefunctor.obj (Functor.flip F).toPrefunctor k)
    refine preservesColimitOfPreservesColimitCocone (combinedIsColimit _ _) <|
      IsColimit.ofIsoColimit (colimit.isColimit _) (evaluateCombinedCocones F X k).symm
#align category_theory.limits.evaluation_preserves_colimits_of_shape CategoryTheory.Limits.evaluationPreservesColimitsOfShape

/-- If `F : J ⥤ K ⥤ C` is a functor into a functor category which has a colimit,
then the evaluation of that colimit at `k` is the colimit of the evaluations of `F.obj j` at `k`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantcc2d04996ca806d5d90c2c0d502a5d80990b306e2156349a80e3704c868ae7f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantcc2d04996ca806d5d90c2c0d502a5d80990b306e2156349a80e3704c868ae7f8.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dbebefbe5dc6f2ad3b7dcb411751419c7a9b4a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
