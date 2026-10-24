# tendsto_integral_gaussian_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f36cb436-cf2c-3c2c-8a48-78f821a7ca1b",
  "kind": "lemma",
  "lexical_name": "tendsto_integral_gaussian_smul",
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
  "slug": "tendsto-integral-gaussian-smul--396495bd56ace62c72ebe39e",
  "source": {
    "blob": "113798fb194ea6075be43394a625d05c70f2b656",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 79,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Inversion/Variant5f2f6da3cff8081eef817827f5f657d5bb29169c1ec9c1113cc5a09ac31b5100.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:396495bd56ace62c72ebe39ebb43f0b6660d260c8555c90eb92055e3e25a33cd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Inversion/Variant5f2f6da3cff8081eef817827f5f657d5bb29169c1ec9c1113cc5a09ac31b5100.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f36cb436-cf2c-3c2c-8a48-78f821a7ca1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_integral_gaussian_smul (hf : Integrable f) (h'f : Integrable (𝓕 f)) (v : V) :
    Tendsto (fun (c : ℝ) ↦
      ∫ w : V, ((π * c) ^ (finrank ℝ V / 2 : ℂ) * cexp (-π ^ 2 * c * ‖v - w‖ ^ 2)) • f w)
    atTop (𝓝 (𝓕⁻ (𝓕 f) v)) := by
  have A : Tendsto (fun (c : ℝ) ↦ (∫ w : V, cexp (- c⁻¹ * ‖w‖^2 + 2 * π * I * ⟪v, w⟫)
       • (𝓕 f) w)) atTop (𝓝 (𝓕⁻ (𝓕 f) v)) := by
    have : Integrable (fun w ↦ 𝐞 ⟪w, v⟫ • (𝓕 f) w) := by
      have B : Continuous fun p : V × V => (- innerₗ V) p.1 p.2 := continuous_inner.neg
      simpa using
        (VectorFourier.fourierIntegral_convergent_iff Real.continuous_fourierChar B v).2 h'f
    convert tendsto_integral_cexp_sq_smul this using 4 with c w
    · rw [Submonoid.smul_def, Real.fourierChar_apply, smul_smul, ← Complex.exp_add, real_inner_comm]
      congr 3
      simp only [ofReal_mul, ofReal_ofNat]
      ring
    · simp [fourierIntegralInv_eq]
  have B : Tendsto (fun (c : ℝ) ↦ (∫ w : V,
        𝓕 (fun w ↦ cexp (- c⁻¹ * ‖w‖^2 + 2 * π * I * ⟪v, w⟫)) w • f w)) atTop
      (𝓝 (𝓕⁻ (𝓕 f) v)) := by
    apply A.congr'
    filter_upwards [Ioi_mem_atTop 0] with c (hc : 0 < c)
    have J : Integrable (fun w ↦ cexp (- c⁻¹ * ‖w‖^2 + 2 * π * I * ⟪v, w⟫)) :=
      GaussianFourier.integrable_cexp_neg_mul_sq_norm_add (by simpa) _ _
    simpa using (VectorFourier.integral_fourierIntegral_smul_eq_flip (L := innerₗ V)
      Real.continuous_fourierChar continuous_inner J hf).symm
  apply B.congr'
  filter_upwards [Ioi_mem_atTop 0] with c (hc : 0 < c)
  congr with w
  rw [fourierIntegral_gaussian_innerProductSpace' (by simpa)]
  congr
  · simp
  · simp; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Inversion/Variant5f2f6da3cff8081eef817827f5f657d5bb29169c1ec9c1113cc5a09ac31b5100.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Inversion/Variant5f2f6da3cff8081eef817827f5f657d5bb29169c1ec9c1113cc5a09ac31b5100.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `113798fb194ea6075be43394a625d05c70f2b656` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
