# error_rawLogarithmicEnergy_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2e6478b-417a-c9b3-7b1d-08fcc241dbe8",
  "kind": "theorem",
  "lexical_name": "error_rawLogarithmicEnergy_tendsto_zero",
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
  "slug": "error-rawlogarithmicenergy-tendsto-zero--a0f3bafeefab813fb9cec4b5",
  "source": {
    "blob": "454ae8e58815f814e2757dfb894ad1659fa5f695",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 136,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0f3bafeefab813fb9cec4b55f7877c70e9c28b949ca3556eb260a2ce3bcaf6c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2e6478b-417a-c9b3-7b1d-08fcc241dbe8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem error_rawLogarithmicEnergy_tendsto_zero {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated] (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ rawLogarithmicEnergy
      (fun x ↦ smoothedTest A (ε i) (hε i) x - actualTest A x)) l (𝓝 0) := by
  have hbound : ∀ᶠ i in l, ∀ᵐ ξ ∂volume,
      ‖logarithmicWeight ξ * Complex.normSq
        (sourceFourier (fun x ↦ smoothedTest A (ε i) (hε i) x - actualTest A x) ξ)‖ ≤
      4 * (logarithmicWeight ξ * Complex.normSq (sourceFourier (actualTest A) ξ)) := by
    exact Filter.Eventually.of_forall fun i ↦ Filter.Eventually.of_forall fun ξ ↦ by
      rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg (logarithmicWeight_nonneg ξ)
        (Complex.normSq_nonneg _))]
      have h := mul_le_mul_of_nonneg_left (sourceFourier_testError_normSq_le A (ε i) hA (hε i) ξ)
        (logarithmicWeight_nonneg ξ)
      nlinarith
  have hpoint : ∀ᵐ ξ ∂volume, Tendsto (fun i ↦ logarithmicWeight ξ * Complex.normSq
      (sourceFourier (fun x ↦ smoothedTest A (ε i) (hε i) x - actualTest A x) ξ)) l (𝓝 (0 : ℝ)) :=
    Filter.Eventually.of_forall fun ξ ↦ by
      have h := ((sourceFourier_testError_tendsto A hA ε hε hlim ξ).norm.pow 2).const_mul
        (logarithmicWeight ξ)
      simpa only [norm_zero, zero_pow two_ne_zero, mul_zero, Complex.normSq_eq_norm_sq] using h
  have h := tendsto_integral_filter_of_dominated_convergence
    (fun ξ ↦ 4 * (logarithmicWeight ξ * Complex.normSq (sourceFourier (actualTest A) ξ)))
    (Filter.Eventually.of_forall fun i ↦ (error_logarithmic_integrand_integrable A (ε i) hA (hε i)).1)
    hbound ((actual_logarithmic_integrand_integrable A hA).const_mul 4) hpoint
  simpa only [rawLogarithmicEnergy, integral_zero] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `454ae8e58815f814e2757dfb894ad1659fa5f695` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
