# actualSecondCorrelation_fourier_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0124a2d6-fb97-bec6-1b83-33cd61888f0e",
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
  "slug": "actualsecondcorrelation-fourier-eq--ee96b7c2f5075ff2a6ee78c3",
  "source": {
    "blob": "1552bcbaedaeee3166078a52e191bb780476d51f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 44,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variantb703f44d1a1d3cf99434e4d3c0c5ab419a6a0f457d13671dcecfba1ea208be8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee96b7c2f5075ff2a6ee78c33cb89990e278b7f7ba05d001e081903dfb096778",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variantb703f44d1a1d3cf99434e4d3c0c5ab419a6a0f457d13671dcecfba1ea208be8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0124a2d6-fb97-bec6-1b83-33cd61888f0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–76.

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
  have hf := h4.continuous.integrable_of_hasCompactSupport hs
  have hd := h3.continuous.integrable_of_hasCompactSupport hs.deriv
  have hdd := h2.continuous.integrable_of_hasCompactSupport hs.deriv.deriv
  have hh := congrFun (Real.fourier_deriv hd (h3.differentiable (by norm_num)) hdd) ξ
  rw [Real.fourier_deriv hf (h4.differentiable (by norm_num)) hd] at hh
  change 𝓕 (deriv (deriv f)) ξ = _
  rw [hh, smul_eq_mul, smul_eq_mul]
  dsimp only [f]
  rw [fourier_correlation A hA ξ]
  push_cast
  have hi := Complex.I_mul_I
  simp only [Complex.ofReal_pow]
  calc
    _ = 4 * (Real.pi : ℂ)^2 * (ξ : ℂ)^2 * (Complex.I * Complex.I) *
      (Complex.normSq
        (𝓕 (fun x => (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℂ) := by ring
    _ = _ := by rw [hi]; ring

end
end FormalResearch.RiemannHypothesis.SourceActualSecondFourierMoment
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variantb703f44d1a1d3cf99434e4d3c0c5ab419a6a0f457d13671dcecfba1ea208be8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variantb703f44d1a1d3cf99434e4d3c0c5ab419a6a0f457d13671dcecfba1ea208be8f.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1552bcbaedaeee3166078a52e191bb780476d51f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
