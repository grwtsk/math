# sourceCorrelation_eq_integral_cos_fourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d5cc76cb00a3768d3a62db256289e86000f088e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/382cd862e5e4deb81845b24a5a34f529325660f49e8cfbded24978b6a2aadfb3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6aa2678e-7716-8227-83bc-27030776cfab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45cee078-dd0a-e034-cadb-c59b14cb1382",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_eq_integral_cos_fourier",
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
  "slug": "sourcecorrelation-eq-integral-cos-fourier--2e22264cecdb259eba2de3e6",
  "source": {
    "blob": "5d5cc76cb00a3768d3a62db256289e86000f088e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 83,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant382cd862e5e4deb81845b24a5a34f529325660f49e8cfbded24978b6a2aadfb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e22264cecdb259eba2de3e61aba991826b10ca14fcf63436deb9b951dd570ed",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant382cd862e5e4deb81845b24a5a34f529325660f49e8cfbded24978b6a2aadfb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45cee078-dd0a-e034-cadb-c59b14cb1382`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_eq_integral_cos_fourier (A t : ℝ) (hA : 1 ≤ A) :
    sourceCorrelation explicitSecondDerivative A t =
      ∫ ξ : ℝ, Real.cos (2 * Real.pi * ξ * t) *
        Complex.normSq (𝓕 (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) := by
  have hn : Integrable (fun ξ : ℝ ↦
      (Complex.normSq (𝓕 (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℂ)) := by
    convert fourier_sourceCorrelation_integrable A hA using 1
    funext ξ
    exact (SourcePlancherel.fourier_correlation A hA ξ).symm
  have hi : Integrable (fun ξ : ℝ ↦
      Complex.exp ((2 * Real.pi * ξ * t : ℝ) * Complex.I) *
        (Complex.normSq
          (𝓕 (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℂ)) := by
    apply hn.bdd_mul (c := 1)
    · exact (by fun_prop : Continuous (fun ξ : ℝ ↦
        Complex.exp ((2 * Real.pi * ξ * t : ℝ) * Complex.I))).aestronglyMeasurable
    · filter_upwards [] with ξ
      simp [Complex.norm_exp]
  have heq := congrArg Complex.re (sourceCorrelation_eq_inverseFourier A t hA)
  have hre : (∫ ξ : ℝ, Complex.exp ((2 * Real.pi * ξ * t : ℝ) * Complex.I) *
      (Complex.normSq (𝓕 (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℂ)).re =
      ∫ ξ : ℝ, (Complex.exp ((2 * Real.pi * ξ * t : ℝ) * Complex.I) *
        (Complex.normSq
          (𝓕 (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℂ)).re :=
    (integral_re hi).symm
  rw [hre] at heq
  simpa [Complex.exp_re, Complex.mul_re] using heq

/-- The source convention gives the actual correlation as a cosine observation of its density. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant382cd862e5e4deb81845b24a5a34f529325660f49e8cfbded24978b6a2aadfb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant382cd862e5e4deb81845b24a5a34f529325660f49e8cfbded24978b6a2aadfb3.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d5cc76cb00a3768d3a62db256289e86000f088e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
