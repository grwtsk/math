# fourier_correlation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08b860ee-bdc0-93e7-f4d1-45bb92660f38",
  "kind": "lemma",
  "lexical_name": "fourier_correlation",
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
  "slug": "fourier-correlation--cc9ba7eebcb5ba76a8b4d864",
  "source": {
    "blob": "4e0195f9616df5711e76892b9ccae6ce22dd4589",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 49,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantdf97ae15998d092406aeb97fcbfd4b274a363ce6c950fc686812ae64f6c25dbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc9ba7eebcb5ba76a8b4d864e210a6a06500adb659d94ee564711b82d6169394",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantdf97ae15998d092406aeb97fcbfd4b274a363ce6c950fc686812ae64f6c25dbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08b860ee-bdc0-93e7-f4d1-45bb92660f38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fourier_correlation (A : ℝ) (hA : 1 ≤ A) (ξ : ℝ) :
    𝓕 (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) ξ =
      (Complex.normSq (𝓕 (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℂ) := by
  rw [correlation_complex_eq_convolution]
  have hf : Integrable (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) :=
    Complex.ofRealCLM.integrable_comp (normalizedTest_integrable A (by linarith))
  have hg : Integrable (fun x ↦ (normalizedTest explicitSecondDerivative A (-x) : ℂ)) :=
    Complex.ofRealCLM.integrable_comp (reflectedTest_integrable A (by linarith))
  rw [Real.fourier_mul_convolution_eq hf hg, fourier_reflected_real, Complex.mul_conj]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantdf97ae15998d092406aeb97fcbfd4b274a363ce6c950fc686812ae64f6c25dbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantdf97ae15998d092406aeb97fcbfd4b274a363ce6c950fc686812ae64f6c25dbb.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e0195f9616df5711e76892b9ccae6ce22dd4589` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
