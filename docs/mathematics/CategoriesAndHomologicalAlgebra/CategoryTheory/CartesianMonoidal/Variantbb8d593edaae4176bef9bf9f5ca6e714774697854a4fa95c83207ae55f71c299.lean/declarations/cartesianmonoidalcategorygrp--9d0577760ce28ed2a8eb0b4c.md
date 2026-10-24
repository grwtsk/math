# cartesianMonoidalCategoryGrp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d406d11a7eefeb4b0fc4757b3d3c369e84a3a0ae5e99f111dad4f1c14fa3861a",
  "kind": "instance",
  "lexical_name": "cartesianMonoidalCategoryGrp",
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
  "slug": "cartesianmonoidalcategorygrp--9d0577760ce28ed2a8eb0b4c",
  "source": {
    "blob": "13e54be4b646d981a6b0f41514e1be988bf5a659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 34,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantbb8d593edaae4176bef9bf9f5ca6e714774697854a4fa95c83207ae55f71c299.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d0577760ce28ed2a8eb0b4c7e926de09c9bf4bd1acc9e7592ce6dd11b6a0192",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantbb8d593edaae4176bef9bf9f5ca6e714774697854a4fa95c83207ae55f71c299.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d406d11a7eefeb4b0fc4757b3d3c369e84a3a0ae5e99f111dad4f1c14fa3861a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance cartesianMonoidalCategoryGrp : CartesianMonoidalCategory GrpCat.{u} :=
  .ofChosenFiniteProducts ⟨_, (isZero_of_subsingleton ↧PUnit.{u + 1}).isTerminal⟩
    fun G H ↦ binaryProductLimitCone G H

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantbb8d593edaae4176bef9bf9f5ca6e714774697854a4fa95c83207ae55f71c299.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantbb8d593edaae4176bef9bf9f5ca6e714774697854a4fa95c83207ae55f71c299.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13e54be4b646d981a6b0f41514e1be988bf5a659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
