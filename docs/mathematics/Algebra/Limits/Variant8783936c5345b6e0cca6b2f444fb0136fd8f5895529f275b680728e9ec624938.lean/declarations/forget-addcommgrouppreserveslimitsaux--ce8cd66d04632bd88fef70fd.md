# forget₂AddCommGroupPreservesLimitsAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67bad1de3d87c1ed72be52c4bd5562c99f7d075d51211e2997ba71f63173cf02",
  "kind": "def",
  "lexical_name": "forget₂AddCommGroupPreservesLimitsAux",
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
  "slug": "forget-addcommgrouppreserveslimitsaux--ce8cd66d04632bd88fef70fd",
  "source": {
    "blob": "c6389c9ad2d828799cd7a8c3860ff2a4b589f0ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 432,
    "path": "GRWTSK/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce8cd66d04632bd88fef70fdf6957f9a0cb00d09fc57b679da37c9513a74c85a",
  "verification": {
    "reference": "docs/verification/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67bad1de3d87c1ed72be52c4bd5562c99f7d075d51211e2997ba71f63173cf02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def forget₂AddCommGroupPreservesLimitsAux (F : J ⥤ RingCatMax.{v, u}) :
    IsLimit ((forget₂ RingCatMax.{v, u} AddCommGroupCat).mapCone (limitCone.{v, u} F)) := by
  -- Porting note : inline `f` would not compile
  letI f := (F ⋙ forget₂ RingCatMax.{v, u} AddCommGroupCat.{max v u})
  apply AddCommGroupCat.limitConeIsLimit.{v, u} f
set_option linter.uppercaseLean3 false in
#align Ring.forget₂_AddCommGroup_preserves_limits_aux RingCat.forget₂AddCommGroupPreservesLimitsAux

/-- The forgetful functor from rings to additive commutative groups preserves all limits.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6389c9ad2d828799cd7a8c3860ff2a4b589f0ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
