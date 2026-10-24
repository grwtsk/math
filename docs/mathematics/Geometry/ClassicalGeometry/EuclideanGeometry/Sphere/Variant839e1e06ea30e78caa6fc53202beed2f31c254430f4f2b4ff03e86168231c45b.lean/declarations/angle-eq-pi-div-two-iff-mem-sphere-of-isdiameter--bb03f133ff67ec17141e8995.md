# angle_eq_pi_div_two_iff_mem_sphere_of_isDiameter

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
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:adda8a1f-44dc-0bee-f8e8-2638c9215698",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd904362-62a7-0fc2-30aa-736d2dfaaccc",
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
  "slug": "angle-eq-pi-div-two-iff-mem-sphere-of-isdiameter--bb03f133ff67ec17141e8995",
  "source": {
    "blob": "a8e1687e754f23f032e9fc12f85edd47b2b39990",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 82,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb03f133ff67ec17141e8995cc74fcf37546e8d6ff115b97eb814f31b2c8f671",
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

Occurrence: `result:cd904362-62a7-0fc2-30aa-736d2dfaaccc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–102.

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

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8e1687e754f23f032e9fc12f85edd47b2b39990` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
