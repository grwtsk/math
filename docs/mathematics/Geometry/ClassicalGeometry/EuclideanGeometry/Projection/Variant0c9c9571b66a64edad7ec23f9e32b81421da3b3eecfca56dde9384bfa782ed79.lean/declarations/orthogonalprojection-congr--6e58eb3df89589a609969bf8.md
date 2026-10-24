# orthogonalProjection_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fba0405b-ea6a-3d72-4cb4-3fffd5c9e269",
  "kind": "theorem",
  "lexical_name": "orthogonalProjection_congr",
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
  "slug": "orthogonalprojection-congr--6e58eb3df89589a609969bf8",
  "source": {
    "blob": "677631e1550b57ba430dc68795e4c22ee2c5d3da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 84,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant0c9c9571b66a64edad7ec23f9e32b81421da3b3eecfca56dde9384bfa782ed79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e58eb3df89589a609969bf8d7f718c742aa7892ee4e1de828a7d38b90d562db",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant0c9c9571b66a64edad7ec23f9e32b81421da3b3eecfca56dde9384bfa782ed79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fba0405b-ea6a-3d72-4cb4-3fffd5c9e269`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orthogonalProjection_congr {s₁ s₂ : AffineSubspace 𝕜 P} {p₁ p₂ : P}
    [Nonempty s₁] [s₁.direction.HasOrthogonalProjection]
    (h : s₁ = s₂) (hp : p₁ = p₂) :
    letI : Nonempty s₂ := h ▸ ‹_›
    letI : s₂.direction.HasOrthogonalProjection := h ▸ ‹_›
    (orthogonalProjection s₁ p₁ : P) = (orthogonalProjection s₂ p₂ : P) := by
  subst h hp
  rfl

/-- The linear map corresponding to `orthogonalProjection`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant0c9c9571b66a64edad7ec23f9e32b81421da3b3eecfca56dde9384bfa782ed79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant0c9c9571b66a64edad7ec23f9e32b81421da3b3eecfca56dde9384bfa782ed79.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `677631e1550b57ba430dc68795e4c22ee2c5d3da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
