# integrable_paperFT_mul_mu

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:590bb43f-617d-1a22-34f5-a9d9b5ff9f8d",
  "kind": "theorem",
  "lexical_name": "integrable_paperFT_mul_mu",
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
  "slug": "integrable-paperft-mul-mu--e0f4a464e5a28f5fd1377a3b",
  "source": {
    "blob": "db88fa3fedc657aa5a64c7ccf4d29a9c09a5be3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 166,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0f4a464e5a28f5fd1377a3b47f58f37e47d402f01908267e0e61c9ca88d125f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:590bb43f-617d-1a22-34f5-a9d9b5ff9f8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_paperFT_mul_mu {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k)
    (hΓ : GammaFacts) : Integrable (fun τ : ℝ => paperFT k τ * (mu τ : ℂ)) := by
  obtain ⟨Λ, hΛ⟩ := exists_abs_le_of_hasCompactSupport hkc
  obtain ⟨K₂, hK₂, hmu⟩ := abs_mu_le_of_gammaFacts hΓ
  set K₁ : ℝ := (∫ u, ‖k u‖) + ∫ u, ‖deriv (deriv k) u‖ with hK₁
  have hK₁nn : 0 ≤ K₁ := by positivity
  have hmeas : AEStronglyMeasurable (fun τ : ℝ => paperFT k τ * (mu τ : ℂ)) :=
    (integrable_paperFT_ofReal (integrable_fourier_of_contDiff_two hk hkc)).aestronglyMeasurable.mul
      (Complex.continuous_ofReal.comp hΓ.smooth.continuous).aestronglyMeasurable
  have hdom : Integrable (fun τ : ℝ => 2 * K₁ * K₂ * (1 + ‖τ‖) ^ (-(3 / 2) : ℝ)) :=
    (integrable_one_add_norm (by rw [Module.finrank_self]; norm_num)).const_mul _
  refine hdom.mono' hmeas (Eventually.of_forall fun τ => ?_)
  rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, Real.norm_eq_abs]
  have hb : 0 < 1 + |τ| := by linarith [abs_nonneg τ]
  have h1 : ‖paperFT k τ‖ * (1 + τ ^ 2) ≤ K₁ := norm_paperFT_mul_one_add_sq_le hk hΛ τ
  have h2 : |mu τ| ≤ K₂ * (1 + |τ|) ^ (1 / 2 : ℝ) := hmu τ
  have hsq : (1 + |τ|) ^ (2 : ℝ) ≤ 2 * (1 + τ ^ 2) := by
    rw [Real.rpow_two]; nlinarith [sq_abs τ, sq_nonneg (1 - |τ|)]
  -- (1+|τ|)^{1/2} ≤ 2(1+τ²)(1+|τ|)^{-3/2}
  have key : (1 + |τ|) ^ (1 / 2 : ℝ) ≤ 2 * (1 + τ ^ 2) * (1 + |τ|) ^ (-(3 / 2) : ℝ) := by
    rw [show (1 / 2 : ℝ) = 2 + (-(3 / 2)) by norm_num, Real.rpow_add hb]
    exact mul_le_mul_of_nonneg_right hsq (Real.rpow_nonneg hb.le _)
  calc ‖paperFT k τ‖ * |mu τ|
      ≤ ‖paperFT k τ‖ * (K₂ * (1 + |τ|) ^ (1 / 2 : ℝ)) := by gcongr
    _ ≤ ‖paperFT k τ‖ * (K₂ * (2 * (1 + τ ^ 2) * (1 + |τ|) ^ (-(3 / 2) : ℝ))) := by gcongr
    _ = (‖paperFT k τ‖ * (1 + τ ^ 2)) * (2 * K₂ * (1 + |τ|) ^ (-(3 / 2) : ℝ)) := by ring
    _ ≤ K₁ * (2 * K₂ * (1 + |τ|) ^ (-(3 / 2) : ℝ)) := by
        gcongr
    _ = 2 * K₁ * K₂ * (1 + |τ|) ^ (-(3 / 2) : ℝ) := by ring

/-- **The bridge.**  The literature-form explicit formula [eq:EFstd] (`EF_lit`) together with the
Stirling-type facts H-Γ for μ (already a field of `PaperInputs`) implies the paper's
[prop:EF]/[eq:EF] exactly as `Zeta23.ExplicitFormulaPaper` (Hypotheses.lean) states it (App. A). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db88fa3fedc657aa5a64c7ccf4d29a9c09a5be3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
