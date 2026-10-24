# l2_opNorm_inverse_le_margin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8154894-5777-1d6e-aa4e-e994fb847152",
  "kind": "theorem",
  "lexical_name": "l2_opNorm_inverse_le_margin",
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
  "slug": "l2-opnorm-inverse-le-margin--432de2a8d77dbc83f01a7a3c",
  "source": {
    "blob": "8352748bd2c0f99dbb9a5d95ebb59b0daa8cc180",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 260,
    "path": "GRWTSK/Topology/GeneralTopology/BoundsRound3Source/Variant0377a280998231f0d529a21a522e647fc85a4e0d8c97b2c403b41229da8c17f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:432de2a8d77dbc83f01a7a3c316bc8bd163994a5457f12a464bcf3f02518af91",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundsRound3Source/Variant0377a280998231f0d529a21a522e647fc85a4e0d8c97b2c403b41229da8c17f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8154894-5777-1d6e-aa4e-e994fb847152`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem l2_opNorm_inverse_le_margin (M : Matrix (Fin k) (Fin k) ℝ)
    (hM : ‖M‖ ≤ 1) (δ : ℝ) (hδ : 0 < δ) (hdet : δ ≤ |M.det|) :
    ‖M⁻¹‖ ≤ δ⁻¹ := by
  have hne : M.det ≠ 0 := by
    intro h
    simp only [h, abs_zero] at hdet
    exact (not_le_of_gt hδ) hdet
  rw [Matrix.l2_opNorm_def]
  apply ContinuousLinearMap.opNorm_le_bound (by positivity)
  intro x
  let y := Matrix.toEuclideanLin M⁻¹ x
  have hcancel : Matrix.toEuclideanLin M y = x := by
    change Matrix.toEuclideanLin M (Matrix.toEuclideanLin M⁻¹ x) = x
    rw [← LinearMap.comp_apply, ← Matrix.toLpLin_mul,
      Matrix.mul_nonsing_inv M (isUnit_iff_ne_zero.mpr hne), Matrix.toLpLin_one]
    rfl
  have h := det_sq_mul_norm_sq_le_image M hM y
  rw [hcancel] at h
  have hsq : δ ^ 2 ≤ M.det ^ 2 := by
    simpa only [sq_abs] using (sq_le_sq₀ (le_of_lt hδ) (abs_nonneg _)).mpr hdet
  have hle : δ * ‖y‖ ≤ ‖x‖ := by
    apply (sq_le_sq₀ (mul_nonneg hδ.le (norm_nonneg _)) (norm_nonneg _)).mp
    rw [mul_pow]
    exact (mul_le_mul_of_nonneg_right hsq (sq_nonneg _)).trans h
  change ‖y‖ ≤ δ⁻¹ * ‖x‖
  exact (le_inv_mul_iff₀ hδ).mpr hle

/-- All three operators of a controlled pivot have the same explicit budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundsRound3Source/Variant0377a280998231f0d529a21a522e647fc85a4e0d8c97b2c403b41229da8c17f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundsRound3Source/Variant0377a280998231f0d529a21a522e647fc85a4e0d8c97b2c403b41229da8c17f4.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8352748bd2c0f99dbb9a5d95ebb59b0daa8cc180` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
