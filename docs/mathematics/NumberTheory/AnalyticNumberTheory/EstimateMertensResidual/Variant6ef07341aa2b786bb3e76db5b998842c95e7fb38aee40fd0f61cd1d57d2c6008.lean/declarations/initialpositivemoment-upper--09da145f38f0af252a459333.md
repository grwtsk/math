# initialPositiveMoment_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e451501-a819-f780-ce5e-cb2b887a5707",
  "kind": "theorem",
  "lexical_name": "initialPositiveMoment_upper",
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
  "slug": "initialpositivemoment-upper--09da145f38f0af252a459333",
  "source": {
    "blob": "80711dc5717ec69e8fdfb416076cdd2a19b30666",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 114,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09da145f38f0af252a459333b3ec5f05415c3ceab8c7c25e9b6586ba7717ca5b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e451501-a819-f780-ce5e-cb2b887a5707`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem initialPositiveMoment_upper
    (A : ℝ) (hA : 1 ≤ A) :
    initialPositiveMoment A ≤
      2 * (Real.sqrt 2 - 1) := by
  have hc :=
    (CorrelationRegularity.sourceCorrelation_contDiff A
      (by linarith)).continuous
  have he : Continuous (fun t : ℝ ↦ Real.exp (t / 2)) := by
    fun_prop
  have h :=
    intervalIntegral.integral_mono_on
      (μ := volume)
      (by
        exact
          (Real.log_nonneg (by norm_num) :
            0 ≤ Real.log 2) :
        0 ≤ lowerEndpoint)
      ((he.mul hc).intervalIntegrable _ _)
      (he.intervalIntegrable _ _)
      (fun t _ ↦ by
        have ht :=
          (abs_le.mp
            (EstimateCorrelation.actual_correlation_abs_le_one
              A t hA)).2
        simpa only [mul_one, Pi.mul_apply] using
          mul_le_mul_of_nonneg_left ht
            (Real.exp_pos (t / 2)).le)
  have hp :
      (∫ t in 0..lowerEndpoint, Real.exp (t / 2)) =
        2 * (Real.sqrt 2 - 1) := by
    have hd (t : ℝ) :
        HasDerivAt
          (fun x : ℝ ↦ 2 * Real.exp (x / 2))
          (Real.exp (t / 2)) t := by
      apply
        ((((hasDerivAt_id t).div_const 2).exp).const_mul 2).congr_deriv
      simp only [id_eq]
      ring
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun t _ ↦ hd t) (he.intervalIntegrable _ _)]
    simp only [zero_div, Real.exp_zero, mul_one,
      lowerEndpoint, Real.exp_half,
      Real.exp_log (by norm_num : (0 : ℝ) < 2)]
    ring
  unfold initialPositiveMoment
  simpa only [hp, Pi.mul_apply] using h

/-- The short positive endpoint interval has the symmetric lower bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80711dc5717ec69e8fdfb416076cdd2a19b30666` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
