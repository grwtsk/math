# actual_translate_product_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:258d3c33-de76-9384-cf7c-61e16b572590",
  "kind": "theorem",
  "lexical_name": "actual_translate_product_hasDerivAt",
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
  "slug": "actual-translate-product-hasderivat--9f119cd0365a9d3b65244776",
  "source": {
    "blob": "7f5fd99795b5b1ffc1084f54b721b13705028014",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 56,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/5805c247791e40627024ActualFourthCorrelationDerivative/Variantb62b3241e231265e1afe0f2cd08ec48b115577db100806b82957cb501c442c54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f119cd0365a9d3b652447760806c1e5f800cf57d2fa2a28f48680312bf44350",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/5805c247791e40627024ActualFourthCorrelationDerivative/Variantb62b3241e231265e1afe0f2cd08ec48b115577db100806b82957cb501c442c54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:258d3c33-de76-9384-cf7c-61e16b572590`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_translate_product_hasDerivAt (A : ℝ) (hA : 0 < A)
    (g : ℝ → ℝ) (hg : Integrable g) (t : ℝ) :
    HasDerivAt (fun s => ∫ x : ℝ, g x *
      deriv (normalizedTest explicitSecondDerivative A) (x - s))
      (-(∫ x : ℝ, g x * actualSecondProfile A (x - t))) t := by
  let f := deriv (normalizedTest explicitSecondDerivative A)
  have hc : Continuous f := (normalizedTest_contDiff A hA).continuous_deriv (by norm_num)
  obtain ⟨M, _hM0, hM⟩ := actual_first_derivative_bounded A hA
  obtain ⟨K, hK⟩ := actual_first_derivative_lipschitz A hA
  have hmeas : ∀ s : ℝ, AEStronglyMeasurable (fun x => g x * f (x - s)) volume :=
    fun s => hg.aestronglyMeasurable.mul
      (hc.comp (continuous_id.sub continuous_const)).aestronglyMeasurable
  have hint : Integrable (fun x => g x * f (x - t)) := by
    apply (hg.abs.mul_const M).mono' (hmeas t)
    filter_upwards [] with x
    rw [Real.norm_eq_abs, abs_mul]
    exact mul_le_mul_of_nonneg_left (hM (x - t)) (abs_nonneg _)
  have hmder : AEStronglyMeasurable
      (fun x => -(g x * actualSecondProfile A (x - t))) volume :=
    (hg.aestronglyMeasurable.mul ((actualSecondProfile_measurable A).comp
      (measurable_id.sub measurable_const)).aestronglyMeasurable).neg
  have hlip : ∀ᵐ x : ℝ, LipschitzOnWith (Real.nnabs ((K : ℝ) * |g x|))
      (fun s => g x * f (x - s)) univ := by
    filter_upwards [] with x
    apply LipschitzOnWith.of_dist_le_mul
    intro s _ u _
    rw [Real.dist_eq, ← mul_sub, abs_mul, Real.coe_nnabs,
      abs_of_nonneg (mul_nonneg K.coe_nonneg (abs_nonneg _)), Real.dist_eq]
    have hb := hK.dist_le_mul (x - s) (x - u)
    rw [Real.dist_eq, Real.dist_eq] at hb
    have he : |x - s - (x - u)| = |s - u| := by
      rw [show x - s - (x - u) = -(s - u) by ring, abs_neg]
    rw [he] at hb
    nlinarith [mul_le_mul_of_nonneg_left hb (abs_nonneg (g x))]
  have hdiff : ∀ᵐ x : ℝ, HasDerivAt (fun s => g x * f (x - s))
      (-(g x * actualSecondProfile A (x - t))) t := by
    filter_upwards [volume.ae_ne (t - A), volume.ae_ne (t + A)] with x hxl hxr
    have hl : x - t ≠ -A := by intro h; apply hxl; linarith
    have hr : x - t ≠ A := by intro h; apply hxr; linarith
    have hd := (actual_first_derivative_hasDerivAt_of_ne_endpoints A (x - t) hA hl hr).comp t
      ((hasDerivAt_const t x).sub (hasDerivAt_id t))
    simpa only [f, Function.comp_def, zero_sub, mul_neg, mul_one] using! hd.const_mul (g x)
  have hd := (hasDerivAt_integral_of_dominated_loc_of_lip
    (F := fun s x : ℝ => g x * f (x - s))
    (F' := fun x => -(g x * actualSecondProfile A (x - t)))
    (bound := fun x => (K : ℝ) * |g x|)
    (s := univ) (μ := volume) (by simp)
    (Eventually.of_forall hmeas) hint hmder hlip (hg.abs.const_mul _) hdiff).2
  simpa only [integral_neg, f] using hd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/5805c247791e40627024ActualFourthCorrelationDerivative/Variantb62b3241e231265e1afe0f2cd08ec48b115577db100806b82957cb501c442c54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/5805c247791e40627024ActualFourthCorrelationDerivative/Variantb62b3241e231265e1afe0f2cd08ec48b115577db100806b82957cb501c442c54.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f5fd99795b5b1ffc1084f54b721b13705028014` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
