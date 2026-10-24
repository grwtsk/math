# criticalMangoldtWork_eq_actual_covariance_and_full_head

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4088d0b6-6f33-08c3-c809-4f2ef0b5176c",
  "kind": "theorem",
  "lexical_name": "criticalMangoldtWork_eq_actual_covariance_and_full_head",
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
  "slug": "criticalmangoldtwork-eq-actual-covariance-and-full-head--305243a5f54d83e24b88a1d6",
  "source": {
    "blob": "79c07267a468950adb25440c051420f6665de7b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 61,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceResidual/Variant5f0162617e0bc2a9d499a10a2c5278740a7bf25b9dfd30440ecab6b689a7a21a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:305243a5f54d83e24b88a1d605d93c5340f321d92db1f4b428e2887a2f4257b3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceResidual/Variant5f0162617e0bc2a9d499a10a2c5278740a7bf25b9dfd30440ecab6b689a7a21a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4088d0b6-6f33-08c3-c809-4f2ef0b5176c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalMangoldtWork_eq_actual_covariance_and_full_head {A : ℝ} (hA : 91 ≤ A) :
    criticalMangoldtWork A = 2 * actualCriticalErrorCovariance A +
      actualZeroSevenCriticalWork A + Real.eulerMascheroniConstant := by
  have hp : 0 < A := by linarith
  have ha : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  have hab : Real.log (7 : ℝ) ≤ 2 * A := by
    have := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)
    linarith
  have hF := criticalPrimeTest_contDiff A hp
  have hd : (∫ t in 0..2 * A, deriv (criticalPrimeTest A) t) = -1 := by
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun t _ => ((contDiff_one_iff_deriv.mp hF).1 t).hasDerivAt)
      (hF.continuous_deriv_one.intervalIntegrable _ _),
      criticalPrimeTest_at_upper A hp, criticalPrimeTest_at_zero A (by linarith)]
    norm_num
  have hiE := criticalMangoldtWork_intervalIntegrable A hp
  have hiγ := (hF.continuous_deriv_one.intervalIntegrable (μ := volume) 0 (2 * A)).const_mul
    Real.eulerMascheroniConstant
  have hfull : (∫ t in 0..2 * A, actualCenteredMangoldtLogError t *
      deriv (criticalPrimeTest A) t) = criticalMangoldtWork A -
        Real.eulerMascheroniConstant := by
    simp_rw [actualCenteredMangoldtLogError, add_mul]
    rw [intervalIntegral.integral_add hiE hiγ, intervalIntegral.integral_const_mul, hd]
    unfold criticalMangoldtWork
    ring
  have hs := intervalIntegral.integral_add_adjacent_intervals
    (error_deriv_integrable hp ha) (error_deriv_integrable hp hab)
  have hc := actualCriticalErrorCovariance_eq_half_derivative_work hA
  unfold actualZeroSevenCriticalWork
  linarith

/-- The unchanged residual keeps the full head, gamma and the correct signed covariance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceResidual/Variant5f0162617e0bc2a9d499a10a2c5278740a7bf25b9dfd30440ecab6b689a7a21a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceResidual/Variant5f0162617e0bc2a9d499a10a2c5278740a7bf25b9dfd30440ecab6b689a7a21a.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79c07267a468950adb25440c051420f6665de7b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
