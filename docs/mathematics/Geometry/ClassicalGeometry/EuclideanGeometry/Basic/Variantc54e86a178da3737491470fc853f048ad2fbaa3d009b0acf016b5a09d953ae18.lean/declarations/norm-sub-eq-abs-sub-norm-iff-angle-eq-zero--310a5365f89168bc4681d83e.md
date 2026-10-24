# norm_sub_eq_abs_sub_norm_iff_angle_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0896c06-368e-f6e4-402e-952ab930636f",
  "kind": "theorem",
  "lexical_name": "norm_sub_eq_abs_sub_norm_iff_angle_eq_zero",
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
  "slug": "norm-sub-eq-abs-sub-norm-iff-angle-eq-zero--310a5365f89168bc4681d83e",
  "source": {
    "blob": "4833c76af38ca76af825d03dfb545508ef47b607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 294,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc54e86a178da3737491470fc853f048ad2fbaa3d009b0acf016b5a09d953ae18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:310a5365f89168bc4681d83ee985a4a8cea7210e646ccfe26ca04c726db3c8da",
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

Occurrence: `result:a0896c06-368e-f6e4-402e-952ab930636f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_sub_eq_abs_sub_norm_iff_angle_eq_zero {x y : V} (hx : x ≠ 0) (hy : y ≠ 0) :
    ‖x - y‖ = |‖x‖ - ‖y‖| ↔ angle x y = 0 := by
  refine ⟨fun h => ?_, norm_sub_eq_abs_sub_norm_of_angle_eq_zero⟩
  rw [← inner_eq_mul_norm_iff_angle_eq_zero hx hy]
  have h1 : ‖x - y‖ ^ 2 = (‖x‖ - ‖y‖) ^ 2 := by
    rw [h]
    exact sq_abs (‖x‖ - ‖y‖)
  rw [norm_sub_pow_two_real] at h1
  calc
    ⟪x, y⟫ = ((‖x‖ + ‖y‖) ^ 2 - ‖x‖ ^ 2 - ‖y‖ ^ 2) / 2 := by linarith
    _ = ‖x‖ * ‖y‖ := by ring

/-- The norm of the sum of two vectors equals the norm of their difference if and only if
the angle between them is π/2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc54e86a178da3737491470fc853f048ad2fbaa3d009b0acf016b5a09d953ae18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc54e86a178da3737491470fc853f048ad2fbaa3d009b0acf016b5a09d953ae18.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4833c76af38ca76af825d03dfb545508ef47b607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
