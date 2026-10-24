# angle_eq_pi_div_two_iff_mem_sphere_of_isDiameter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9e1ea03-7756-ff77-1d0f-86bd61abbe16",
  "kind": "theorem",
  "lexical_name": "angle_eq_pi_div_two_iff_mem_sphere_of_isDiameter",
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
  "slug": "angle-eq-pi-div-two-iff-mem-sphere-of-isdiameter--8f05e59a91b8855b0a8bee0f",
  "source": {
    "blob": "52a26f7cc9e8e4f28a50419588fbdcc6bca91460",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 90,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf074e2f88d68e3e03132d8803aa0f5136a4bafbee65f054d99d142b39eb0a31f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f05e59a91b8855b0a8bee0fb846290d5bae6ecfa31c8a337a37a128b6a42d08",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf074e2f88d68e3e03132d8803aa0f5136a4bafbee65f054d99d142b39eb0a31f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9e1ea03-7756-ff77-1d0f-86bd61abbe16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angle_eq_pi_div_two_iff_mem_sphere_of_isDiameter {p₁ p₂ p₃ : P} {s : Sphere P}
    (hd : s.IsDiameter p₁ p₃) :
    ∠ p₁ p₂ p₃ = π / 2 ↔ p₂ ∈ s := by
  rw [mem_sphere', EuclideanGeometry.angle,
    ← InnerProductGeometry.inner_eq_zero_iff_angle_eq_pi_div_two]
  let o := s.center
  have h_center : o = midpoint ℝ p₁ p₃ := hd.midpoint_eq_center.symm
  rw [← vsub_add_vsub_cancel p₁ o p₂, ← vsub_add_vsub_cancel p₃ o p₂,
    inner_add_left, inner_add_right, inner_add_right]
  have h_opp : p₁ -ᵥ o = -(p₃ -ᵥ o) := by
    rw [h_center, left_vsub_midpoint, right_vsub_midpoint, ← smul_neg, neg_vsub_eq_vsub_rev]
  rw [h_opp, inner_neg_left, inner_neg_left, real_inner_comm (p₃ -ᵥ o) (o -ᵥ p₂)]
  ring_nf
  rw [neg_add_eq_zero, real_inner_self_eq_norm_sq, ← dist_eq_norm_vsub,
    real_inner_self_eq_norm_sq, ← dist_eq_norm_vsub, sq_eq_sq₀ dist_nonneg dist_nonneg,
    mem_sphere.mp hd.right_mem]
  exact eq_comm

/-- **Thales' theorem**: For three distinct points, the angle at the second point
is a right angle if and only if the second point lies on the sphere having the first and third
points as diameter endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf074e2f88d68e3e03132d8803aa0f5136a4bafbee65f054d99d142b39eb0a31f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf074e2f88d68e3e03132d8803aa0f5136a4bafbee65f054d99d142b39eb0a31f.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52a26f7cc9e8e4f28a50419588fbdcc6bca91460` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
