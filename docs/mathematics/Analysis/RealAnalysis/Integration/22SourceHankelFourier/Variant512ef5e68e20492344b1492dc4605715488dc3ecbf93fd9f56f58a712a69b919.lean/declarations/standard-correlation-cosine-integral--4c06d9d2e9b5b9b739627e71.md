# standard_correlation_cosine_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c121720-191e-5610-d5b5-9e4a28ff3045",
  "kind": "theorem",
  "lexical_name": "standard_correlation_cosine_integral",
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
  "slug": "standard-correlation-cosine-integral--4c06d9d2e9b5b9b739627e71",
  "source": {
    "blob": "9d89c37cf0d058a8c7772d9ad13d0c4bd8dc6add",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/22SourceHankelFourier/Variant512ef5e68e20492344b1492dc4605715488dc3ecbf93fd9f56f58a712a69b919.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c06d9d2e9b5b9b739627e711ff34d95572bdd1f67ec89b4f4d54077f194d076",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/22SourceHankelFourier/Variant512ef5e68e20492344b1492dc4605715488dc3ecbf93fd9f56f58a712a69b919.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c121720-191e-5610-d5b5-9e4a28ff3045`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem standard_correlation_cosine_integral {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    (∫ ξ : ℝ, Real.cos (2 * Real.pi * ξ * t) * Complex.normSq
      (𝓕 (fun x : ℝ ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ)) =
      sourceCorrelation explicitSecondDerivative A t := by
  have hc : Integrable (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) :=
    Complex.ofRealCLM.integrable_comp (sourceCorrelation_integrable A (by linarith))
  have hfc : Integrable (𝓕 (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ))) := by
    have heq : 𝓕 (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) =
        fun ξ ↦ (Complex.normSq
          (𝓕 (fun x : ℝ ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℂ) :=
      funext (fourier_correlation A hA)
    rw [heq]
    exact Complex.ofRealCLM.integrable_comp (standardFourier_square_integrable A hA)
  have hcont : ContinuousAt
      (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) t :=
    Complex.continuous_ofReal.continuousAt.comp
      (sourceCorrelation_contDiff A (by linarith)).continuous.continuousAt
  have h := hc.fourierInv_fourier_eq hfc hcont
  rw [Real.fourierInv_eq_fourier_neg, Real.fourier_real_eq_integral_exp_smul] at h
  simp_rw [fourier_correlation A hA, smul_eq_mul] at h
  let S : ℝ → ℝ := fun ξ ↦ Complex.normSq
    (𝓕 (fun x : ℝ ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ)
  have hint : Integrable (fun ξ : ℝ ↦
      Complex.exp (((2 * Real.pi * ξ * t : ℝ) : ℂ) * Complex.I) * (S ξ : ℂ)) := by
    apply (Complex.ofRealCLM.integrable_comp (standardFourier_square_integrable A hA)).bdd_mul
      (c := 1)
    · exact (show Continuous (fun ξ : ℝ ↦
        Complex.exp (((2 * Real.pi * ξ * t : ℝ) : ℂ) * Complex.I)) by fun_prop).aestronglyMeasurable
    · filter_upwards [] with ξ
      simp only [Complex.norm_exp_ofReal_mul_I, le_refl]
  have heq : (∫ ξ : ℝ,
      Complex.exp (((2 * Real.pi * ξ * t : ℝ) : ℂ) * Complex.I) * (S ξ : ℂ)) =
      (sourceCorrelation explicitSecondDerivative A t : ℂ) := by
    convert h using 1
    congr 1
    funext ξ
    congr 2
    push_cast
    ring
  have hre := congrArg Complex.re heq
  have hi : (∫ ξ : ℝ,
      (Complex.exp (((2 * Real.pi * ξ * t : ℝ) : ℂ) * Complex.I) * (S ξ : ℂ)).re) =
      (∫ ξ : ℝ,
      Complex.exp (((2 * Real.pi * ξ * t : ℝ) : ℂ) * Complex.I) * (S ξ : ℂ)).re :=
    integral_re hint
  rw [← hi] at hre
  simpa only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, mul_zero,
    sub_zero, Complex.exp_ofReal_mul_I_re, S] using hre

/-- Every finite phase has a genuinely integrable source-square product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/22SourceHankelFourier/Variant512ef5e68e20492344b1492dc4605715488dc3ecbf93fd9f56f58a712a69b919.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/22SourceHankelFourier/Variant512ef5e68e20492344b1492dc4605715488dc3ecbf93fd9f56f58a712a69b919.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d89c37cf0d058a8c7772d9ad13d0c4bd8dc6add` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
