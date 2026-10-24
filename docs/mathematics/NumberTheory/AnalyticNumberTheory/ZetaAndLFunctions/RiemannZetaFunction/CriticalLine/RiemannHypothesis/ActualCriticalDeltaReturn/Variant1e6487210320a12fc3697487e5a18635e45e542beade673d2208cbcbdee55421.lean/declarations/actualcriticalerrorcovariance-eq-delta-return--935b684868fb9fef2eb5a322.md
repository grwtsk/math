# actualCriticalErrorCovariance_eq_delta_return

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5b586aa-a413-ab91-d361-7448c6c36c78",
  "kind": "theorem",
  "lexical_name": "actualCriticalErrorCovariance_eq_delta_return",
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
  "slug": "actualcriticalerrorcovariance-eq-delta-return--935b684868fb9fef2eb5a322",
  "source": {
    "blob": "f09a2b4856dda0797714bf74a52cb320a4f1d49d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 95,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalDeltaReturn/Variant1e6487210320a12fc3697487e5a18635e45e542beade673d2208cbcbdee55421.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:935b684868fb9fef2eb5a3224ddbc7a14458f22d7adb69deb1da1346fd025a5e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalDeltaReturn/Variant1e6487210320a12fc3697487e5a18635e45e542beade673d2208cbcbdee55421.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5b586aa-a413-ab91-d361-7448c6c36c78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalErrorCovariance_eq_delta_return {A : ℝ} (hA : 91 ≤ A) :
    actualCriticalErrorCovariance A = actualDeltaCriticalReturn A +
      (1 / 2 : ℝ) * criticalPrimeTest A (Real.log 7) *
        actualRelativePsiTail (Real.log 7) := by
  let a : ℝ := Real.log 7
  let b : ℝ := 2 * A
  let R : ℝ → ℝ := fun t => actualRelativePsiTail 0 -
    ∫ r in 0..t, actualRelativePsiTimeError r
  let F : ℝ → ℝ := criticalPrimeTest A
  have hp : 0 < A := by linarith
  have ha : 0 ≤ a := Real.log_nonneg (by norm_num)
  have hab : a ≤ b := by
    have := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)
    dsimp [a, b]
    linarith
  have hb : 0 ≤ b := by dsimp [b]; linarith
  have hs : uIcc a b ⊆ uIcc (0 : ℝ) b := by
    rw [uIcc_of_le hab, uIcc_of_le hb]
    exact Icc_subset_Icc ha le_rfl
  have hR : AbsolutelyContinuousOnInterval R a b := (tail_representation_ac hb).mono hs
  have hF : AbsolutelyContinuousOnInterval F a b :=
    (criticalPrimeTest_contDiff A hp).contDiffOn.absolutelyContinuousOnInterval
  have hRd : ∀ᵐ t : ℝ, t ∈ uIcc 0 b →
      HasDerivAt R (-actualRelativePsiTimeError t) t := by
    filter_upwards [(actualRelativePsiTimeError_intervalIntegrable hb).ae_hasDerivAt_integral]
      with t ht hmem
    exact ((hasDerivAt_const t (actualRelativePsiTail 0)).sub
      (ht hmem 0 (by simp))).congr_deriv (by simp)
  have hparts := hR.integral_mul_deriv_eq_deriv_mul hF
  have hFd (t : ℝ) : deriv F t = Real.exp (t / 2) *
      (sourceCorrelation explicitSecondDerivative A t / 2 +
        deriv (sourceCorrelation explicitSecondDerivative A) t) :=
    criticalPrimeTest_deriv A t hp
  have hRb (t : ℝ) (ht : t ∈ uIcc a b) : R t = actualRelativePsiTail t :=
    (actualRelativePsiTail_eq_total_sub_primitive (ha.trans
      ((uIcc_of_le hab) ▸ ht).1)).symm
  have hiδ : IntervalIntegrable actualRelativePsiTimeError volume a b :=
    (actualRelativePsiTimeError_intervalIntegrable hb).mono_set hs
  have hiF : IntervalIntegrable (fun t => actualRelativePsiTimeError t * F t)
      volume a b := hiδ.mul_continuousOn hF.continuousOn
  have hiFd : IntervalIntegrable (fun t => actualRelativePsiTimeError t * deriv F t)
      volume a b := hiδ.mul_continuousOn
    (criticalPrimeTest_contDiff A hp).continuous_deriv_one.continuousOn
  have hiRFd : IntervalIntegrable (fun t => R t * deriv F t) volume a b := by
    change IntervalIntegrable (R * deriv F) volume a b
    exact (hR.continuousOn.mul
      (criticalPrimeTest_contDiff A hp).continuous_deriv_one.continuousOn).intervalIntegrable
  have hderiv : (∫ t in a..b, deriv R t * F t) =
      -(∫ t in a..b, actualRelativePsiTimeError t * F t) := by
    rw [← intervalIntegral.integral_neg]
    apply intervalIntegral.integral_congr_ae
    filter_upwards [hRd] with t ht hm
    rw [(ht (hs (uIoc_subset_uIcc hm))).deriv]
    ring
  have hcov : actualCriticalErrorCovariance A =
      (1 / 2 : ℝ) * ((∫ t in a..b, actualRelativePsiTimeError t * deriv F t) -
        ∫ t in a..b, R t * deriv F t) := by
    rw [← intervalIntegral.integral_sub hiFd hiRFd,
      ← intervalIntegral.integral_const_mul]
    unfold actualCriticalErrorCovariance
    apply intervalIntegral.integral_congr
    intro t ht
    dsimp only
    have ht0 := ha.trans (((uIcc_of_le hab) ▸ ht).1)
    unfold actualCriticalErrorDensity
    rw [actualCenteredMangoldtLogError_eq_delta_sub_tail ht0,
      hFd, hRb t ht]
    unfold actualRelativePsiTail
    ring
  have hret : actualDeltaCriticalReturn A =
      (1 / 2 : ℝ) * ((∫ t in a..b, actualRelativePsiTimeError t * deriv F t) -
        ∫ t in a..b, actualRelativePsiTimeError t * F t) := by
    unfold actualDeltaCriticalReturn
    rw [← intervalIntegral.integral_sub hiFd hiF,
      ← intervalIntegral.integral_const_mul]
    rw [← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    rw [hFd]
    dsimp [actualDeltaCriticalReturn, F, criticalPrimeTest, a, b]
    ring
  have hFb : F b = 0 := criticalPrimeTest_at_upper A hp
  rw [hFb, mul_zero, zero_sub, hderiv] at hparts
  rw [hRb a (by simp)] at hparts
  rw [hcov, hret, hparts]
  ring

/-- The true lower head is uniformly bounded; it is neither discarded nor given a sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalDeltaReturn/Variant1e6487210320a12fc3697487e5a18635e45e542beade673d2208cbcbdee55421.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalDeltaReturn/Variant1e6487210320a12fc3697487e5a18635e45e542beade673d2208cbcbdee55421.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f09a2b4856dda0797714bf74a52cb320a4f1d49d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
