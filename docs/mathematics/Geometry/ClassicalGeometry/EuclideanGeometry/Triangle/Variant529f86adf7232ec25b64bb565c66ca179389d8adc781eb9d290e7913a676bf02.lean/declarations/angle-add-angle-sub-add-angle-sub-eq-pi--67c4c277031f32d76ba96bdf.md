# angle_add_angle_sub_add_angle_sub_eq_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "afe5d98760c97de78b3b87756755a9c0cbfc3560",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f496225-a2ff-2cfe-0b81-fc03926e893d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f77f829f-5670-4b4b-1eca-c65ce8517766",
  "kind": "theorem",
  "lexical_name": "angle_add_angle_sub_add_angle_sub_eq_pi",
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
  "slug": "angle-add-angle-sub-add-angle-sub-eq-pi--67c4c277031f32d76ba96bdf",
  "source": {
    "blob": "afe5d98760c97de78b3b87756755a9c0cbfc3560",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 211,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67c4c277031f32d76ba96bdf6e14021cd48b0e9763ccb2b91fb13174a624fe73",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f77f829f-5670-4b4b-1eca-c65ce8517766`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angle_add_angle_sub_add_angle_sub_eq_pi {x y : V} (hx : x ≠ 0) (hy : y ≠ 0) :
    angle x y + angle x (x - y) + angle y (y - x) = π := by
  have hcos := cos_angle_add_angle_sub_add_angle_sub_eq_neg_one hx hy
  have hsin := sin_angle_add_angle_sub_add_angle_sub_eq_zero hx hy
  rw [Real.sin_eq_zero_iff] at hsin
  cases' hsin with n hn
  symm at hn
  have h0 : 0 ≤ angle x y + angle x (x - y) + angle y (y - x) :=
    add_nonneg (add_nonneg (angle_nonneg _ _) (angle_nonneg _ _)) (angle_nonneg _ _)
  have h3lt : angle x y + angle x (x - y) + angle y (y - x) < π + π + π := by
    by_contra hnlt
    have hxy : angle x y = π := by
      by_contra hxy
      exact hnlt (add_lt_add_of_lt_of_le (add_lt_add_of_lt_of_le (lt_of_le_of_ne
        (angle_le_pi _ _) hxy) (angle_le_pi _ _)) (angle_le_pi _ _))
    rw [hxy] at hnlt
    rw [angle_eq_pi_iff] at hxy
    rcases hxy with ⟨hx, ⟨r, ⟨hr, hxr⟩⟩⟩
    rw [hxr, ← one_smul ℝ x, ← mul_smul, mul_one, ← sub_smul, one_smul, sub_eq_add_neg,
      angle_smul_right_of_pos _ _ (add_pos zero_lt_one (neg_pos_of_neg hr)), angle_self hx,
      add_zero] at hnlt
    apply hnlt
    rw [add_assoc]
    exact add_lt_add_left (lt_of_le_of_lt (angle_le_pi _ _) (lt_add_of_pos_right π Real.pi_pos)) _
  have hn0 : 0 ≤ n := by
    rw [hn, mul_nonneg_iff_left_nonneg_of_pos Real.pi_pos] at h0
    norm_cast at h0
  have hn3 : n < 3 := by
    rw [hn, show π + π + π = 3 * π by ring] at h3lt
    replace h3lt := lt_of_mul_lt_mul_right h3lt (le_of_lt Real.pi_pos)
    norm_cast at h3lt
  interval_cases n
  · rw [hn] at hcos
    simp at hcos
    norm_num at hcos
  · rw [hn]
    norm_num
  · rw [hn] at hcos
    simp at hcos
    norm_num at hcos
#align inner_product_geometry.angle_add_angle_sub_add_angle_sub_eq_pi InnerProductGeometry.angle_add_angle_sub_add_angle_sub_eq_pi

end InnerProductGeometry

namespace EuclideanGeometry

/-!
### Geometrical results on triangles in Euclidean affine spaces

This section develops some geometrical definitions and results on
(possibly degenerate) triangles in Euclidean affine spaces.
-/


open InnerProductGeometry

open scoped EuclideanGeometry

variable {V : Type*} {P : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [MetricSpace P]
  [NormedAddTorsor V P]

/-- **Law of cosines** (cosine rule), angle-at-point form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant529f86adf7232ec25b64bb565c66ca179389d8adc781eb9d290e7913a676bf02.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afe5d98760c97de78b3b87756755a9c0cbfc3560` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
