# _root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SimilarOfAngleAngle.Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.Similar.angle_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f2b9fe1-c742-b5ae-1c52-367e6c034983",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SimilarOfAngleAngle.Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.Similar.angle_eq",
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
  "slug": "root-grwtsk-geometry-classicalgeometry-euclideangeometry-similarofanglea--327c43feb3ca2b1635529e28",
  "source": {
    "blob": "36b7ef05b8ed02fc77683eacaf24954997a1e36e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 121,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variantc25c442e4a2311d3f7e17f1a70c1386b70c941610fef4525e9750c839de69adc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:327c43feb3ca2b1635529e285dd680b71b6c866107b95214d880569b7e651cf7",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variantc25c442e4a2311d3f7e17f1a70c1386b70c941610fef4525e9750c839de69adc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f2b9fe1-c742-b5ae-1c52-367e6c034983`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SimilarOfAngleAngle.Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.Similar.angle_eq (h : ![a, b, c] ∼ ![a', b', c']) :
    ∠ a b c = ∠ a' b' c' := by
  rw [similar_iff_exists_pos_dist_eq] at h
  rcases h with ⟨r, hr_pos, hdist⟩
  have h_ab : dist a b = r * dist a' b' := hdist 0 1
  have h_cb : dist c b = r * dist c' b' := hdist 2 1
  have h_ac : dist a c = r * dist a' c' := hdist 0 2
  have h_cos := law_cos a b c
  rw [h_ab, h_cb, h_ac] at h_cos
  field_simp at h_cos
  have h_cos' := law_cos a' b' c'
  field_simp at h_cos'
  rw [h_cos', sub_right_inj] at h_cos
  by_cases heq : dist a' b' * dist c' b' * 2 = 0
  · rw [mul_eq_zero_iff_right (by norm_num), mul_eq_zero] at heq
    rcases heq with h1 | h2
    · have h_dist_ab : dist a b = 0 := by grind
      rw [dist_eq_zero] at h_dist_ab h1
      simp_rw [h_dist_ab, h1, angle_self_left]
    · have h_dist_cb : dist c b = 0 := by grind
      rw [dist_eq_zero] at h_dist_cb h2
      simp_rw [h_dist_cb, h2, angle_self_right]
  rw [mul_right_inj' heq] at h_cos
  apply Real.injOn_cos at h_cos
  repeat grind [angle_nonneg, angle_le_pi]

/-- In two similar triangles, all three corresponding angles are equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variantc25c442e4a2311d3f7e17f1a70c1386b70c941610fef4525e9750c839de69adc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variantc25c442e4a2311d3f7e17f1a70c1386b70c941610fef4525e9750c839de69adc.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36b7ef05b8ed02fc77683eacaf24954997a1e36e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
