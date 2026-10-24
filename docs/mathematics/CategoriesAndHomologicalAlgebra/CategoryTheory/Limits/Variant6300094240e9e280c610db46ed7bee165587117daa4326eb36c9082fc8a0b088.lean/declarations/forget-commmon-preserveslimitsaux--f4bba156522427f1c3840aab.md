# forget₂CommMon_preservesLimitsAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c595f996d5cf8f945aec699f4ad7ef1727fc260a26ca7cd43b294ee7ac235ea",
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
  "slug": "forget-commmon-preserveslimitsaux--f4bba156522427f1c3840aab",
  "source": {
    "blob": "5b50cb5d76573358d73710f23a83465435a2a30d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 377,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6300094240e9e280c610db46ed7bee165587117daa4326eb36c9082fc8a0b088.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4bba156522427f1c3840aabf7bd991e21e2fe0a070e8383c962ff2b0718f4fe",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6300094240e9e280c610db46ed7bee165587117daa4326eb36c9082fc8a0b088.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c595f996d5cf8f945aec699f4ad7ef1727fc260a26ca7cd43b294ee7ac235ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def forget₂CommMon_preservesLimitsAux
    [Small.{u} (F ⋙ forget CommGrp).sections] :
    IsLimit ((forget₂ CommGrp.{u} CommMonCat.{u}).mapCone (limitCone.{v, u} F)) :=
  letI : Small.{u} (Functor.sections ((F ⋙ forget₂ _ CommMonCat) ⋙ forget CommMonCat)) :=
    inferInstanceAs <| Small (Functor.sections (F ⋙ forget CommGrp))
  CommMonCat.limitConeIsLimit.{v, u} (F ⋙ forget₂ CommGrp.{u} CommMonCat.{u})

/-- If `J` is `u`-small, the forgetful functor from `CommGrp.{u}` to `CommMonCat.{u}`
preserves limits of shape `J`. -/
@[to_additive AddCommGrp.forget₂AddCommMon_preservesLimitsOfShape
  "If `J` is `u`-small, the forgetful functor from `AddCommGrp.{u}`
  to `AddCommMonCat.{u}` preserves limits of shape `J`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6300094240e9e280c610db46ed7bee165587117daa4326eb36c9082fc8a0b088.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6300094240e9e280c610db46ed7bee165587117daa4326eb36c9082fc8a0b088.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b50cb5d76573358d73710f23a83465435a2a30d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
