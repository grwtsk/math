# standard_correlation_cosine_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9195805c3a64b0572ffb49ae24da758b0b905db2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f70df5c4-875e-f2e3-80ce-00007a1c8fe5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a5b9fb8f-221e-0504-eb35-549687bc63df",
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
  "slug": "standard-correlation-cosine-integral--df46ac266038b183574fc251",
  "source": {
    "blob": "9195805c3a64b0572ffb49ae24da758b0b905db2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 29,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df46ac266038b183574fc251f5d7b7cd5122d70cc8ae47d88d7e935937430d80",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5b9fb8f-221e-0504-eb35-549687bc63df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–77.

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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9195805c3a64b0572ffb49ae24da758b0b905db2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
