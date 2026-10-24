# finite_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24c13001-af85-12a9-f74c-4f987b55d84b",
  "kind": "theorem",
  "lexical_name": "finite_abel",
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
  "slug": "finite-abel--32e264d523e93d0f7bf24a73",
  "source": {
    "blob": "2b7f4f327e6864a00937965aedf2b5c00c008478",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 36,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf4d5f7f5dc8aac699715962a42327cf1aaf25ad0c543fa1a9992cb0b57a9c81f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32e264d523e93d0f7bf24a73c2733f640a725a04ef3338900f71a9f4635fbe10",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf4d5f7f5dc8aac699715962a42327cf1aaf25ad0c543fa1a9992cb0b57a9c81f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24c13001-af85-12a9-f74c-4f987b55d84b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem finite_abel (z : ℂ) {b : ℝ} (hb : Real.log 7 ≤ b) :
    (∫ t in Real.log 7..b,
      (actualXiTailTimeDensity t : ℂ) * Complex.exp (-z * (t : ℂ)) +
        (actualAnchoredXiTailPrimitive t : ℂ) *
          (-z * Complex.exp (-z * (t : ℂ)))) =
      (actualAnchoredXiTailPrimitive b : ℂ) * Complex.exp (-z * (b : ℂ)) := by
  let q : ℝ → ℂ := fun t => Complex.exp (-z * (t : ℂ))
  have hq : ContDiff ℝ 1 q := by
    exact (contDiff_const.mul (Complex.ofRealCLM.contDiff :
      ContDiff ℝ 1 (fun t : ℝ => (t : ℂ)))).cexp
  have hr : AbsolutelyContinuousOnInterval (fun t => (q t).re) (Real.log 7) b :=
    (Complex.reCLM.contDiff.comp hq).contDiffOn.absolutelyContinuousOnInterval
  have hm : AbsolutelyContinuousOnInterval (fun t => (q t).im) (Real.log 7) b :=
    (Complex.imCLM.contDiff.comp hq).contDiffOn.absolutelyContinuousOnInterval
  have hd := actualXiTailTimeDensity_intervalIntegrable hb
  have hdc : IntervalIntegrable (fun t => (actualXiTailTimeDensity t : ℂ))
      volume (Real.log 7) b :=
    ⟨Complex.ofRealCLM.integrable_comp hd.1, Complex.ofRealCLM.integrable_comp hd.2⟩
  have hi1 := hdc.mul_continuousOn hq.continuous.continuousOn
  have hc := (actualAnchoredXiTailPrimitive_absolutelyContinuous hb).continuousOn
  have hi2 : IntervalIntegrable (fun t => (actualAnchoredXiTailPrimitive t : ℂ) *
      (-z * q t)) volume (Real.log 7) b :=
    ((Complex.continuous_ofReal.comp_continuousOn hc).mul
      (hq.continuous.const_mul (-z)).continuousOn).intervalIntegrable
  have his := hi1.add hi2
  have hreal := (actualAnchoredXiTailPrimitive_absolutelyContinuous hb).integral_deriv_mul_eq_sub hr
  have himag := (actualAnchoredXiTailPrimitive_absolutelyContinuous hb).integral_deriv_mul_eq_sub hm
  have hqr (t : ℝ) : HasDerivAt (fun t => (q t).re) (-z * q t).re t := by
    simpa only [Function.comp_apply, Complex.reCLM_apply] using
      Complex.reCLM.hasFDerivAt.comp_hasDerivAt (exponential_hasDerivAt z t)
  have hqm (t : ℝ) : HasDerivAt (fun t => (q t).im) (-z * q t).im t := by
    simpa only [Function.comp_apply, Complex.imCLM_apply] using
      Complex.imCLM.hasFDerivAt.comp_hasDerivAt (exponential_hasDerivAt z t)
  apply Complex.ext
  · rw [← intervalIntegral.intervalIntegral_re his]
    calc
      _ = ∫ t in Real.log 7..b,
          deriv actualAnchoredXiTailPrimitive t * (q t).re +
            actualAnchoredXiTailPrimitive t * deriv (fun t => (q t).re) t := by
        apply intervalIntegral.integral_congr_ae
        filter_upwards [actualAnchoredXiTailPrimitive_ae_hasDerivAt hb] with t ht hmem
        rw [(ht (uIoc_subset_uIcc hmem)).deriv, (hqr t).deriv]
        simp only [add_re, mul_re, ofReal_re, ofReal_im, zero_mul, sub_zero]
      _ = _ := by
        rw [hreal, actualAnchoredXiTailPrimitive_at_lower]
        simp only [zero_mul, sub_zero, mul_re, ofReal_re, ofReal_im, zero_mul]
  · rw [← intervalIntegral.intervalIntegral_im his]
    calc
      _ = ∫ t in Real.log 7..b,
          deriv actualAnchoredXiTailPrimitive t * (q t).im +
            actualAnchoredXiTailPrimitive t * deriv (fun t => (q t).im) t := by
        apply intervalIntegral.integral_congr_ae
        filter_upwards [actualAnchoredXiTailPrimitive_ae_hasDerivAt hb] with t ht hmem
        rw [(ht (uIoc_subset_uIcc hmem)).deriv, (hqm t).deriv]
        simp only [add_im, mul_im, ofReal_re, ofReal_im, zero_mul, zero_add]
      _ = _ := by
        rw [himag, actualAnchoredXiTailPrimitive_at_lower]
        simp only [zero_mul, sub_zero, mul_im, ofReal_re, ofReal_im, zero_mul, zero_add]

end
end FormalResearch.RiemannHypothesis.SourceActualXiLaplaceMellin
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf4d5f7f5dc8aac699715962a42327cf1aaf25ad0c543fa1a9992cb0b57a9c81f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf4d5f7f5dc8aac699715962a42327cf1aaf25ad0c543fa1a9992cb0b57a9c81f.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b7f4f327e6864a00937965aedf2b5c00c008478` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
