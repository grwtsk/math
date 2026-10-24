# actualCriticalErrorCovariance_early_error_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39942e62-feb1-4a53-c47c-02985067d3cc",
  "kind": "theorem",
  "lexical_name": "actualCriticalErrorCovariance_early_error_abs_le",
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
  "slug": "actualcriticalerrorcovariance-early-error-abs-le--ee230029695226eeed1bf54a",
  "source": {
    "blob": "2a76ca98dbb73ecf50117b59c0947533ecda4804",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 118,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceOrdinarySplit/Variantc774a585b7a4368e95032191208ee6b84c870b2bd46310def4b1f3cbb69835b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee230029695226eeed1bf54a6d837dd7ff8827e5f892f60d673d9ee39fbb56f4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceOrdinarySplit/Variantc774a585b7a4368e95032191208ee6b84c870b2bd46310def4b1f3cbb69835b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39942e62-feb1-4a53-c47c-02985067d3cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalErrorCovariance_early_error_abs_le {A T : ℝ} (hA : 91 ≤ A)
    (hT : Real.log 7 ≤ T) :
    |(∫ t in Real.log 7..T, actualCriticalErrorDensity A t) -
        actualEarlyCriticalErrorCenter T| ≤
      2 * B * Real.exp (T / 2) * (5 / 8 * T ^ 2 + 5 / 2 * T) / A ^ 2 := by
  have ha : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  have hT0 : 0 ≤ T := by linarith
  have hi := actualCriticalErrorDensity_intervalIntegrable hA ha hT
  have he : IntervalIntegrable actualCenteredMangoldtLogError volume (Real.log 7) T :=
    (error_integrable hT0).mono_set (by
    rw [uIcc_of_le hT0, uIcc_of_le hT]
    exact Icc_subset_Icc ha le_rfl)
  have hg := he.mul_continuousOn (by fun_prop : ContinuousOn
    (fun t : ℝ => Real.exp (t / 2)) (uIcc (Real.log 7) T))
  let k : ℝ := B * (5 / 8 * T ^ 2 + 5 / 2 * T) / A ^ 2
  have hk : 0 ≤ k := by dsimp [k]; positivity
  have hb : IntervalIntegrable (fun t : ℝ => k * Real.exp (t / 2))
      volume (Real.log 7) T := (by fun_prop : Continuous _).intervalIntegrable _ _
  have hp : ∀ t ∈ Ioc (Real.log 7) T,
      ‖actualCriticalErrorDensity A t - (1 / 4 : ℝ) *
        (actualCenteredMangoldtLogError t * Real.exp (t / 2))‖ ≤
          k * Real.exp (t / 2) := by
    intro t ht
    have ht0 : 0 ≤ t := by linarith [ht.1]
    have hh := early_kernel_error hA ht0 ht.2
    have hE := actualCenteredMangoldtLogError_abs_le ht0
    rw [Real.norm_eq_abs, show actualCriticalErrorDensity A t - (1 / 4 : ℝ) *
        (actualCenteredMangoldtLogError t * Real.exp (t / 2)) =
          actualCenteredMangoldtLogError t * Real.exp (t / 2) *
          (sourceCorrelation explicitSecondDerivative A t / 4 +
            deriv (sourceCorrelation explicitSecondDerivative A) t / 2 - 1 / 4)
              by unfold actualCriticalErrorDensity; ring,
      abs_mul, abs_mul, Real.abs_exp]
    have hP : 0 ≤ (5 / 8 * T ^ 2 + 5 / 2 * T) / A ^ 2 := by positivity
    calc
      _ ≤ (B * Real.exp (t / 2)) *
          ((5 / 8 * T ^ 2 + 5 / 2 * T) / A ^ 2) :=
        mul_le_mul (mul_le_mul_of_nonneg_right hE (by positivity)) hh
          (abs_nonneg _) (by positivity)
      _ = _ := by dsimp [k]; ring
  unfold actualEarlyCriticalErrorCenter
  rw [← intervalIntegral.integral_const_mul, ← intervalIntegral.integral_sub hi (hg.const_mul _)]
  have hn := intervalIntegral.norm_integral_le_of_norm_le hT (ae_of_all _ hp) hb
  rw [Real.norm_eq_abs] at hn
  rw [intervalIntegral.integral_const_mul] at hn
  calc
    _ ≤ k * ∫ t in Real.log 7..T, Real.exp (t / 2) := hn
    _ ≤ k * (2 * Real.exp (T / 2)) :=
      mul_le_mul_of_nonneg_left (exponential_mass (l := Real.log 7) (b := T)) hk
    _ = _ := by dsimp [k]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceOrdinarySplit/Variantc774a585b7a4368e95032191208ee6b84c870b2bd46310def4b1f3cbb69835b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceOrdinarySplit/Variantc774a585b7a4368e95032191208ee6b84c870b2bd46310def4b1f3cbb69835b0.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a76ca98dbb73ecf50117b59c0947533ecda4804` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
