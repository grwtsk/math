# has_cofiltered_limits_of_has_filtered_colimits_op

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b870949f-ef12-03de-bd40-40e84c52e8b2",
  "kind": "theorem",
  "lexical_name": "has_cofiltered_limits_of_has_filtered_colimits_op",
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
  "slug": "has-cofiltered-limits-of-has-filtered-colimits-op--015f2784b15126475b3bd20a",
  "source": {
    "blob": "d1532ef468b67de00eb3301f5759b4bb8c93d2dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 294,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant0b86742ce231816550bebb72312e5d0b18e51a55cdf18a1dd5ac36fd3ef2ee0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:015f2784b15126475b3bd20af62e380531fac974629cd98992b92a65f15aedee",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant0b86742ce231816550bebb72312e5d0b18e51a55cdf18a1dd5ac36fd3ef2ee0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b870949f-ef12-03de-bd40-40e84c52e8b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem has_cofiltered_limits_of_has_filtered_colimits_op [HasFilteredColimitsOfSize.{v₂, u₂} Cᵒᵖ] :
    HasCofilteredLimitsOfSize.{v₂, u₂} C :=
  { HasLimitsOfShape := fun _ _ _ => hasLimitsOfShape_of_hasColimitsOfShape_op }
#align category_theory.limits.has_cofiltered_limits_of_has_filtered_colimits_op CategoryTheory.Limits.has_cofiltered_limits_of_has_filtered_colimits_op

/-- If `F.leftOp : Jᵒᵖ ⥤ C` has a limit, we can construct a colimit for `F : J ⥤ Cᵒᵖ`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant0b86742ce231816550bebb72312e5d0b18e51a55cdf18a1dd5ac36fd3ef2ee0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant0b86742ce231816550bebb72312e5d0b18e51a55cdf18a1dd5ac36fd3ef2ee0c.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1532ef468b67de00eb3301f5759b4bb8c93d2dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
