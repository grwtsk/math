# negative_axis_work_eq_neg_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db23e55e-816b-b541-4597-1a6ce805f5f2",
  "kind": "theorem",
  "lexical_name": "negative_axis_work_eq_neg_continuous",
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
  "slug": "negative-axis-work-eq-neg-continuous--c9a60268a56da09d98facd71",
  "source": {
    "blob": "a7605dc64f622bb6bd84ee202e95cdf22484981a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 90,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant6c521ca03c5d6ecd08fdae654fd4e54079cad34812c417759c03c05309439e1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9a60268a56da09d98facd715653ca8a3d049edd1f157b2477b6f04cc12009fd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant6c521ca03c5d6ecd08fdae654fd4e54079cad34812c417759c03c05309439e1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db23e55e-816b-b541-4597-1a6ce805f5f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negative_axis_work_eq_neg_continuous {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in -(2*A)..0, mangoldtLogError t * deriv (criticalPrimeTest A) t) =
      -criticalContinuousMoment A := by
  have hp : 0 < A := by linarith
  have hg := criticalPrimeTest_contDiff A hp
  have he : (∫ t in -(2*A)..0, mangoldtLogError t * deriv (criticalPrimeTest A) t) =
      ∫ t in -(2*A)..0, (-t) * deriv (criticalPrimeTest A) t := by
    apply intervalIntegral.integral_congr
    intro t ht
    have ht0 : t ≤ 0 := (uIcc_of_le (by linarith : -(2*A) ≤ 0) ▸ ht).2
    dsimp only
    rw [mangoldtLogError_below_first_atom (lt_of_le_of_lt ht0 (Real.log_pos (by norm_num)))]
  have hparts := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := fun t : ℝ => -t) (u' := fun _ : ℝ => (-1 : ℝ))
    (v := criticalPrimeTest A) (v' := deriv (criticalPrimeTest A))
    (a := -(2*A)) (b := 0)
    (fun t _ => (hasDerivAt_id t).neg)
    (fun t _ => (hg.differentiable (by norm_num) t).hasDerivAt)
    (continuous_const.intervalIntegrable _ _) (hg.continuous_deriv_one.intervalIntegrable _ _)
  have hend : criticalPrimeTest A (-(2*A)) = 0 := by
    unfold criticalPrimeTest
    rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A (-(2*A)) hp
      (by rw [abs_neg, abs_of_pos (by linarith : 0 < 2*A)]), mul_zero]
  simp only [neg_zero, zero_mul, hend, mul_zero, sub_zero, neg_one_mul,
    intervalIntegral.integral_neg, neg_neg, zero_sub] at hparts
  have hzero : (∫ t : ℝ, criticalPrimeTest A t) = 0 := by
    have hz := full_correlation_moment_zero A hA
    have hs (t : ℝ) : (1/2 : ℝ)*t=t/2 := by ring
    simpa only [criticalPrimeTest, hs] using hz
  rw [criticalTest_full_integral_eq_interval hA] at hzero
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (hg.continuous.intervalIntegrable (μ := volume) (-(2*A)) 0)
    (hg.continuous.intervalIntegrable (μ := volume) 0 (2*A))
  change (∫ t in -(2*A)..0, criticalPrimeTest A t) + criticalContinuousMoment A =
    (∫ t in -(2*A)..2*A, criticalPrimeTest A t) at hsplit
  rw [he, hparts]
  linarith

/-- Positive work and the essential negative-axis correction reassemble the full-real work. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant6c521ca03c5d6ecd08fdae654fd4e54079cad34812c417759c03c05309439e1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant6c521ca03c5d6ecd08fdae654fd4e54079cad34812c417759c03c05309439e1f.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7605dc64f622bb6bd84ee202e95cdf22484981a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
