# angle_add_eq_arcsin_of_inner_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a05f7864-7986-d411-0421-f5f8afd16030",
  "kind": "theorem",
  "lexical_name": "angle_add_eq_arcsin_of_inner_eq_zero",
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
  "slug": "angle-add-eq-arcsin-of-inner-eq-zero--97b137183479979ecc4f6d4c",
  "source": {
    "blob": "f7dfdbcbce51d453e6c5dc5e823c80a652af90d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 89,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant48bc8f820a849515a46774ccf4139ed133c9b75b2e615ee73d1960de029cf81d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97b137183479979ecc4f6d4c0d05cfe970f7ef4a912a6e483c1c92333e56103c",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant48bc8f820a849515a46774ccf4139ed133c9b75b2e615ee73d1960de029cf81d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a05f7864-7986-d411-0421-f5f8afd16030`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angle_add_eq_arcsin_of_inner_eq_zero {x y : V} (h : ⟪x, y⟫ = 0) (h0 : x ≠ 0 ∨ y ≠ 0) :
    angle x (x + y) = Real.arcsin (‖y‖ / ‖x + y‖) := by
  have hxy : ‖x + y‖ ^ 2 ≠ 0 := by
    rw [pow_two, norm_add_sq_eq_norm_sq_add_norm_sq_real h, ne_comm]
    refine' ne_of_lt _
    rcases h0 with (h0 | h0)
    · exact
        Left.add_pos_of_pos_of_nonneg (mul_self_pos.2 (norm_ne_zero_iff.2 h0)) (mul_self_nonneg _)
    · exact
        Left.add_pos_of_nonneg_of_pos (mul_self_nonneg _) (mul_self_pos.2 (norm_ne_zero_iff.2 h0))
  rw [angle_add_eq_arccos_of_inner_eq_zero h,
    Real.arccos_eq_arcsin (div_nonneg (norm_nonneg _) (norm_nonneg _)), div_pow, one_sub_div hxy]
  nth_rw 1 [pow_two]
  rw [norm_add_sq_eq_norm_sq_add_norm_sq_real h, pow_two, add_sub_cancel', ← pow_two, ← div_pow,
    Real.sqrt_sq (div_nonneg (norm_nonneg _) (norm_nonneg _))]
#align inner_product_geometry.angle_add_eq_arcsin_of_inner_eq_zero InnerProductGeometry.angle_add_eq_arcsin_of_inner_eq_zero

/-- An angle in a right-angled triangle expressed using `arctan`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant48bc8f820a849515a46774ccf4139ed133c9b75b2e615ee73d1960de029cf81d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant48bc8f820a849515a46774ccf4139ed133c9b75b2e615ee73d1960de029cf81d.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7dfdbcbce51d453e6c5dc5e823c80a652af90d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
