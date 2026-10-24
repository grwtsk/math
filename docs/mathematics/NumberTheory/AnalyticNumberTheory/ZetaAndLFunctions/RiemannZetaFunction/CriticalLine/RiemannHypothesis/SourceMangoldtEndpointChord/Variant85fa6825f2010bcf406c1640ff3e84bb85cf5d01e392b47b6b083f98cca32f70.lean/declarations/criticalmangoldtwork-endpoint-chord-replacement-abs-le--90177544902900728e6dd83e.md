# criticalMangoldtWork_endpoint_chord_replacement_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b9b8f6146fda2f0e0bbac40b2671cf537b9ab5a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 20,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/85fa6825f2010bcf406c1640ff3e84bb85cf5d01e392b47b6b083f98cca32f70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9434723d-4bbb-67d4-a257-64566629db25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30662877-6411-496d-44ba-391e7f795f22",
  "kind": "theorem",
  "lexical_name": "criticalMangoldtWork_endpoint_chord_replacement_abs_le",
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
  "slug": "criticalmangoldtwork-endpoint-chord-replacement-abs-le--90177544902900728e6dd83e",
  "source": {
    "blob": "1b9b8f6146fda2f0e0bbac40b2671cf537b9ab5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 20,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtEndpointChord/Variant85fa6825f2010bcf406c1640ff3e84bb85cf5d01e392b47b6b083f98cca32f70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90177544902900728e6dd83e002489e78401ea69963ac82b6f06697e73038727",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtEndpointChord/Variant85fa6825f2010bcf406c1640ff3e84bb85cf5d01e392b47b6b083f98cca32f70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30662877-6411-496d-44ba-391e7f795f22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalMangoldtWork_endpoint_chord_replacement_abs_le
    {A : ℝ} (hA : 1 ≤ A) :
    |criticalMangoldtWork A -
      ∫ t in 0..2 * A,
        (mangoldtLogError t -
          (mangoldtLogError (2 * A) / (2 * A)) * t) *
            deriv (criticalPrimeTest A) t| ≤
      (Real.log 4 + 4 + Real.log 2) / A := by
  have hA0 : 0 < A := lt_of_lt_of_le zero_lt_one hA
  have hL : 0 < 2 * A := by positivity
  let c := mangoldtLogError (2 * A) / (2 * A)
  have hg := criticalPrimeTest_contDiff A hA0
  have hit : IntervalIntegrable (fun t : ℝ => t * deriv (criticalPrimeTest A) t)
      volume 0 (2 * A) :=
    (continuous_id.mul hg.continuous_deriv_one).intervalIntegrable 0 (2 * A)
  have hparts := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := fun t : ℝ => t) (u' := fun _ : ℝ => (1 : ℝ))
    (v := criticalPrimeTest A) (v' := deriv (criticalPrimeTest A))
    (fun t _ => hasDerivAt_id t)
    (fun t _ => (hg.differentiable (by norm_num) t).hasDerivAt)
    (continuous_const.intervalIntegrable 0 (2 * A))
    (hg.continuous_deriv_one.intervalIntegrable 0 (2 * A))
  have hlinear : (∫ t in 0..2 * A, t * deriv (criticalPrimeTest A) t) =
      -criticalContinuousMoment A := by
    simpa only [criticalPrimeTest_at_upper A hA0, mul_zero, zero_mul,
      sub_zero, zero_sub, one_mul, criticalContinuousMoment] using hparts
  have hraw := criticalMangoldtWork_intervalIntegrable A hA0
  have hsplit (t : ℝ) :
      (mangoldtLogError t - c * t) * deriv (criticalPrimeTest A) t =
        mangoldtLogError t * deriv (criticalPrimeTest A) t -
          c * (t * deriv (criticalPrimeTest A) t) := by ring
  have hchord : (∫ t in 0..2 * A,
      (mangoldtLogError t - c * t) * deriv (criticalPrimeTest A) t) =
      criticalMangoldtWork A + c * criticalContinuousMoment A := by
    simp_rw [hsplit]
    rw [intervalIntegral.integral_sub hraw (hit.const_mul c),
      intervalIntegral.integral_const_mul, hlinear]
    change criticalMangoldtWork A - c * (-criticalContinuousMoment A) = _
    ring
  change |criticalMangoldtWork A - (∫ t in 0..2 * A,
    (mangoldtLogError t - c * t) * deriv (criticalPrimeTest A) t)| ≤ _
  rw [hchord]
  have hdifference : criticalMangoldtWork A -
      (criticalMangoldtWork A + c * criticalContinuousMoment A) =
      -(c * criticalContinuousMoment A) := by ring
  rw [hdifference, abs_neg, abs_mul]
  have hC : 0 ≤ Real.log 4 + 4 + Real.log 2 := by
    have h4 : 0 ≤ Real.log (4 : ℝ) := Real.log_nonneg (by norm_num)
    have h2 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
    linarith
  have hc : |c| ≤ (Real.log 4 + 4 + Real.log 2) / (2 * A) := by
    dsimp only [c]
    rw [abs_div, abs_of_pos hL]
    exact div_le_div_of_nonneg_right (mangoldtLogError_abs_le (2 * A) hL.le) hL.le
  calc
    _ ≤ ((Real.log 4 + 4 + Real.log 2) / (2 * A)) * 2 :=
      mul_le_mul hc (criticalContinuousMoment_abs_le_two A hA)
        (abs_nonneg _) (div_nonneg hC hL.le)
    _ = _ := by field_simp; ring

end FormalResearch.RiemannHypothesis.SourceMangoldtEndpointChord
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtEndpointChord/Variant85fa6825f2010bcf406c1640ff3e84bb85cf5d01e392b47b6b083f98cca32f70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtEndpointChord/Variant85fa6825f2010bcf406c1640ff3e84bb85cf5d01e392b47b6b083f98cca32f70.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b9b8f6146fda2f0e0bbac40b2671cf537b9ab5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
