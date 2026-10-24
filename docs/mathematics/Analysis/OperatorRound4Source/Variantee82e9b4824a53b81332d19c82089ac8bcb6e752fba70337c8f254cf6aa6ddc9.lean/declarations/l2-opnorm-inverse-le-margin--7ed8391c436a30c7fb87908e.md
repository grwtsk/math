# l2_opNorm_inverse_le_margin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7ffd9c4-438b-7b82-67d0-cb5868c8e2ef",
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
  "slug": "l2-opnorm-inverse-le-margin--7ed8391c436a30c7fb87908e",
  "source": {
    "blob": "3c86340ab97b0cc5400acc579cb4a95626c1c877",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 154,
    "path": "GRWTSK/Analysis/OperatorRound4Source/Variantee82e9b4824a53b81332d19c82089ac8bcb6e752fba70337c8f254cf6aa6ddc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ed8391c436a30c7fb87908e147896034951076cc166ec3d70bcfa0b369fc53d",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorRound4Source/Variantee82e9b4824a53b81332d19c82089ac8bcb6e752fba70337c8f254cf6aa6ddc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7ffd9c4-438b-7b82-67d0-cb5868c8e2ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–181.

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
  apply ContinuousLinearMap.opNorm_le_bound _ (by positivity)
  intro x
  let y := Matrix.toEuclideanLin M⁻¹ x
  have hcancel : Matrix.toEuclideanLin M y = x := by
    change Matrix.toEuclideanLin M (Matrix.toEuclideanLin M⁻¹ x) = x
    rw [← LinearMap.comp_apply, ← Matrix.toLpLin_mul (q := 2),
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

[Verification target and public status](../../../../../verification/Analysis/OperatorRound4Source/Variantee82e9b4824a53b81332d19c82089ac8bcb6e752fba70337c8f254cf6aa6ddc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/OperatorRound4Source/Variantee82e9b4824a53b81332d19c82089ac8bcb6e752fba70337c8f254cf6aa6ddc9.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c86340ab97b0cc5400acc579cb4a95626c1c877` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
