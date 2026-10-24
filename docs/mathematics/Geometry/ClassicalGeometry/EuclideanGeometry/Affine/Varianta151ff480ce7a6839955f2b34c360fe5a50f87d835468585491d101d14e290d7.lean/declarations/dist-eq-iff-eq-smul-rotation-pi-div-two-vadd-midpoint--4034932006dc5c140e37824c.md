# dist_eq_iff_eq_smul_rotation_pi_div_two_vadd_midpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5e95169-6aea-cc05-e32b-2922c018000e",
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
  "slug": "dist-eq-iff-eq-smul-rotation-pi-div-two-vadd-midpoint--4034932006dc5c140e37824c",
  "source": {
    "blob": "adfcc5af2110e389c90fa736052bfc90dd222f7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 688,
    "line": 660,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Varianta151ff480ce7a6839955f2b34c360fe5a50f87d835468585491d101d14e290d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4034932006dc5c140e37824c56fa78ab1ce02791fa10b6ba3192beb2fac18afc",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Varianta151ff480ce7a6839955f2b34c360fe5a50f87d835468585491d101d14e290d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5e95169-6aea-cc05-e32b-2922c018000e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 660–688.

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

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Varianta151ff480ce7a6839955f2b34c360fe5a50f87d835468585491d101d14e290d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Varianta151ff480ce7a6839955f2b34c360fe5a50f87d835468585491d101d14e290d7.lean#L660).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adfcc5af2110e389c90fa736052bfc90dd222f7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
