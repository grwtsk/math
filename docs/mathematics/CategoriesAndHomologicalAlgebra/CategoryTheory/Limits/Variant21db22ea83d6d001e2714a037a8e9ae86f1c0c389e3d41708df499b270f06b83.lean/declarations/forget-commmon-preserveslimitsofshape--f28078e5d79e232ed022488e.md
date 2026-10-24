# forget₂CommMon_preservesLimitsOfShape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a7fc672f5599df2d721cdfb7b0cf7f56d7356e8615eafb31cfd8e2249323bd9",
  "kind": "instance",
  "lexical_name": "forget₂CommMon_preservesLimitsOfShape",
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
  "slug": "forget-commmon-preserveslimitsofshape--f28078e5d79e232ed022488e",
  "source": {
    "blob": "bec650fb75370aea83bc4c84ad8909a6b0f07712",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 373,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant21db22ea83d6d001e2714a037a8e9ae86f1c0c389e3d41708df499b270f06b83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f28078e5d79e232ed022488efebc024ec45c7e22e51d8c12c029eeee021966e9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant21db22ea83d6d001e2714a037a8e9ae86f1c0c389e3d41708df499b270f06b83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a7fc672f5599df2d721cdfb7b0cf7f56d7356e8615eafb31cfd8e2249323bd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance forget₂CommMon_preservesLimitsOfShape [Small.{u} J] :
    PreservesLimitsOfShape J (forget₂ CommGrpCat.{u} CommMonCat.{u}) where
  preservesLimit {F} := preservesLimit_of_preserves_limit_cone (limitConeIsLimit.{v, u} F)
      (forget₂CommMon_preservesLimitsAux.{v, u} F)

/-- The forgetful functor from commutative groups to commutative monoids preserves all limits.
(That is, the underlying commutative monoids could have been computed instead as limits
in the category of commutative monoids.)
-/
@[to_additive AddCommGrpCat.forget₂AddCommMon_preservesLimitsOfSize
/-- The forgetful functor from additive commutative groups to additive commutative monoids
preserves all limits. (That is, the underlying additive commutative monoids could have been
computed instead as limits in the category of additive commutative monoids.) -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant21db22ea83d6d001e2714a037a8e9ae86f1c0c389e3d41708df499b270f06b83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant21db22ea83d6d001e2714a037a8e9ae86f1c0c389e3d41708df499b270f06b83.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bec650fb75370aea83bc4c84ad8909a6b0f07712` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
