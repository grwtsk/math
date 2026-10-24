# actualSecondCorrelation_fourier_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:880c21f2-e299-c00f-e309-93ac3a213272",
  "kind": "theorem",
  "lexical_name": "actualSecondCorrelation_fourier_eq",
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
  "slug": "actualsecondcorrelation-fourier-eq--eee22d69d6d8b20087aa960a",
  "source": {
    "blob": "17fe2cd8362b15d5f0144b120b158f76ea9157fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variantf698f925beadb97b39752670f26306d519b0c1965d092fb35b7bb7ba1eba274e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eee22d69d6d8b20087aa960a3b6c66cec6db05a6bff276fd55b40e54fdd6b8f6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variantf698f925beadb97b39752670f26306d519b0c1965d092fb35b7bb7ba1eba274e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:880c21f2-e299-c00f-e309-93ac3a213272`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSecondCorrelation_fourier_eq {A : ℝ} (hA : 1 ≤ A) (ξ : ℝ) :
    𝓕 (deriv (deriv (fun t =>
      (sourceCorrelation explicitSecondDerivative A t : ℂ)))) ξ =
      (-4 * Real.pi^2 : ℝ) *
        ((ξ^2 * Complex.normSq
          (𝓕 (fun x => (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℝ) : ℂ) := by
  let f : ℝ → ℂ := fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ)
  have h4 : ContDiff ℝ 4 f := actualCorrelationComplex_contDiff_four hA
  have h3 : ContDiff ℝ 3 (deriv f) := h4.deriv'
  have h2 : ContDiff ℝ 2 (deriv (deriv f)) := h3.deriv'
  have hs : HasCompactSupport f :=
    (sourceCorrelation_hasCompactSupport A (by linarith)).comp_left
      (g := Complex.ofReal) rfl
  have hf : Integrable f := h4.continuous.integrable_of_hasCompactSupport hs
  have hd : Integrable (deriv f) := h3.continuous.integrable_of_hasCompactSupport hs.deriv
  have hdd : Integrable (deriv (deriv f)) :=
    h2.continuous.integrable_of_hasCompactSupport hs.deriv.deriv
  have hh := congrFun (Real.fourier_deriv hd (h3.differentiable (by norm_num)) hdd) ξ
  rw [Real.fourier_deriv hf (h4.differentiable (by norm_num)) hd] at hh
  change 𝓕 (deriv (deriv f)) ξ = _
  rw [hh]
  simp only [smul_eq_mul]
  dsimp only [f]
  rw [fourier_correlation A hA ξ]
  push_cast
  have hi := Complex.I_mul_I
  calc
    _ = 4 * (Real.pi : ℂ)^2 * (ξ : ℂ)^2 * (Complex.I * Complex.I) *
      (Complex.normSq
        (𝓕 (fun x => (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℂ) := by ring
    _ = _ := by rw [hi]; ring

/-- Integrability of the weighted square is proved before its total integral is evaluated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variantf698f925beadb97b39752670f26306d519b0c1965d092fb35b7bb7ba1eba274e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variantf698f925beadb97b39752670f26306d519b0c1965d092fb35b7bb7ba1eba274e.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17fe2cd8362b15d5f0144b120b158f76ea9157fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
