# sourceGreenPairing_eq_twice_negativeSmoothMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c400264e-b476-3d9e-8271-629fa9515e9d",
  "kind": "theorem",
  "lexical_name": "sourceGreenPairing_eq_twice_negativeSmoothMoment",
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
  "slug": "sourcegreenpairing-eq-twice-negativesmoothmoment--03221b9b469580d7ab53b5f6",
  "source": {
    "blob": "935ef7cd4b733c44b7d4c4ffc7391bbc3f6cbb49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV2Prebytes/Variant0457570f1e6de5c6af672103eaae9d0a4f0a0bafb64d0da04ca83f23a457556e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03221b9b469580d7ab53b5f6f72324f310bb85b2d491eb7df731972c9e756061",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV2Prebytes/Variant0457570f1e6de5c6af672103eaae9d0a4f0a0bafb64d0da04ca83f23a457556e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c400264e-b476-3d9e-8271-629fa9515e9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceGreenPairing_eq_twice_negativeSmoothMoment {A : ℝ} (hA : 0 < A) :
    sourceGreenPairing A = 2 * negativeSmoothMoment A := by
  let F := fun t : ℝ ↦ greenKernel t * sourceCorrelation explicitSecondDerivative A t
  have hc : Continuous F :=
    greenKernel_continuous.mul (sourceCorrelation_contDiff A hA).continuous
  have hs : Function.support F ⊆ Ioc (-(2*A)) (2*A) := by
    intro t ht
    have hn : |t| < 2*A := by
      by_contra hn
      apply ht
      dsimp only [F]
      rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A t hA (le_of_not_gt hn), mul_zero]
    exact ⟨by linarith [neg_abs_le t], (le_abs_self t).trans hn.le⟩
  have hfull := intervalIntegral.integral_eq_integral_of_support_subset (μ := volume) hs
  have he : (fun t : ℝ ↦ F (-t)) = F := by
    funext t
    dsimp only [F]
    rw [greenKernel_even, sourceCorrelation_even]
  have heven : (∫ t in -(2*A)..0, F t) = ∫ t in 0..2*A, F t := by
    have hn := intervalIntegral.integral_comp_neg F (a := -(2*A)) (b := 0)
    rw [he] at hn
    simpa using hn
  have hadd := intervalIntegral.integral_add_adjacent_intervals
    (hc.intervalIntegrable (μ := volume) (-(2*A)) 0)
    (hc.intervalIntegrable (μ := volume) 0 (2*A))
  have hpos : (∫ t in 0..2*A, F t) = negativeSmoothMoment A := by
    unfold negativeSmoothMoment
    apply intervalIntegral.integral_congr
    intro t ht
    rw [uIcc_of_le (by linarith : (0 : ℝ) ≤ 2*A)] at ht
    dsimp only [F, greenKernel]
    rw [abs_of_nonneg ht.1]
  rw [heven, hfull] at hadd
  change (∫ t : ℝ, F t) = _
  rw [← hpos]
  linarith

/-- The full Green pairing is the positive causal energy of the literal source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV2Prebytes/Variant0457570f1e6de5c6af672103eaae9d0a4f0a0bafb64d0da04ca83f23a457556e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV2Prebytes/Variant0457570f1e6de5c6af672103eaae9d0a4f0a0bafb64d0da04ca83f23a457556e.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `935ef7cd4b733c44b7d4c4ffc7391bbc3f6cbb49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
