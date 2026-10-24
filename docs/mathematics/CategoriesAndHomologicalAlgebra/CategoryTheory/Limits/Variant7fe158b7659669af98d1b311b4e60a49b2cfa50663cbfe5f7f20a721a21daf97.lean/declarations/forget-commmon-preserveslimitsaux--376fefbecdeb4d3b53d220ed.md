# forget₂CommMon_preservesLimitsAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0051449330fe7aea4cf5f2992c40265908748709f562af31fed0fd0c3aca8aa9",
  "kind": "def",
  "lexical_name": "forget₂CommMon_preservesLimitsAux",
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
  "slug": "forget-commmon-preserveslimitsaux--376fefbecdeb4d3b53d220ed",
  "source": {
    "blob": "b8ab78ec5ad6b274ddead82a48b76f6a93cdc62b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 369,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7fe158b7659669af98d1b311b4e60a49b2cfa50663cbfe5f7f20a721a21daf97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:376fefbecdeb4d3b53d220ed5f04627e299a5f545e3f8c641f1548d6bfe0fd20",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7fe158b7659669af98d1b311b4e60a49b2cfa50663cbfe5f7f20a721a21daf97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0051449330fe7aea4cf5f2992c40265908748709f562af31fed0fd0c3aca8aa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def forget₂CommMon_preservesLimitsAux
    [Small.{u} (F ⋙ forget CommGrpCat).sections] :
    IsLimit ((forget₂ CommGrpCat.{u} CommMonCat.{u}).mapCone (limitCone.{v, u} F)) :=
  letI : Small.{u} (Functor.sections ((F ⋙ forget₂ _ CommMonCat) ⋙ forget CommMonCat)) :=
    inferInstanceAs <| Small (Functor.sections (F ⋙ forget CommGrpCat))
  CommMonCat.limitConeIsLimit.{v, u} (F ⋙ forget₂ CommGrpCat.{u} CommMonCat.{u})

/-- If `J` is `u`-small, the forgetful functor from `CommGrpCat.{u}` to `CommMonCat.{u}`
preserves limits of shape `J`. -/
@[to_additive AddCommGrpCat.forget₂AddCommMon_preservesLimitsOfShape
/-- If `J` is `u`-small, the forgetful functor from `AddCommGrpCat.{u}`
to `AddCommMonCat.{u}` preserves limits of shape `J`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7fe158b7659669af98d1b311b4e60a49b2cfa50663cbfe5f7f20a721a21daf97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7fe158b7659669af98d1b311b4e60a49b2cfa50663cbfe5f7f20a721a21daf97.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8ab78ec5ad6b274ddead82a48b76f6a93cdc62b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
