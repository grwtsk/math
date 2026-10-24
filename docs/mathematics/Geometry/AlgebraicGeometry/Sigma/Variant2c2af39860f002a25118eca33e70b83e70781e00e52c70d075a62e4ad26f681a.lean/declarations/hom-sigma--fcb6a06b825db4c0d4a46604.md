# Hom.sigma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c205f597cdd29c018dea3572b67f6fb1fbe109d95919c1d1348a5c5f6204d2b4",
  "kind": "def",
  "lexical_name": "Hom.sigma",
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
  "slug": "hom-sigma--fcb6a06b825db4c0d4a46604",
  "source": {
    "blob": "98116d05464065a7d13fa784dc29ba74d3220606",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 63,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Sigma/Variant2c2af39860f002a25118eca33e70b83e70781e00e52c70d075a62e4ad26f681a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcb6a06b825db4c0d4a46604b5ed79489f79c701b31b09c83ea2d9012c3d8e12",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Sigma/Variant2c2af39860f002a25118eca33e70b83e70781e00e52c70d075a62e4ad26f681a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c205f597cdd29c018dea3572b67f6fb1fbe109d95919c1d1348a5c5f6204d2b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Hom.sigma (f : 𝒰 ⟶ 𝒱) : 𝒰.sigma ⟶ 𝒱.sigma where
  s₀ _ := default
  h₀ _ := Sigma.desc fun j ↦ f.h₀ j ≫ Sigma.ι _ (f.s₀ j)
  w₀ _ := Sigma.hom_ext _ _ (by simp)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- Collapsing a cover to a single object cover is functorial. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Sigma/Variant2c2af39860f002a25118eca33e70b83e70781e00e52c70d075a62e4ad26f681a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Sigma/Variant2c2af39860f002a25118eca33e70b83e70781e00e52c70d075a62e4ad26f681a.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98116d05464065a7d13fa784dc29ba74d3220606` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
