# actualFixedCenteredRieszLaplace_hasDerivAt_of_quadratic_area

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b450f98-5ac7-2f1b-a39d-b4997aaeb791",
  "kind": "theorem",
  "lexical_name": "actualFixedCenteredRieszLaplace_hasDerivAt_of_quadratic_area",
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
  "slug": "actualfixedcenteredrieszlaplace-hasderivat-of-quadratic-area--6b964c142550e05790557f82",
  "source": {
    "blob": "20cfc8e71b1aa1c24cb76abb33226dc07c674575",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 74,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant7e8abba29838088efcd795fbbdc6da7af9642998483aaa6d5119b2cbf641ad07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b964c142550e05790557f8295316660dd0d9a8174abb537e389e90953674ad5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant7e8abba29838088efcd795fbbdc6da7af9642998483aaa6d5119b2cbf641ad07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b450f98-5ac7-2f1b-a39d-b4997aaeb791`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFixedCenteredRieszLaplace_hasDerivAt_of_quadratic_area {M R : ℝ}
    (hM : 0 ≤ M) (hR : 1 ≤ R)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2)
    {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (fun t : ℝ => -(t : ℂ) *
      ((actualMangoldtRieszPrimitive t - actualRieszLimitingLinearCenter * t -
        actualRieszRealConstantCenter : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))) (Ioi 0) ∧
      HasDerivAt actualFixedCenteredRieszLaplace
        (∫ t : ℝ in Ioi 0, -(t : ℂ) *
          ((actualMangoldtRieszPrimitive t - actualRieszLimitingLinearCenter * t -
            actualRieszRealConstantCenter : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))) z := by
  let μ : Measure ℝ := volume.restrict (Ioi 0)
  let F : ℂ → ℝ → ℂ := fun w t => (profile t : ℂ) *
    Complex.exp (-w * (t : ℂ))
  let F' : ℂ → ℝ → ℂ := fun w t => -(t : ℂ) * F w t
  let c : ℝ := z.re / 4
  have hc : 0 < c := by dsimp [c]; positivity
  have hradius : 0 < z.re / 2 := by positivity
  have hre {w : ℂ} (hw : w ∈ Metric.ball z (z.re / 2)) : 2 * c ≤ w.re := by
    rw [Metric.mem_ball, dist_eq_norm] at hw
    have he := Complex.abs_re_le_norm (w - z)
    rw [sub_re] at he
    dsimp [c]
    have hh := (abs_le.mp (he.trans hw.le)).1
    linarith
  have hi : Integrable (F z) μ :=
    actualFixedCenteredRieszLaplace_positive_integrable hM hR harea hz
  have hmeas : ∀ᶠ w in 𝓝 z, AEStronglyMeasurable (F w) μ := by
    filter_upwards [Metric.ball_mem_nhds z hradius] with w hw
    exact (actualFixedCenteredRieszLaplace_positive_integrable hM hR harea
      (hc.trans_le (by have := hre hw; linarith))).aestronglyMeasurable
  have hprime : AEStronglyMeasurable (F' z) μ :=
    Complex.continuous_ofReal.neg.aestronglyMeasurable.mul hi.aestronglyMeasurable
  have hib : Integrable (fun t => (1 / c) *
      ‖profile t * Real.exp (-c * t)‖) μ :=
    by
      have hh := (actualFixedCenteredRieszLaplace_positive_integrable hM hR harea
        (z := (c : ℂ)) hc).norm.const_mul (1 / c)
      simpa only [profile, norm_mul, Complex.norm_real, Complex.norm_exp, mul_re,
        neg_re, ofReal_re, neg_im, ofReal_im, mul_zero, sub_zero, Real.norm_eq_abs,
        abs_of_pos (Real.exp_pos _)] using hh
  have hb : ∀ᵐ t ∂μ, ∀ w ∈ Metric.ball z (z.re / 2),
      ‖F' w t‖ ≤ (1 / c) * ‖profile t * Real.exp (-c * t)‖ := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht w hw
    have ht0 : 0 ≤ t := ht.le
    dsimp [F', F]
    simp only [norm_mul, norm_neg, Complex.norm_real, Complex.norm_exp, Real.norm_eq_abs,
      abs_of_nonneg ht0, mul_re, neg_re, ofReal_re, neg_im, ofReal_im, mul_zero, sub_zero]
    simpa only [mul_assoc, Real.norm_eq_abs] using derivative_norm_bound hc (hre hw) ht0
  have hd : ∀ᵐ t ∂μ, ∀ w ∈ Metric.ball z (z.re / 2),
      HasDerivAt (fun w => F w t) (F' w t) w := by
    filter_upwards [] with t w _
    simpa only [F, F', mul_assoc] using kernel_hasDerivAt t w
  have hh := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (Metric.ball_mem_nhds z hradius) hmeas hi hprime hb hib hd
  unfold actualFixedCenteredRieszLaplace
  simpa only [F, F', μ, IntegrableOn, mul_assoc, profile] using hh

/-- The same literal transform is holomorphic under the supplied full quadratic area. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant7e8abba29838088efcd795fbbdc6da7af9642998483aaa6d5119b2cbf641ad07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant7e8abba29838088efcd795fbbdc6da7af9642998483aaa6d5119b2cbf641ad07.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20cfc8e71b1aa1c24cb76abb33226dc07c674575` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
