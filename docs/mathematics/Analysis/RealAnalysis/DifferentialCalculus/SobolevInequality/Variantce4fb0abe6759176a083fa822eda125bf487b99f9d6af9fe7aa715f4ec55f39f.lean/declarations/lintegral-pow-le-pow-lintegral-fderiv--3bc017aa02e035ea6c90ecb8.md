# lintegral_pow_le_pow_lintegral_fderiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85f328c6-a7da-7905-56b0-deea3bd63ef2",
  "kind": "theorem",
  "lexical_name": "lintegral_pow_le_pow_lintegral_fderiv",
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
  "slug": "lintegral-pow-le-pow-lintegral-fderiv--3bc017aa02e035ea6c90ecb8",
  "source": {
    "blob": "7f77ea7698c69b09fd175fb6d232115ceab6fe56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 379,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bc017aa02e035ea6c90ecb8190898663ab7ee06686a8b712408952778d04959",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85f328c6-a7da-7905-56b0-deea3bd63ef2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_pow_le_pow_lintegral_fderiv {u : E → F}
    (hu : ContDiff ℝ 1 u) (h2u : HasCompactSupport u)
    {p : ℝ} (hp : Real.HolderConjugate (finrank ℝ E) p) :
    ∫⁻ x, ‖u x‖ₑ ^ p ∂μ ≤
      lintegralPowLePowLIntegralFDerivConst μ p * (∫⁻ x, ‖fderiv ℝ u x‖ₑ ∂μ) ^ p := by
  /- We reduce to the case where `E` is `ℝⁿ`, for which we have already proved the result using
  an explicit basis in `MeasureTheory.lintegral_pow_le_pow_lintegral_fderiv_aux`.
  This proof is not too hard, but takes quite some steps, reasoning about the equivalence
  `e : E ≃ ℝⁿ`, relating the measures on each sides of the equivalence,
  and estimating the derivative using the chain rule. -/
  set C := lintegralPowLePowLIntegralFDerivConst μ p
  let ι := Fin (finrank ℝ E)
  have hιcard : #ι = finrank ℝ E := Fintype.card_fin (finrank ℝ E)
  have : finrank ℝ E = finrank ℝ (ι → ℝ) := by simp [hιcard]
  let e : E ≃L[ℝ] ι → ℝ := ContinuousLinearEquiv.ofFinrankEq this
  have : IsAddHaarMeasure ((volume : Measure (ι → ℝ)).map e.symm) :=
    (e.symm : (ι → ℝ) ≃+ E).isAddHaarMeasure_map _ e.symm.continuous e.symm.symm.continuous
  have hp : Real.HolderConjugate #ι p := by rwa [hιcard]
  have h0p : 0 ≤ p := hp.symm.nonneg
  let c := addHaarScalarFactor μ ((volume : Measure (ι → ℝ)).map e.symm)
  have hc : 0 < c := addHaarScalarFactor_pos_of_isAddHaarMeasure ..
  have h2c : μ = c • ((volume : Measure (ι → ℝ)).map e.symm) := isAddLeftInvariant_eq_smul ..
  have h3c : (c : ℝ≥0∞) ≠ 0 := by simp_rw [ne_eq, ENNReal.coe_eq_zero, hc.ne', not_false_eq_true]
  have h0C : C = (c * ‖(e.symm : (ι → ℝ) →L[ℝ] E)‖₊ ^ p) * (c ^ p)⁻¹ := by
    simp_rw [c, ι, C, e, lintegralPowLePowLIntegralFDerivConst]
  have hC : C * c ^ p = c * ‖(e.symm : (ι → ℝ) →L[ℝ] E)‖₊ ^ p := by
    rw [h0C, inv_mul_cancel_right₀ (NNReal.rpow_pos hc).ne']
  simp only [h2c, ENNReal.smul_def, lintegral_smul_measure, smul_eq_mul]
  let v : (ι → ℝ) → F := u ∘ e.symm
  have hv : ContDiff ℝ 1 v := hu.comp e.symm.contDiff
  have h2v : HasCompactSupport v := h2u.comp_homeomorph e.symm.toHomeomorph
  have :=
  calc ∫⁻ x, ‖u x‖ₑ ^ p ∂(volume : Measure (ι → ℝ)).map e.symm
      = ∫⁻ y, ‖v y‖ₑ ^ p := by
        refine lintegral_map ?_ e.symm.continuous.measurable
        borelize F
        exact hu.continuous.measurable.nnnorm.coe_nnreal_ennreal.pow_const _
    _ ≤ (∫⁻ y, ‖fderiv ℝ v y‖ₑ) ^ p := lintegral_pow_le_pow_lintegral_fderiv_aux hp hv h2v
    _ = (∫⁻ y, ‖(fderiv ℝ u (e.symm y)).comp (fderiv ℝ e.symm y)‖ₑ) ^ p := by
        congr! with y
        apply fderiv_comp _ (hu.differentiable le_rfl _)
        exact e.symm.differentiableAt
    _ ≤ (∫⁻ y, ‖fderiv ℝ u (e.symm y)‖ₑ * ‖(e.symm : (ι → ℝ) →L[ℝ] E)‖ₑ) ^ p := by
        gcongr with y
        rw [e.symm.fderiv]
        apply ContinuousLinearMap.opENorm_comp_le
    _ = (‖(e.symm : (ι → ℝ) →L[ℝ] E)‖ₑ * ∫⁻ y, ‖fderiv ℝ u (e.symm y)‖ₑ) ^ p := by
        rw [lintegral_mul_const, mul_comm]
        fun_prop
    _ = (‖(e.symm : (ι → ℝ) →L[ℝ] E)‖₊ ^ p : ℝ≥0) * (∫⁻ y, ‖fderiv ℝ u (e.symm y)‖ₑ) ^ p := by
        rw [ENNReal.mul_rpow_of_nonneg _ _ h0p, enorm_eq_nnnorm, ← ENNReal.coe_rpow_of_nonneg _ h0p]
    _ = (‖(e.symm : (ι → ℝ) →L[ℝ] E)‖₊ ^ p : ℝ≥0)
        * (∫⁻ x, ‖fderiv ℝ u x‖ₑ ∂(volume : Measure (ι → ℝ)).map e.symm) ^ p := by
        congr
        rw [lintegral_map _ e.symm.continuous.measurable]
        fun_prop
  rw [← ENNReal.mul_le_mul_left h3c ENNReal.coe_ne_top, ← mul_assoc, ← ENNReal.coe_mul, ← hC,
    ENNReal.coe_mul] at this
  rw [ENNReal.mul_rpow_of_nonneg _ _ h0p, ← mul_assoc, ← ENNReal.coe_rpow_of_ne_zero hc.ne']
  exact this

/-- The constant factor occurring in the conclusion of `eLpNorm_le_eLpNorm_fderiv_one`.
It only depends on `E`, `μ` and `p`. -/
irreducible_def eLpNormLESNormFDerivOneConst (p : ℝ) : ℝ≥0 :=
  lintegralPowLePowLIntegralFDerivConst μ p ^ p⁻¹

/-- The **Gagliardo-Nirenberg-Sobolev inequality**.  Let `u` be a continuously differentiable
compactly-supported function `u` on a normed space `E` of finite dimension `n ≥ 2`, equipped
with Haar measure. Then the `Lᵖ` norm of `u`, where `p := n / (n - 1)`, is bounded above by
a constant times the `L¹` norm of the Fréchet derivative of `u`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f77ea7698c69b09fd175fb6d232115ceab6fe56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
