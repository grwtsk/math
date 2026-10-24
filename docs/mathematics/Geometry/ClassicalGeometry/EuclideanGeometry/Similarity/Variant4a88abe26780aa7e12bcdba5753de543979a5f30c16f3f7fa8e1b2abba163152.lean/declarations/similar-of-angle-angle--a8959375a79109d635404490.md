# similar_of_angle_angle

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
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3ee7232-8ccb-fb3d-9ca4-2ba1d93d21f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fdaf1e90-53b5-4183-4ba6-c76fa4147ad0",
  "kind": "theorem",
  "lexical_name": "similar_of_angle_angle",
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
  "slug": "similar-of-angle-angle--a8959375a79109d635404490",
  "source": {
    "blob": "ddb2db17d1e15082e9d4a2532332d16e3b332b4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 36,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8959375a79109d6354044906ba0eb7d32bad2d23e7dc6eecce5a7c885a5e9df",
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

Occurrence: `result:fdaf1e90-53b5-4183-4ba6-c76fa4147ad0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem similar_of_angle_angle (h_not_col : ¬ Collinear ℝ {a, b, c}) (h₁ : ∠ a b c = ∠ a' b' c')
    (h₂ : ∠ b c a = ∠ b' c' a') :
    ![a, b, c] ∼ ![a', b', c'] := by
  have hne_pi_div_two : ∠ a b c ≠ Real.pi / 2 ∨ ∠ b c a ≠ Real.pi / 2 := by
    by_contra! hq
    have := angle_lt_pi_div_two_of_angle_eq_pi_div_two hq.1 (ne₂₃_of_not_collinear h_not_col).symm
    grind
  have not_all_eq : a' ≠ b' ∨ b' ≠ c' ∨ a' ≠ c' := by grind [angle_self_left]
  have h_not_col' : ¬ Collinear ℝ {a', b', c'} := by
    grind only [collinear_iff_eq_or_eq_or_angle_eq_zero_or_angle_eq_pi, angle_self_right,
      angle_self_left, Set.insert_comm, Set.pair_comm]
  have h_pos1 : 0 < dist a b := by simp [dist_pos, ne₁₂_of_not_collinear h_not_col]
  have h_pos1' : 0 < dist a' b' := by simp [dist_pos, ne₁₂_of_not_collinear h_not_col']
  have h_pos2 : 0 < dist b c := by simp [dist_pos, ne₂₃_of_not_collinear h_not_col]
  have h_pos2' : 0 < dist b' c' := by simp [dist_pos, ne₂₃_of_not_collinear h_not_col']
  have h₃ : ∠ c a b = ∠ c' a' b' := by
    have hsum := angle_add_angle_add_angle_eq_pi c (ne₁₂_of_not_collinear h_not_col)
    have hsum' := angle_add_angle_add_angle_eq_pi c' (ne₁₂_of_not_collinear h_not_col')
    grind [angle_comm]
  have h_sin_ne1 : Real.sin (∠ b c a) ≠ 0 := by
    grind only [sin_ne_zero_of_not_collinear, Set.pair_comm, Set.insert_comm]
  have h_sin_ne2 : Real.sin (∠ c a b) ≠ 0 := by
    grind only [sin_ne_zero_of_not_collinear, Set.pair_comm, Set.insert_comm]
  have h_sin1 := law_sin c a b
  have h_sin1' := law_sin c' a' b'
  rw [← eq_div_iff_mul_eq (by positivity)] at h_sin1 h_sin1'
  rw [← h₃, ← h₂] at h_sin1'
  rw [h_sin1', mul_div_assoc, mul_div_assoc, mul_right_inj' h_sin_ne1,
    div_eq_div_iff (by positivity) (by positivity), mul_comm] at h_sin1
  have h_sin2 := law_sin a b c
  have h_sin2' := law_sin a' b' c'
  rw [← eq_div_iff_mul_eq (by positivity)] at h_sin2 h_sin2'
  rw [← h₁, ← h₃] at h_sin2'
  rw [h_sin2', mul_div_assoc, mul_div_assoc, mul_right_inj' h_sin_ne2,
    div_eq_div_iff (by positivity) (by positivity), mul_comm] at h_sin2
  apply Similar.reverse_of_three
  apply Similar.comm_left
  exact similar_of_side_side (by positivity) (by positivity) h_sin2 h_sin1.symm

/-- If two triangles have proportional adjacent sides and an equal included angle, then the
triangles are similar. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Similarity/Variant4a88abe26780aa7e12bcdba5753de543979a5f30c16f3f7fa8e1b2abba163152.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddb2db17d1e15082e9d4a2532332d16e3b332b4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
