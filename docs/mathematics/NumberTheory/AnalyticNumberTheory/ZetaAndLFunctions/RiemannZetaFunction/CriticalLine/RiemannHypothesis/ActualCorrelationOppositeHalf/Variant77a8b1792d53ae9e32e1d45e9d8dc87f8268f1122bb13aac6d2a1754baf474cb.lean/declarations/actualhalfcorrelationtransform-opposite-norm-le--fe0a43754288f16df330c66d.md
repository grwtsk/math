# actualHalfCorrelationTransform_opposite_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8b82fd4-ccd4-f2c3-9a2d-e473ac34630a",
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
  "slug": "actualhalfcorrelationtransform-opposite-norm-le--fe0a43754288f16df330c66d",
  "source": {
    "blob": "87c9a5a4d90417609a84a2b14bfdc0419df71b03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 65,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationOppositeHalf/Variant77a8b1792d53ae9e32e1d45e9d8dc87f8268f1122bb13aac6d2a1754baf474cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe0a43754288f16df330c66d8ec8802e37d6a3191dc207e0c5083cecd54088cc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationOppositeHalf/Variant77a8b1792d53ae9e32e1d45e9d8dc87f8268f1122bb13aac6d2a1754baf474cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8b82fd4-ccd4-f2c3-9a2d-e473ac34630a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–105.

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
  have hb := intervalIntegral.norm_integral_le_of_norm_le
    (show (0 : ℝ) ≤ 2 * A by linarith)
    (f := fun t => Complex.exp ((-z) * (t : ℂ)) *
      (sourceCorrelation explicitSecondDerivative A t : ℂ))
    (Eventually.of_forall (fun t _ => hbound t)) (hc.intervalIntegrable 0 (2 * A))
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => Real.exp (-r * t) / (-r))
      (Real.exp (-r * t)) t := by
    exact (((hasDerivAt_id t).const_mul (-r)).exp.div_const (-r)).congr_deriv (by
      dsimp
      field_simp [hr.ne']
      ring)
  have hi : (∫ t in 0..2 * A, Real.exp (-r * t)) =
      (1 - Real.exp (-r * (2 * A))) / r := by
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
      (hc.intervalIntegrable 0 (2 * A))]
    simp only [mul_zero, Real.exp_zero]
    field_simp
    ring
  unfold actualHalfCorrelationTransform
  apply hb.trans
  rw [hi]
  apply div_le_div_of_nonneg_right _ hr.le
  have := Real.exp_pos (-r * (2 * A))
  linarith

/-- The positive half differs from the literal bilateral transform by a bounded actual piece. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationOppositeHalf/Variant77a8b1792d53ae9e32e1d45e9d8dc87f8268f1122bb13aac6d2a1754baf474cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationOppositeHalf/Variant77a8b1792d53ae9e32e1d45e9d8dc87f8268f1122bb13aac6d2a1754baf474cb.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87c9a5a4d90417609a84a2b14bfdc0419df71b03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
