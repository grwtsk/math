# similar_of_side_angle_side

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e32e667-6cb0-ff0d-622e-8ab7da2e28f5",
  "kind": "theorem",
  "lexical_name": "similar_of_side_angle_side",
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
  "slug": "similar-of-side-angle-side--60efdfcc9e0b8ca2a7979056",
  "source": {
    "blob": "36b7ef05b8ed02fc77683eacaf24954997a1e36e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 85,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variantc25c442e4a2311d3f7e17f1a70c1386b70c941610fef4525e9750c839de69adc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60efdfcc9e0b8ca2a7979056cd51653d16efc50ab070748e7f7234e562256e70",
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

Occurrence: `result:8e32e667-6cb0-ff0d-622e-8ab7da2e28f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem similar_of_side_angle_side (h_not_col : ¬ Collinear ℝ {a, b, c})
    (h_not_col' : ¬ Collinear ℝ {a', b', c'}) (h : ∠ a b c = ∠ a' b' c')
    (hd : dist a b * dist b' c' = dist b c * dist a' b') :
    ![a, b, c] ∼ ![a', b', c'] := by
  have dist_a'b' : dist a' b' ≠ 0 := by simp [ne₁₂_of_not_collinear h_not_col']
  have dist_b'c' : dist b' c' ≠ 0 := by simp [ne₂₃_of_not_collinear h_not_col']
  rw [← div_eq_div_iff dist_a'b' dist_b'c'] at hd
  set k := (dist a b / dist a' b') with hk
  have k_pos : 0 < k := by
    rw [hk]
    apply div_pos
    · simp [dist_pos, ne₁₂_of_not_collinear h_not_col]
    · simp [dist_pos, ne₁₂_of_not_collinear h_not_col']
  have h_ab : dist a b = k * dist a' b' := by grind
  have h_bc : dist b c = k * dist b' c' := by grind
  have hcos := law_cos a b c
  rw [dist_comm b _, dist_comm b' _] at h_bc
  rw [h_ab, h_bc] at hcos
  field_simp at hcos
  rw [h] at hcos
  have hcos' := law_cos a' b' c'
  field_simp at hcos'
  rw [← hcos', ← mul_pow] at hcos
  have dist_ac_pos : 0 < dist a c := by grind [dist_pos, ne₁₃_of_not_collinear]
  have k_dist_a'c' : 0 ≤ k * dist a' c' := by positivity
  rw [pow_left_inj₀ (le_of_lt dist_ac_pos) k_dist_a'c' (by norm_num), dist_comm a _,
    dist_comm a' _] at hcos
  rw [dist_comm c _, dist_comm c' _] at h_bc
  rw [similar_iff_exists_pos_pairwise_dist_eq]
  use k
  refine ⟨k_pos, ?_⟩
  intro i j hij
  fin_cases i <;> fin_cases j <;> try {rw [dist_self, dist_self, mul_zero]}
  all_goals simp; grind [dist_comm]

/-- For two similar triangles, the corresponding angles are equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variantc25c442e4a2311d3f7e17f1a70c1386b70c941610fef4525e9750c839de69adc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variantc25c442e4a2311d3f7e17f1a70c1386b70c941610fef4525e9750c839de69adc.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36b7ef05b8ed02fc77683eacaf24954997a1e36e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
