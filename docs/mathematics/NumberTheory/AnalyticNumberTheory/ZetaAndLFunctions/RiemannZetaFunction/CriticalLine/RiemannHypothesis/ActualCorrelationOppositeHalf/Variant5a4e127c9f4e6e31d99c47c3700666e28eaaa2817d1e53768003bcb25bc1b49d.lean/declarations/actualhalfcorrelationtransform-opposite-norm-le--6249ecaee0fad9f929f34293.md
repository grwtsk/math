# actualHalfCorrelationTransform_opposite_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c175ad1-51cf-9d35-ed65-a898baaed2b6",
  "kind": "theorem",
  "lexical_name": "actualHalfCorrelationTransform_opposite_norm_le",
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
  "slug": "actualhalfcorrelationtransform-opposite-norm-le--6249ecaee0fad9f929f34293",
  "source": {
    "blob": "9e37de9fd978c64826a0c00d9bab0f1fec278327",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 59,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationOppositeHalf/Variant5a4e127c9f4e6e31d99c47c3700666e28eaaa2817d1e53768003bcb25bc1b49d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6249ecaee0fad9f929f342937f3712fe9602fad81944876568acff43b37db8df",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationOppositeHalf/Variant5a4e127c9f4e6e31d99c47c3700666e28eaaa2817d1e53768003bcb25bc1b49d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c175ad1-51cf-9d35-ed65-a898baaed2b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualHalfCorrelationTransform_opposite_norm_le {A : ℝ} (hA : 1 ≤ A)
    {z : ℂ} (hz : 0 < z.re) :
    ‖actualHalfCorrelationTransform A (-z)‖ ≤ 1 / z.re := by
  let r : ℝ := z.re
  have hr : 0 < r := hz
  have hbound (t : ℝ) : ‖Complex.exp ((-z) * (t : ℂ)) *
      (sourceCorrelation explicitSecondDerivative A t : ℂ)‖ ≤ Real.exp (-r * t) := by
    rw [norm_mul, Complex.norm_exp, Complex.norm_real, Real.norm_eq_abs]
    have he : ((-z) * (t : ℂ)).re = -r * t := by
      simp only [Complex.mul_re, Complex.neg_re, Complex.ofReal_re,
        Complex.ofReal_im, mul_zero, sub_zero, r]
    rw [he]
    simpa only [mul_one] using mul_le_mul_of_nonneg_left
      (actual_correlation_abs_le_one A t hA) (Real.exp_pos _).le
  have hc : Continuous (fun t : ℝ => Real.exp (-r * t)) := by fun_prop
  have hcc : Continuous (fun t : ℝ => Complex.exp ((-z) * (t : ℂ)) *
      (sourceCorrelation explicitSecondDerivative A t : ℂ)) :=
    (by fun_prop : Continuous (fun t : ℝ => Complex.exp ((-z) * (t : ℂ)))).mul
      (Complex.continuous_ofReal.comp
        (sourceCorrelation_contDiff A (show 0 < A by linarith)).continuous)
  have hi : IntervalIntegrable (fun t : ℝ => Complex.exp ((-z) * (t : ℂ)) *
      (sourceCorrelation explicitSecondDerivative A t : ℂ)) volume 0 (2 * A) :=
    hcc.intervalIntegrable _ _
  have hab : (0 : ℝ) ≤ 2 * A := by linarith
  have hb := (intervalIntegral.norm_integral_le_integral_norm
    (f := fun t => Complex.exp ((-z) * (t : ℂ)) *
      (sourceCorrelation explicitSecondDerivative A t : ℂ)) (μ := volume) hab).trans
      (intervalIntegral.integral_mono_on hab hi.norm (hc.intervalIntegrable _ _)
        (fun t _ => hbound t))
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => Real.exp (-r * t) / (-r))
      (Real.exp (-r * t)) t := by
    exact (((hasDerivAt_id t).const_mul (-r)).exp.div_const (-r)).congr_deriv (by
      dsimp
      field_simp [hr.ne'] <;> ring)
  have heval : (∫ t in 0..2 * A, Real.exp (-r * t)) =
      (1 - Real.exp (-r * (2 * A))) / r := by
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
      (hc.intervalIntegrable 0 (2 * A))]
    simp only [mul_zero, Real.exp_zero]
    field_simp <;> ring
  unfold actualHalfCorrelationTransform
  apply hb.trans
  rw [heval]
  apply div_le_div_of_nonneg_right _ hr.le
  have := Real.exp_pos (-r * (2 * A))
  linarith

/-- The positive half differs from the literal bilateral transform by a bounded actual piece. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationOppositeHalf/Variant5a4e127c9f4e6e31d99c47c3700666e28eaaa2817d1e53768003bcb25bc1b49d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationOppositeHalf/Variant5a4e127c9f4e6e31d99c47c3700666e28eaaa2817d1e53768003bcb25bc1b49d.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e37de9fd978c64826a0c00d9bab0f1fec278327` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
