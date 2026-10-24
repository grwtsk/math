# norm_toLpₗ_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4fd53f6-cb05-fc25-5c15-0c8a245641ba",
  "kind": "lemma",
  "lexical_name": "norm_toLpₗ_le",
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
  "slug": "norm-tolp-le--69bae7904bd7f685fc06656e",
  "source": {
    "blob": "7b165b0f38ca1f52d783469a98a2885f6182ec81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 80,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69bae7904bd7f685fc06656e208c599bdf93a7bd57859e3524a800759a52831e",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4fd53f6-cb05-fc25-5c15-0c8a245641ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_toLpₗ_le [OpensMeasurableSpace E] (L : Dual 𝕜 E) :
    ‖L.toLpₗ μ p‖ ≤ ‖L‖ * (eLpNorm id p μ).toReal := by
  by_cases h_Lp : MemLp id p μ
  swap
  · simp only [h_Lp, not_false_eq_true, toLpₗ_of_not_memLp, Lp.norm_zero]
    positivity
  by_cases hp : p = 0
  · simp only [h_Lp, toLpₗ_apply, Lp.norm_toLp]
    simp [hp]
  by_cases hp_top : p = ∞
  · simp only [hp_top, Dual.toLpₗ_apply h_Lp, Lp.norm_toLp, eLpNorm_exponent_top] at h_Lp ⊢
    simp only [eLpNormEssSup, id_eq]
    suffices (essSup (fun x ↦ ‖L x‖ₑ) μ).toReal ≤ (essSup (fun x ↦ ‖L‖ₑ *‖x‖ₑ) μ).toReal by
      rwa [ENNReal.essSup_const_mul, ENNReal.toReal_mul, toReal_enorm] at this
    gcongr
    · rw [ENNReal.essSup_const_mul]
      exact ENNReal.mul_ne_top (by simp) h_Lp.eLpNorm_ne_top
    · exact essSup_mono_ae <| ae_of_all _ L.le_opNorm_enorm
  have h0 : 0 < p.toReal := by simp [ENNReal.toReal_pos_iff, pos_iff_ne_zero, hp, Ne.lt_top hp_top]
  suffices ‖L.toLpₗ μ p‖
      ≤ (‖L‖ₑ ^ p.toReal * ∫⁻ x, ‖x‖ₑ ^ p.toReal ∂μ).toReal ^ p.toReal⁻¹ by
    refine this.trans_eq ?_
    simp only [ENNReal.toReal_mul]
    rw [← ENNReal.toReal_rpow, Real.mul_rpow (by positivity) (by positivity),
      ← Real.rpow_mul (by positivity), mul_inv_cancel₀ h0.ne', Real.rpow_one, toReal_enorm]
    rw [eLpNorm_eq_lintegral_rpow_enorm (by simp [hp]) hp_top, ENNReal.toReal_rpow]
    simp
  rw [Dual.toLpₗ_apply h_Lp, Lp.norm_toLp, eLpNorm_eq_lintegral_rpow_enorm (by simp [hp]) hp_top]
  simp only [ENNReal.toReal_ofNat, ENNReal.rpow_ofNat, one_div]
  refine ENNReal.toReal_le_of_le_ofReal (by positivity) ?_
  suffices ∫⁻ x, ‖L x‖ₑ ^ p.toReal ∂μ ≤ ‖L‖ₑ ^ p.toReal * ∫⁻ x, ‖x‖ₑ ^ p.toReal ∂μ by
    rw [← ENNReal.ofReal_rpow_of_nonneg (by positivity) (by positivity)]
    gcongr
    rwa [ENNReal.ofReal_toReal]
    refine ENNReal.mul_ne_top (by simp) ?_
    have h := h_Lp.eLpNorm_ne_top
    rw [eLpNorm_eq_lintegral_rpow_enorm (by simp [hp]) hp_top] at h
    simpa [h0] using h
  calc ∫⁻ x, ‖L x‖ₑ ^ p.toReal ∂μ
  _ ≤ ∫⁻ x, ‖L‖ₑ ^ p.toReal * ‖x‖ₑ ^ p.toReal ∂μ := by
    refine lintegral_mono fun x ↦ ?_
    rw [← ENNReal.mul_rpow_of_nonneg]
    swap; · positivity
    gcongr
    exact L.le_opNorm_enorm x
  _ = ‖L‖ₑ ^ p.toReal * ∫⁻ x, ‖x‖ₑ ^ p.toReal ∂μ := by rw [lintegral_const_mul]; fun_prop

end LinearMap

section ContinuousLinearMap

variable {𝕜 : Type*} [RCLike 𝕜] [NormedSpace 𝕜 E] [OpensMeasurableSpace E]

/-- Continuous linear map from the dual to `Lp` equal to `MemLp.toLp` if `MemLp id p μ`
and to 0 otherwise. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b165b0f38ca1f52d783469a98a2885f6182ec81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
