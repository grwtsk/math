# dist_div_cos_oangle_center_div_two_eq_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a8e1687e754f23f032e9fc12f85edd47b2b39990",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 369,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d91021df-6b0b-91e1-3c27-65a5a509fae8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1510624a-3bf2-da09-c7df-b2296c9b73e3",
  "kind": "theorem",
  "lexical_name": "dist_div_cos_oangle_center_div_two_eq_radius",
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
  "slug": "dist-div-cos-oangle-center-div-two-eq-radius--2ce2a043b645f5a30e7f84be",
  "source": {
    "blob": "a8e1687e754f23f032e9fc12f85edd47b2b39990",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 369,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ce2a043b645f5a30e7f84be3862d40673a941bba7eeaf80dcbf82430e70a7c8",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1510624a-3bf2-da09-c7df-b2296c9b73e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_div_cos_oangle_center_div_two_eq_radius {s : Sphere P} {p₁ p₂ : P} (hp₁ : p₁ ∈ s)
    (hp₂ : p₂ ∈ s) (h : p₁ ≠ p₂) :
    dist p₁ p₂ / Real.Angle.cos (∡ p₂ p₁ s.center) / 2 = s.radius := by
  rw [div_right_comm, div_eq_mul_inv _ (2 : ℝ), mul_comm,
    show (2 : ℝ)⁻¹ * dist p₁ p₂ = dist p₁ (midpoint ℝ p₁ p₂) by simp, ← mem_sphere.1 hp₁, ←
    tan_div_two_smul_rotation_pi_div_two_vadd_midpoint_eq_center hp₁ hp₂ h, ←
    oangle_midpoint_rev_left, oangle, vadd_vsub_assoc,
    show p₂ -ᵥ p₁ = (2 : ℝ) • (midpoint ℝ p₁ p₂ -ᵥ p₁) by simp, map_smul, smul_smul,
    div_mul_cancel₀ _ (two_ne_zero' ℝ), @dist_eq_norm_vsub' V, @dist_eq_norm_vsub' V,
    vadd_vsub_assoc, add_comm, o.oangle_add_right_smul_rotation_pi_div_two, Real.Angle.cos_coe,
    Real.cos_arctan]
  · norm_cast
    rw [one_div, div_inv_eq_mul, ← mul_self_inj (by positivity) (by positivity),
      norm_add_sq_eq_norm_sq_add_norm_sq_real (o.inner_smul_rotation_pi_div_two_right _ _),
      ← mul_assoc, mul_comm, mul_comm _ (√_), ← mul_assoc, ← mul_assoc,
      Real.mul_self_sqrt (by positivity), norm_smul, LinearIsometryEquiv.norm_map]
    conv_rhs =>
      rw [← mul_assoc, mul_comm _ ‖Real.Angle.tan _‖, ← mul_assoc, Real.norm_eq_abs,
        abs_mul_abs_self]
    ring
  · simpa using h.symm

/-- Given two points on a circle, twice the radius of that circle may be expressed explicitly as
the distance between those two points divided by the cosine of the angle between the chord and
the radius at one of those points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8e1687e754f23f032e9fc12f85edd47b2b39990` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
