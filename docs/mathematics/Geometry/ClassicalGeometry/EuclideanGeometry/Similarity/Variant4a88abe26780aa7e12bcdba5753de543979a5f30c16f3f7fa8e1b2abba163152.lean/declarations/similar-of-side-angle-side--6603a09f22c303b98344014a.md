# similar_of_side_angle_side

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ddb2db17d1e15082e9d4a2532332d16e3b332b4d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:defefba9-bc92-49e8-4e33-088f86aae795",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa2477b8-4525-1760-813d-84664c9425c0",
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
  "slug": "similar-of-side-angle-side--6603a09f22c303b98344014a",
  "source": {
    "blob": "ddb2db17d1e15082e9d4a2532332d16e3b332b4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 77,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6603a09f22c303b98344014a7de05b7bc85adb611a344672e89d5e5a2be99faf",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa2477b8-4525-1760-813d-84664c9425c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–112.

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

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddb2db17d1e15082e9d4a2532332d16e3b332b4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
