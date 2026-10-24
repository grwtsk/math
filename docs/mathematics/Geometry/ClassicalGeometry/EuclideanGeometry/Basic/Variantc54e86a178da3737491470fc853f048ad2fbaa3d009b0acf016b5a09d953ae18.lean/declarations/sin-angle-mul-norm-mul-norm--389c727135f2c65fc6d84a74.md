# sin_angle_mul_norm_mul_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7cdcba9-7e13-5a27-6f3c-fc3d3d9d551e",
  "kind": "theorem",
  "lexical_name": "sin_angle_mul_norm_mul_norm",
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
  "slug": "sin-angle-mul-norm-mul-norm--389c727135f2c65fc6d84a74",
  "source": {
    "blob": "4833c76af38ca76af825d03dfb545508ef47b607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 174,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc54e86a178da3737491470fc853f048ad2fbaa3d009b0acf016b5a09d953ae18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:389c727135f2c65fc6d84a74136da84209da06338302344e236ae0b7face5feb",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc54e86a178da3737491470fc853f048ad2fbaa3d009b0acf016b5a09d953ae18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7cdcba9-7e13-5a27-6f3c-fc3d3d9d551e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sin_angle_mul_norm_mul_norm (x y : V) :
    Real.sin (angle x y) * (‖x‖ * ‖y‖) = √(⟪x, x⟫ * ⟪y, y⟫ - ⟪x, y⟫ * ⟪x, y⟫) := by
  unfold angle
  rw [Real.sin_arccos, ← Real.sqrt_mul_self (mul_nonneg (norm_nonneg x) (norm_nonneg y)),
    ← Real.sqrt_mul' _ (mul_self_nonneg _), sq,
    Real.sqrt_mul_self (mul_nonneg (norm_nonneg x) (norm_nonneg y)),
    real_inner_self_eq_norm_mul_norm, real_inner_self_eq_norm_mul_norm]
  by_cases h : ‖x‖ * ‖y‖ = 0
  · rw [show ‖x‖ * ‖x‖ * (‖y‖ * ‖y‖) = ‖x‖ * ‖y‖ * (‖x‖ * ‖y‖) by ring, h, mul_zero,
      mul_zero, zero_sub]
    rcases eq_zero_or_eq_zero_of_mul_eq_zero h with hx | hy
    · rw [norm_eq_zero] at hx
      rw [hx, inner_zero_left, zero_mul, neg_zero]
    · rw [norm_eq_zero] at hy
      rw [hy, inner_zero_right, zero_mul, neg_zero]
  · -- takes 600ms; squeezing the "equivalent" simp call yields an invalid result
    field_simp [h]
    ring_nf

/-- The angle between two vectors is zero if and only if they are
nonzero and one is a positive multiple of the other. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc54e86a178da3737491470fc853f048ad2fbaa3d009b0acf016b5a09d953ae18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc54e86a178da3737491470fc853f048ad2fbaa3d009b0acf016b5a09d953ae18.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4833c76af38ca76af825d03dfb545508ef47b607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
