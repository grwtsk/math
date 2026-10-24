# dist_sq_eq_dist_mul_dist_iff_angle_eq_pi_div_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0304c19349fd79bc24196e02a2332126abbd2a86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 487,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/11ad351e6320dea37e3e3b31da923c20dc718168726fd3079b4312631e3300fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5fc22dc3-709a-4ca6-ac9c-e2a758545efc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f6cb1f2-6798-0938-21a5-d2281c75176f",
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
  "slug": "dist-sq-eq-dist-mul-dist-iff-angle-eq-pi-div-two--0b3123a185375914554fe5e0",
  "source": {
    "blob": "0304c19349fd79bc24196e02a2332126abbd2a86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 487,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant11ad351e6320dea37e3e3b31da923c20dc718168726fd3079b4312631e3300fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b3123a185375914554fe5e0a4764c8045987594c5d4b42142fc5307c23a0cc7",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant11ad351e6320dea37e3e3b31da923c20dc718168726fd3079b4312631e3300fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f6cb1f2-6798-0938-21a5-d2281c75176f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–506.

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

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant11ad351e6320dea37e3e3b31da923c20dc718168726fd3079b4312631e3300fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant11ad351e6320dea37e3e3b31da923c20dc718168726fd3079b4312631e3300fe.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0304c19349fd79bc24196e02a2332126abbd2a86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
