# dist_eq_iff_eq_smul_rotation_pi_div_two_vadd_midpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a1b712e025fb3531119c58185664f8e5fcc4069",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 652,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90a3bd38-88a2-dab6-98e6-b303a31372d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:814d907e-02fa-76e3-ee76-366483e14dea",
  "kind": "theorem",
  "lexical_name": "dist_eq_iff_eq_smul_rotation_pi_div_two_vadd_midpoint",
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
  "slug": "dist-eq-iff-eq-smul-rotation-pi-div-two-vadd-midpoint--9e531a30832519352f9437c1",
  "source": {
    "blob": "4a1b712e025fb3531119c58185664f8e5fcc4069",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 680,
    "line": 652,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variante06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e531a30832519352f9437c1feb5f9fa6e8c4fbbf4fbcacf6669f8dd00d37352",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variante06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:814d907e-02fa-76e3-ee76-366483e14dea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 652–680.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_eq_iff_eq_smul_rotation_pi_div_two_vadd_midpoint {p₁ p₂ p : P} (h : p₁ ≠ p₂) :
    dist p₁ p = dist p₂ p ↔
      ∃ r : ℝ, r • o.rotation (π / 2 : ℝ) (p₂ -ᵥ p₁) +ᵥ midpoint ℝ p₁ p₂ = p := by
  refine' ⟨fun hd => _, fun hr => _⟩
  · have hi : ⟪p₂ -ᵥ p₁, p -ᵥ midpoint ℝ p₁ p₂⟫ = 0 := by
      rw [@dist_eq_norm_vsub' V, @dist_eq_norm_vsub' V, ←
        mul_self_inj (norm_nonneg _) (norm_nonneg _), ← real_inner_self_eq_norm_mul_norm, ←
        real_inner_self_eq_norm_mul_norm] at hd
      simp_rw [vsub_midpoint, ← vsub_sub_vsub_cancel_left p₂ p₁ p, inner_sub_left, inner_add_right,
        inner_smul_right, hd, real_inner_comm (p -ᵥ p₁)]
      abel
    rw [@Orientation.inner_eq_zero_iff_eq_zero_or_eq_smul_rotation_pi_div_two V _ _ _ o,
      or_iff_right (vsub_ne_zero.2 h.symm)] at hi
    rcases hi with ⟨r, hr⟩
    rw [eq_comm, ← eq_vadd_iff_vsub_eq] at hr
    exact ⟨r, hr.symm⟩
  · rcases hr with ⟨r, rfl⟩
    simp_rw [@dist_eq_norm_vsub V, vsub_vadd_eq_vsub_sub, left_vsub_midpoint, right_vsub_midpoint,
      invOf_eq_inv, ← neg_vsub_eq_vsub_rev p₂ p₁, ← mul_self_inj (norm_nonneg _) (norm_nonneg _), ←
      real_inner_self_eq_norm_mul_norm, inner_sub_sub_self]
    simp [-neg_vsub_eq_vsub_rev]
#align euclidean_geometry.dist_eq_iff_eq_smul_rotation_pi_div_two_vadd_midpoint EuclideanGeometry.dist_eq_iff_eq_smul_rotation_pi_div_two_vadd_midpoint

open AffineSubspace

/-- Given two pairs of distinct points on the same line, such that the vectors between those
pairs of points are on the same ray (oriented in the same direction on that line), and a fifth
point, the angles at the fifth point between each of those two pairs of points have the same
sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variante06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variante06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.lean#L652).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a1b712e025fb3531119c58185664f8e5fcc4069` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
