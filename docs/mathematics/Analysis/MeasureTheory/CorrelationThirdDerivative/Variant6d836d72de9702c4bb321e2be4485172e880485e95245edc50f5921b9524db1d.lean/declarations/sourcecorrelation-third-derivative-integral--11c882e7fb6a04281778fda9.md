# sourceCorrelation_third_derivative_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8365a39d284800474460ecaf8ef2831423255ce0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d836d72de9702c4bb321e2be4485172e880485e95245edc50f5921b9524db1d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:973d5b0c-6390-8cea-8258-7846cf126aba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c5226d6-43d1-7756-d486-1ce2a9a4298a",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_third_derivative_integral",
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
  "slug": "sourcecorrelation-third-derivative-integral--11c882e7fb6a04281778fda9",
  "source": {
    "blob": "8365a39d284800474460ecaf8ef2831423255ce0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 24,
    "path": "GRWTSK/Analysis/MeasureTheory/CorrelationThirdDerivative/Variant6d836d72de9702c4bb321e2be4485172e880485e95245edc50f5921b9524db1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11c882e7fb6a04281778fda9d08fc400559161bd35409be1d6f9ac53fd736a75",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CorrelationThirdDerivative/Variant6d836d72de9702c4bb321e2be4485172e880485e95245edc50f5921b9524db1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c5226d6-43d1-7756-d486-1ce2a9a4298a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_third_derivative_integral (A t : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ deriv (normalizedTest explicitSecondDerivative A) x *
      normalizedSecondTest A (x - t)) volume ∧
    HasDerivAt (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))
      (∫ x, deriv (normalizedTest explicitSecondDerivative A) x *
        normalizedSecondTest A (x - t)) t := by
  let f := deriv (normalizedTest explicitSecondDerivative A)
  have hf : Continuous f := (normalizedTest_contDiff A (by linarith)).continuous_deriv_one
  obtain ⟨L, hL⟩ := normalized_derivative_lipschitz A hA
  have hmeas : ∀ᶠ s in 𝓝 t, AEStronglyMeasurable (fun x ↦ -(f x * f (x - s))) volume := by
    apply Filter.Eventually.of_forall
    intro s
    exact (hf.mul (hf.comp (continuous_id.sub continuous_const))).neg.aestronglyMeasurable
  have hint : Integrable (fun x ↦ -(f x * f (x - t))) volume :=
    (derivative_correlation_product_integrable A t hA).neg
  have hdmeas : AEStronglyMeasurable
      (fun x ↦ f x * normalizedSecondTest A (x - t)) volume :=
    (hf.measurable.mul ((normalizedSecondTest_measurable A).comp
      (measurable_id.sub measurable_const))).aestronglyMeasurable
  have hlip : ∀ᵐ x : ℝ, LipschitzOnWith (Real.nnabs ((L : ℝ) * |f x|))
      (fun s ↦ -(f x * f (x - s))) Set.univ := by
    apply Filter.Eventually.of_forall
    intro x
    apply LipschitzWith.lipschitzOnWith
    apply LipschitzWith.of_dist_le_mul
    intro y z
    rw [dist_neg_neg, Real.dist_eq, ← mul_sub, abs_mul, Real.coe_nnabs,
      abs_of_nonneg (mul_nonneg L.coe_nonneg (abs_nonneg (f x))), Real.dist_eq]
    have hh := hL.dist_le_mul (x - y) (x - z)
    change |f (x - y) - f (x - z)| ≤ (L : ℝ) * |x - y - (x - z)| at hh
    have heq : |x - y - (x - z)| = |y - z| := by
      rw [show x - y - (x - z) = -(y - z) by ring, abs_neg]
    rw [heq] at hh
    calc
      _ ≤ |f x| * ((L : ℝ) * |y - z|) := mul_le_mul_of_nonneg_left hh (abs_nonneg _)
      _ = _ := by ring
  have hb : Integrable (fun x ↦ (L : ℝ) * |f x|) volume :=
    (normalized_derivative_integrable A hA).abs.const_mul (L : ℝ)
  have hshift : ∀ᵐ x : ℝ, HasDerivAt f (normalizedSecondTest A (x - t)) (x - t) :=
    (measurePreserving_sub_right volume t).quasiMeasurePreserving.tendsto_ae.eventually
      (normalized_derivative_hasDerivAt_ae A hA)
  have hdiff : ∀ᵐ x : ℝ, HasDerivAt (fun s ↦ -(f x * f (x - s)))
      (f x * normalizedSecondTest A (x - t)) t := by
    filter_upwards [hshift] with x hx
    have hh := ((hx.comp t ((hasDerivAt_id t).const_sub x)).const_mul (f x)).neg
    convert! hh using 1
    simp only [mul_neg, neg_neg, mul_one]
  have hd := hasDerivAt_integral_of_dominated_loc_of_lip (μ := volume)
    (Filter.univ_mem : Set.univ ∈ 𝓝 t) hmeas hint hdmeas hlip hb hdiff
  refine ⟨hd.1, ?_⟩
  have heq : deriv (deriv (sourceCorrelation explicitSecondDerivative A)) =
      fun s ↦ ∫ x, -(f x * f (x - s)) := by
    funext s
    rw [integral_neg]
    exact sourceCorrelation_second_derivative_eq A s hA
  rw [heq]
  exact hd.2

/-- The resulting third derivative is the original first/second-test convolution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CorrelationThirdDerivative/Variant6d836d72de9702c4bb321e2be4485172e880485e95245edc50f5921b9524db1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CorrelationThirdDerivative/Variant6d836d72de9702c4bb321e2be4485172e880485e95245edc50f5921b9524db1d.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8365a39d284800474460ecaf8ef2831423255ce0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
