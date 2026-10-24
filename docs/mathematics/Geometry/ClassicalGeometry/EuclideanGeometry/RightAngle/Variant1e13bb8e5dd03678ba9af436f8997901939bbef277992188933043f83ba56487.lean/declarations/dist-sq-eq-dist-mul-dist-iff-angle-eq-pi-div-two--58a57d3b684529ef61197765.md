# dist_sq_eq_dist_mul_dist_iff_angle_eq_pi_div_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc2ef27e-d71b-e202-7a02-3b9f553208f2",
  "kind": "theorem",
  "lexical_name": "dist_sq_eq_dist_mul_dist_iff_angle_eq_pi_div_two",
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
  "slug": "dist-sq-eq-dist-mul-dist-iff-angle-eq-pi-div-two--58a57d3b684529ef61197765",
  "source": {
    "blob": "52cb9d784abbcda21f2d93e8bce4d3f8acac8570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 495,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant1e13bb8e5dd03678ba9af436f8997901939bbef277992188933043f83ba56487.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58a57d3b684529ef611977657aa97722dcd546c69eef9d0924468d5fb70bc7ac",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant1e13bb8e5dd03678ba9af436f8997901939bbef277992188933043f83ba56487.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc2ef27e-d71b-e202-7a02-3b9f553208f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_sq_eq_dist_mul_dist_iff_angle_eq_pi_div_two {p₁ p₂ p₃ p₄ : P}
    (hf : Sbtw ℝ p₁ p₄ p₃) (hc : ∠ p₁ p₄ p₂ = π / 2) :
    dist p₂ p₄ ^ 2 = dist p₁ p₄ * dist p₃ p₄ ↔ ∠ p₁ p₂ p₃ = π / 2 := by
  rw [angle, ← inner_eq_zero_iff_angle_eq_pi_div_two] at hc ⊢
  obtain ⟨-, r, hr, hw⟩ := angle_eq_pi_iff.mp hf.angle₁₂₃_eq_pi
  rw [dist_eq_norm_vsub V p₂ p₄, dist_eq_norm_vsub V p₁ p₄, dist_eq_norm_vsub V p₃ p₄,
    ← vsub_sub_vsub_cancel_right p₁ p₂ p₄, ← vsub_sub_vsub_cancel_right p₃ p₂ p₄, hw]
  set u := p₁ -ᵥ p₄
  set v := p₂ -ᵥ p₄
  have hc' : ⟪v, u⟫ = 0 := (real_inner_comm u v).trans hc
  have hexp : ⟪u - v, r • u - v⟫ = ‖v‖ ^ 2 - ‖u‖ * (-r * ‖u‖) := by
    simp only [inner_sub_left, inner_sub_right, real_inner_smul_right, hc, hc',
      real_inner_self_eq_norm_sq]
    ring
  rw [hexp, norm_smul, Real.norm_eq_abs, abs_of_neg hr, sub_eq_zero, eq_comm]

/-- **Geometric mean theorem** (or right triangle altitude theorem): in a right-angled triangle
`p₁ p₂ p₃` with the right angle at `p₂`, the square of the altitude `dist p₂ p₄` to the
hypotenuse is the product of the two segments `dist p₁ p₄` and `dist p₃ p₄` into which its foot
`p₄` divides the hypotenuse. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant1e13bb8e5dd03678ba9af436f8997901939bbef277992188933043f83ba56487.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant1e13bb8e5dd03678ba9af436f8997901939bbef277992188933043f83ba56487.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52cb9d784abbcda21f2d93e8bce4d3f8acac8570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
