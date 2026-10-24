# actual_standard_fourier_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a21f961-672f-4add-7a18-033690034403",
  "kind": "lemma",
  "lexical_name": "actual_standard_fourier_mass",
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
  "slug": "actual-standard-fourier-mass--eabdeebd9dc14722a1514b6a",
  "source": {
    "blob": "bf97d4ce0a5c6ce8346417344f4749c7c19b4e55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 91,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variant2808488afaa42ce2e837f99530a2c2eb56c4246460dbd5baabde58dd0b1d3b8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eabdeebd9dc14722a1514b6a5d07bd0ac72e87a2aaed2bac107293c279970246",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variant2808488afaa42ce2e837f99530a2c2eb56c4246460dbd5baabde58dd0b1d3b8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a21f961-672f-4add-7a18-033690034403`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma actual_standard_fourier_mass (A : ℝ) (hA : 1 ≤ A) :
    (∫ ξ, Complex.normSq
      (𝓕 (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ)) = 1 := by
  have hc : Integrable (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) :=
    Complex.ofRealCLM.integrable_comp (sourceCorrelation_integrable A (by linarith))
  have hfc : Integrable (𝓕 (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ))) := by
    have heq : 𝓕 (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) =
        fun ξ ↦ (Complex.normSq
          (𝓕 (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℂ) :=
      funext (fourier_correlation A hA)
    rw [heq]
    exact Complex.ofRealCLM.integrable_comp (standardFourier_square_integrable A hA)
  have hcont : ContinuousAt
      (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) 0 :=
    Complex.continuous_ofReal.continuousAt.comp
      (sourceCorrelation_contDiff A (by linarith)).continuous.continuousAt
  have h := hc.fourierInv_fourier_eq hfc hcont
  rw [Real.fourierInv_eq_fourier_neg, neg_zero, Real.fourier_real_eq_integral_exp_smul] at h
  simp only [mul_zero, Complex.ofReal_zero, zero_mul, Complex.exp_zero, one_smul] at h
  simp_rw [fourier_correlation A hA] at h
  have heq : (∫ ξ, (Complex.normSq
      (𝓕 (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℂ)) =
        ((∫ ξ, Complex.normSq
          (𝓕 (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℝ) : ℂ) :=
    integral_ofReal
  rw [heq, EstimateCorrelation.actual_correlation_at_zero A hA] at h
  exact_mod_cast h

/-- The actual source convention has total Fourier square mass exactly `2π`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variant2808488afaa42ce2e837f99530a2c2eb56c4246460dbd5baabde58dd0b1d3b8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variant2808488afaa42ce2e837f99530a2c2eb56c4246460dbd5baabde58dd0b1d3b8f.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf97d4ce0a5c6ce8346417344f4749c7c19b4e55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
