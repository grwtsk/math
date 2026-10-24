# compact_correlation_eq_integral_cos_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:740f3edc-1924-b0c5-97d5-fb1b72ce5742",
  "kind": "theorem",
  "lexical_name": "compact_correlation_eq_integral_cos_source",
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
  "slug": "compact-correlation-eq-integral-cos-source--49cd5b1c70501a559bbead38",
  "source": {
    "blob": "fb0f2f3e68b09d9620a4aa67786fcbcadc7e322d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 397,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49cd5b1c70501a559bbead388e1d2561f795d7e51e0cc291ecd8e7df3f062018",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:740f3edc-1924-b0c5-97d5-fb1b72ce5742`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compact_correlation_eq_integral_cos_source (v : ℝ → ℝ)
    (hv : Continuous v) (hcv : HasCompactSupport v)
    (hsquare : Integrable (fun ξ ↦ Complex.normSq (sourceFourier v ξ))) (t : ℝ) :
    correlation v t = ∫ ξ, Real.cos (ξ * t) *
      (Complex.normSq (sourceFourier v ξ) / (2 * Real.pi)) := by
  have hiv : Integrable v := hv.integrable_of_hasCompactSupport hcv
  have hir : Integrable (fun x ↦ v (-x)) := hiv.comp_neg
  have hconv : correlation v = v ⋆ (fun x ↦ v (-x)) := by
    funext s
    unfold correlation
    rw [convolution_lsmul]
    apply integral_congr_ae
    filter_upwards [] with x
    simp [neg_sub]
  have hi : Integrable (fun s ↦ (correlation v s : ℂ)) := by
    apply Complex.ofRealCLM.integrable_comp
    change Integrable (correlation v)
    rw [hconv]
    exact hiv.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hir
  have hc : Continuous (fun s ↦ (correlation v s : ℂ)) := by
    apply Complex.continuous_ofReal.comp
    rw [hconv]
    exact hcv.continuous_convolution_left (ContinuousLinearMap.lsmul ℝ ℝ) hv
      hir.locallyIntegrable
  have hcomplex : (fun s ↦ (correlation v s : ℂ)) =
      (fun x ↦ (v x : ℂ)) ⋆[ContinuousLinearMap.mul ℂ ℂ]
        (fun x ↦ (v (-x) : ℂ)) := by
    funext s
    unfold correlation
    calc
      _ = ∫ x, ((v x * v (x - s) : ℝ) : ℂ) := integral_ofReal.symm
      _ = _ := by
        rw [convolution]
        apply integral_congr_ae
        filter_upwards [] with x
        simp [neg_sub]
  have hfourier (ξ : ℝ) :
      𝓕 (fun s ↦ (correlation v s : ℂ)) ξ =
        (Complex.normSq (𝓕 (fun x ↦ (v x : ℂ)) ξ) : ℂ) := by
    have hf : Integrable (fun x ↦ (v x : ℂ)) := Complex.ofRealCLM.integrable_comp hiv
    have hg : Integrable (fun x ↦ (v (-x) : ℂ)) := Complex.ofRealCLM.integrable_comp hir
    rw [hcomplex, Real.fourier_mul_convolution_eq hf hg,
      SourcePlancherel.fourier_reflected_real, Complex.mul_conj]
  have hstd : Integrable (fun ξ ↦ Complex.normSq (𝓕 (fun x ↦ (v x : ℂ)) ξ)) := by
    simp_rw [SourcePlancherel.standardFourier_eq_sourceFourier]
    exact (integrable_comp_mul_left_iff _
      (neg_ne_zero.mpr (mul_ne_zero two_ne_zero Real.pi_ne_zero))).mpr hsquare
  have hfc : Integrable (𝓕 (fun s ↦ (correlation v s : ℂ))) := by
    convert Complex.ofRealCLM.integrable_comp hstd using 1
    funext ξ
    exact hfourier ξ
  have hinv : (correlation v t : ℂ) =
      ∫ ξ, Complex.exp ((2 * Real.pi * ξ * t : ℝ) * Complex.I) *
        (Complex.normSq (𝓕 (fun x ↦ (v x : ℂ)) ξ) : ℂ) := by
    have heq := hi.fourierInv_fourier_eq hfc (hc.continuousAt (x := t))
    rw [← heq, Real.fourierInv_eq']
    apply integral_congr_ae
    filter_upwards [] with ξ
    rw [hfourier ξ]
    simp only [smul_eq_mul, RCLike.inner_apply, conj_trivial,
      Complex.ofReal_mul, Complex.ofReal_ofNat]
    congr 2
    ring
  have hcinv : Integrable (fun ξ : ℝ ↦
      Complex.exp ((2 * Real.pi * ξ * t : ℝ) * Complex.I) *
        (Complex.normSq (𝓕 (fun x ↦ (v x : ℂ)) ξ) : ℂ)) := by
    apply (Complex.ofRealCLM.integrable_comp hstd).bdd_mul (c := 1)
    · exact (by fun_prop : Continuous (fun ξ : ℝ ↦
        Complex.exp ((2 * Real.pi * ξ * t : ℝ) * Complex.I))).aestronglyMeasurable
    · filter_upwards [] with ξ
      simp [Complex.norm_exp]
  have hcos : correlation v t = ∫ ξ, Real.cos (2 * Real.pi * ξ * t) *
      Complex.normSq (𝓕 (fun x ↦ (v x : ℂ)) ξ) := by
    have heq := congrArg Complex.re hinv
    have hre : (∫ ξ, Complex.exp ((2 * Real.pi * ξ * t : ℝ) * Complex.I) *
        (Complex.normSq (𝓕 (fun x ↦ (v x : ℂ)) ξ) : ℂ)).re =
        ∫ ξ, (Complex.exp ((2 * Real.pi * ξ * t : ℝ) * Complex.I) *
          (Complex.normSq (𝓕 (fun x ↦ (v x : ℂ)) ξ) : ℂ)).re :=
      (integral_re hcinv).symm
    rw [hre] at heq
    simpa [Complex.exp_re, Complex.mul_re] using heq
  rw [hcos]
  simp_rw [SourcePlancherel.standardFourier_eq_sourceFourier]
  have heq : (fun ξ : ℝ ↦ Real.cos (2 * Real.pi * ξ * t) *
      Complex.normSq (sourceFourier v (-(2 * Real.pi) * ξ))) =
      (fun ξ : ℝ ↦ Real.cos (ξ * t) * Complex.normSq (sourceFourier v ξ)) ∘
        (fun ξ : ℝ ↦ -(2 * Real.pi) * ξ) := by
    funext ξ
    simp only [Function.comp_apply]
    rw [show -(2 * Real.pi) * ξ * t = -(2 * Real.pi * ξ * t) by ring, Real.cos_neg]
  rw [heq]
  change (∫ ξ : ℝ, (fun η : ℝ ↦ Real.cos (η * t) *
      Complex.normSq (sourceFourier v η)) (-(2 * Real.pi) * ξ)) = _
  rw [Measure.integral_comp_mul_left (fun ξ : ℝ ↦ Real.cos (ξ * t) *
    Complex.normSq (sourceFourier v ξ)) (-(2 * Real.pi))]
  have habs : |(-(2 * Real.pi))⁻¹| = (2 * Real.pi)⁻¹ := by
    rw [inv_neg, abs_neg, abs_of_pos (inv_pos.mpr (mul_pos (by norm_num) Real.pi_pos))]
  rw [habs, smul_eq_mul, ← integral_const_mul]
  apply integral_congr_ae
  filter_upwards [] with ξ
  ring

/-- The exact zeroth fixed kernel is the autocorrelation of the actual nonnegative bump. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb0f2f3e68b09d9620a4aa67786fcbcadc7e322d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
