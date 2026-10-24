# mul_norm_eq_abs_sub_sq_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96cc1b6e-5541-6dd8-1673-ffc1d205b4ae",
  "kind": "theorem",
  "lexical_name": "mul_norm_eq_abs_sub_sq_norm",
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
  "slug": "mul-norm-eq-abs-sub-sq-norm--588721d16827a0dc6606c139",
  "source": {
    "blob": "49548dbc20367c94288544c373ea993b8f703f64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 46,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variantcac736fd98dfe0930fae600a4741da688376aa860b709d425b0984a4db534ea7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:588721d16827a0dc6606c13919da07ccd2715de19a5ecfa9dd44450be7ad0457",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variantcac736fd98dfe0930fae600a4741da688376aa860b709d425b0984a4db534ea7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96cc1b6e-5541-6dd8-1673-ffc1d205b4ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_norm_eq_abs_sub_sq_norm {x y z : V} (h₁ : ∃ k : ℝ, k ≠ 1 ∧ x + y = k • (x - y))
    (h₂ : ‖z - y‖ = ‖z + y‖) : ‖x - y‖ * ‖x + y‖ = |‖z + y‖ ^ 2 - ‖z - x‖ ^ 2| := by
  obtain ⟨k, hk_ne_one, hk⟩ := h₁
  let r := (k - 1)⁻¹ * (k + 1)
  have hxy : x = r • y := by
    rw [← smul_smul, eq_inv_smul_iff₀ (sub_ne_zero.mpr hk_ne_one), ← sub_eq_zero]
    calc
      (k - 1) • x - (k + 1) • y = k • x - x - (k • y + y) := by
        simp_rw [sub_smul, add_smul, one_smul]
      _ = k • x - k • y - (x + y) := by simp_rw [← sub_sub, sub_right_comm]
      _ = k • (x - y) - (x + y) := by rw [← smul_sub k x y]
      _ = 0 := sub_eq_zero.mpr hk.symm
  have hzy : ⟪z, y⟫ = 0 := by
    rwa [inner_eq_zero_iff_angle_eq_pi_div_two, ← norm_add_eq_norm_sub_iff_angle_eq_pi_div_two,
      eq_comm]
  have hzx : ⟪z, x⟫ = 0 := by rw [hxy, inner_smul_right, hzy, mul_zero]
  calc
    ‖x - y‖ * ‖x + y‖ = ‖(r - 1) • y‖ * ‖(r + 1) • y‖ := by simp [sub_smul, add_smul, hxy]
    _ = ‖r - 1‖ * ‖y‖ * (‖r + 1‖ * ‖y‖) := by simp_rw [norm_smul]
    _ = ‖r - 1‖ * ‖r + 1‖ * ‖y‖ ^ 2 := by ring
    _ = |(r - 1) * (r + 1) * ‖y‖ ^ 2| := by simp [abs_mul]
    _ = |r ^ 2 * ‖y‖ ^ 2 - ‖y‖ ^ 2| := by ring_nf
    _ = |‖x‖ ^ 2 - ‖y‖ ^ 2| := by simp [hxy, norm_smul, mul_pow, sq_abs]
    _ = |‖z + y‖ ^ 2 - ‖z - x‖ ^ 2| := by
      simp [norm_add_sq_real, norm_sub_sq_real, hzy, hzx, abs_sub_comm]

end InnerProductGeometry

namespace EuclideanGeometry

/-!
### Geometrical results on spheres in Euclidean affine spaces

This section develops some results on spheres in Euclidean affine spaces.
-/


open InnerProductGeometry

variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

/-- If `P` is a point on the line `AB` and `Q` is equidistant from `A` and `B`, then
`AP * BP = abs (BQ ^ 2 - PQ ^ 2)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variantcac736fd98dfe0930fae600a4741da688376aa860b709d425b0984a4db534ea7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variantcac736fd98dfe0930fae600a4741da688376aa860b709d425b0984a4db534ea7.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49548dbc20367c94288544c373ea993b8f703f64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
