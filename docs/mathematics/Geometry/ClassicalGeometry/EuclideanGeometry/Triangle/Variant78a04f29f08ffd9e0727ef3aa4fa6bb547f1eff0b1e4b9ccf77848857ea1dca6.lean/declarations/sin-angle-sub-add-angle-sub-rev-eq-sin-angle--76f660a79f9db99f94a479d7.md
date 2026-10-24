# sin_angle_sub_add_angle_sub_rev_eq_sin_angle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e49dbe81-198f-7159-7250-4826089cc45f",
  "kind": "theorem",
  "lexical_name": "sin_angle_sub_add_angle_sub_rev_eq_sin_angle",
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
  "slug": "sin-angle-sub-add-angle-sub-rev-eq-sin-angle--76f660a79f9db99f94a479d7",
  "source": {
    "blob": "267c03ebb878ed33b6a48b88490dcdb9d593ded9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 160,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76f660a79f9db99f94a479d7098fa74c8d8d3efd9c1a428f6737860cc75a1fb8",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e49dbe81-198f-7159-7250-4826089cc45f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sin_angle_sub_add_angle_sub_rev_eq_sin_angle {x y : V} (hx : x ≠ 0) (hy : y ≠ 0) :
    Real.sin (angle x (x - y) + angle y (y - x)) = Real.sin (angle x y) := by
  by_cases hxy : x = y
  · rw [hxy, angle_self hy]
    simp
  · rw [Real.sin_add, cos_angle, cos_angle]
    have hxn : ‖x‖ ≠ 0 := fun h => hx (norm_eq_zero.1 h)
    have hyn : ‖y‖ ≠ 0 := fun h => hy (norm_eq_zero.1 h)
    have hxyn : ‖x - y‖ ≠ 0 := fun h => hxy (eq_of_sub_eq_zero (norm_eq_zero.1 h))
    apply mul_right_cancel₀ hxn
    apply mul_right_cancel₀ hyn
    apply mul_right_cancel₀ hxyn
    apply mul_right_cancel₀ hxyn
    have H1 :
      Real.sin (angle x (x - y)) * (⟪y, y - x⟫ / (‖y‖ * ‖y - x‖)) * ‖x‖ * ‖y‖ * ‖x - y‖ =
        Real.sin (angle x (x - y)) * (‖x‖ * ‖x - y‖) * (⟪y, y - x⟫ / (‖y‖ * ‖y - x‖)) * ‖y‖ := by
      ring
    have H2 :
      ⟪x, x - y⟫ / (‖x‖ * ‖y - x‖) * Real.sin (angle y (y - x)) * ‖x‖ * ‖y‖ * ‖y - x‖ =
        ⟪x, x - y⟫ / (‖x‖ * ‖y - x‖) * (Real.sin (angle y (y - x)) * (‖y‖ * ‖y - x‖)) * ‖x‖ := by
      ring
    have H3 :
      ⟪x, x⟫ * (⟪x, x⟫ - ⟪x, y⟫ - (⟪x, y⟫ - ⟪y, y⟫)) - (⟪x, x⟫ - ⟪x, y⟫) * (⟪x, x⟫ - ⟪x, y⟫) =
        ⟪x, x⟫ * ⟪y, y⟫ - ⟪x, y⟫ * ⟪x, y⟫ := by
      ring
    have H4 :
      ⟪y, y⟫ * (⟪y, y⟫ - ⟪x, y⟫ - (⟪x, y⟫ - ⟪x, x⟫)) - (⟪y, y⟫ - ⟪x, y⟫) * (⟪y, y⟫ - ⟪x, y⟫) =
        ⟪x, x⟫ * ⟪y, y⟫ - ⟪x, y⟫ * ⟪x, y⟫ := by
      ring
    rw [right_distrib, right_distrib, right_distrib, right_distrib, H1, sin_angle_mul_norm_mul_norm,
      norm_sub_rev x y, H2, sin_angle_mul_norm_mul_norm, norm_sub_rev y x,
      mul_assoc (Real.sin (angle x y)), sin_angle_mul_norm_mul_norm, inner_sub_left, inner_sub_left,
      inner_sub_right, inner_sub_right, inner_sub_right, inner_sub_right, real_inner_comm x y, H3,
      H4, real_inner_self_eq_norm_mul_norm, real_inner_self_eq_norm_mul_norm,
      real_inner_eq_norm_mul_self_add_norm_mul_self_sub_norm_sub_mul_self_div_two]
    field_simp [hxn, hyn, hxyn]
    ring
#align inner_product_geometry.sin_angle_sub_add_angle_sub_rev_eq_sin_angle InnerProductGeometry.sin_angle_sub_add_angle_sub_rev_eq_sin_angle

/-- The cosine of the sum of the angles of a possibly degenerate
triangle (where two given sides are nonzero), vector angle form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant78a04f29f08ffd9e0727ef3aa4fa6bb547f1eff0b1e4b9ccf77848857ea1dca6.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `267c03ebb878ed33b6a48b88490dcdb9d593ded9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
