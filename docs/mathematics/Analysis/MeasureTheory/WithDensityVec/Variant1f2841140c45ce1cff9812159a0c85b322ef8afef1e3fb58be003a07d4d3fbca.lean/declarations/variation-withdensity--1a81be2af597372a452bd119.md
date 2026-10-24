# variation_withDensity'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae2e6dabd5ce78df77d591ac5935e114023762df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de3b43f8-8a8d-be6e-fe59-2c9c47a99b1c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a56a10b-e44c-0734-a34b-25be9e8e5517",
  "kind": "lemma",
  "lexical_name": "variation_withDensity'",
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
  "slug": "variation-withdensity--1a81be2af597372a452bd119",
  "source": {
    "blob": "ae2e6dabd5ce78df77d591ac5935e114023762df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 106,
    "path": "GRWTSK/Analysis/MeasureTheory/WithDensityVec/Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a81be2af597372a452bd1195fc4d96ac9e5bebab1c0b348fa354973c1f58704",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/WithDensityVec/Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a56a10b-e44c-0734-a34b-25be9e8e5517`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma variation_withDensity' [CompleteSpace G]
    (hf : μ.Integrable f) (hB : ∀ x y, ‖B x y‖₊ = ‖B.flip y‖₊ * ‖x‖₊) :
    (μ.withDensity f B).variation = (μ.transpose B).variation.withDensity (fun x ↦ ‖f x‖ₑ) := by
  apply le_antisymm variation_WithDensity_le
  apply Measure.le_iff.2 (fun s hs ↦ ?_)
  /- For the nontrivial direction, we have to show that for each measurable set `s`,
  `∫⁻ (a : X) in s, ‖f a‖ₑ ∂(μ.transpose B).variation ≤ (μ.withDensity f B).variation s`.
  As the variation is a supremum over finite partitions, we need to exhibit a partition. For this,
  we approximate `f` by a simple function `g`. Then the left term is approximately
  `∑ i, ‖g i‖ₑ * (μ.transpose B).variation (g ⁻¹' {i})` (where everything is intersected with `s`).
  By definition, the variation of `g ⁻¹' {i}` is close to a sum `∑ j, ‖(μ.transpose B) Pᵢⱼ‖ₑ` over
  a partition `Pᵢⱼ` of `g ⁻¹' {i}`. Putting all these together, one gets the desired
  partition of `s`, for which `∫⁻ a in s, ‖f a‖ₑ ∂(μ.transpose B).variation` is close to
  `∑ i j, ‖∫ x in Pᵢⱼ, f x ∂[B; μ]‖ₑ`, i.e., `∑ i j, ‖(μ.withDensity f B) Pᵢⱼ‖ₑ`. The latter sum
  is bounded by `(μ.withDensity f B).variation s` as desired. -/
  rw [MeasureTheory.withDensity_apply _ hs]
  apply ENNReal.le_of_forall_pos_le_add
  rintro ε εpos -
  let δ := ε / 3
  have δpos : 0 < δ := div_pos εpos (by norm_num)
  -- first step: approximate `f` by a simple function `g`.
  obtain ⟨g, hg, gmem⟩ : ∃ (g : X →ₛ E), eLpNorm (f - ⇑g) 1 (μ.transpose B).variation ≤ δ
      ∧ MemLp (⇑g) 1 μ.variation := by
    obtain ⟨ρ, ρpos, hδ⟩ : ∃ ρ > 0, ‖B‖₊ * ρ ≤ δ := by
      rcases eq_or_ne (‖B‖₊) 0 with hB | hB
      · exact ⟨1, zero_lt_one, by simp [hB]⟩
      · refine ⟨‖B‖₊ ⁻¹ * δ, by positivity, ?_⟩
        rw [← mul_assoc]
        apply mul_le_of_le_one_left (by positivity) mul_inv_le_one
    obtain ⟨g, h'g, gmem⟩ : ∃ (g : X →ₛ E), eLpNorm (f - ⇑g) 1 μ.variation < ρ
        ∧ MemLp (⇑g) 1 μ.variation :=
      (memLp_one_iff_integrable.2 hf).exists_simpleFunc_eLpNorm_sub_lt (by simp)
        (by simpa using ρpos.ne')
    have hfg : AEStronglyMeasurable (f - ⇑g) μ.variation :=
      aestronglyMeasurable_of_eLpNorm_ne_top (ne_of_lt (h'g.trans_le le_top))
    refine ⟨g, ?_, gmem⟩
    refine (eLpNorm_mono_measure _ (variation_transpose_le μ B)).trans ?_
    rw [eLpNorm_smul_measure_of_ne_top' (p := 1) (μ := μ.variation) (by simp)
      ‖B‖₊ (f - ⇑g) hfg]
    grw [h'g.le]
    simp only [ENNReal.toReal_one, inv_one, NNReal.rpow_one, ENNReal.smul_def, smul_eq_mul]
    exact_mod_cast hδ
  -- the integral of `‖f‖ₑ` is approximated up to `δ` by that of `‖g‖ₑ`.
  have I1 : ∫⁻ a in s, ‖f a‖ₑ ∂(μ.transpose B).variation
        ≤ ∫⁻ a in s, ‖g a‖ₑ ∂(μ.transpose B).variation + δ := calc
    _ ≤ ∫⁻ a in s, ‖f a - g a‖ₑ + ‖g a‖ₑ ∂(μ.transpose B).variation := by
      gcongr with a
      nth_rw 1 [show f a = (f a - g a) + g a by abel]
      exact enorm_add_le (f a - g a) (g a)
    _ = ∫⁻ a in s, ‖g a‖ₑ ∂(μ.transpose B).variation +
          ∫⁻ a in s, ‖f a - g a‖ₑ ∂(μ.transpose B).variation := by
      rw [lintegral_add_right, add_comm]
      exact g.stronglyMeasurable.enorm
    _ ≤ ∫⁻ a in s, ‖g a‖ₑ ∂(μ.transpose B).variation +
          ∫⁻ a, ‖f a - g a‖ₑ ∂(μ.transpose B).variation := by
      gcongr
      exact Measure.restrict_le_self
    _ ≤ ∫⁻ a in s, ‖g a‖ₑ ∂(μ.transpose B).variation + δ := by
      rw [eLpNorm_one_eq_lintegral_enorm
        (aestronglyMeasurable_of_eLpNorm_ne_top (ne_of_lt (hg.trans_lt ENNReal.coe_lt_top)))] at hg
      gcongr
      exact hg
  -- the integral of `‖g‖ₑ` can be rewritten as a weighted sum of measures, as `g` is a simple
  -- function.
  have I2 : ∫⁻ a in s, ‖g a‖ₑ ∂(μ.transpose B).variation =
      ∑ i ∈ g.range, ‖i‖ₑ * ((μ.transpose B).restrict s).variation (g ⁻¹' {i}) := calc
    _ = (g.map (‖·‖ₑ)).lintegral ((μ.transpose B).variation.restrict s) :=
      SimpleFunc.lintegral_eq_lintegral _ _
    _ = ∑ i ∈ g.range, ‖i‖ₑ * (μ.transpose B).variation.restrict s (g ⁻¹' {i}) :=
      SimpleFunc.map_lintegral _ _
    _ = ∑ i ∈ g.range, ‖i‖ₑ * ((μ.transpose B).restrict s).variation (g ⁻¹' {i}) := by
      simp_rw [variation_restrict hs]
  -- For each `i`, choose a partition `P i` of `g ⁻¹' {i}` such that the sum of the enorms
  -- of their measures approximates well enough the variation, by definition of the variation.
  obtain ⟨ρ,ρpos, hρ⟩ : ∃ ρ > 0, ∑ i ∈ g.range, ‖i‖ₑ * ρ ≤ δ := by
    refine ⟨δ * (∑ i ∈ g.range, ‖i‖ₑ)⁻¹, by simp [δpos], ?_⟩
    grw [← Finset.sum_mul, mul_comm (δ : ℝ≥0∞), ← mul_assoc, ENNReal.mul_inv_le_one, one_mul]
  have C i : ∃ (P : Finset (Set X)), (∀ t ∈ P, t ⊆ g ⁻¹' {i})
      ∧ ((P : Set (Set X)).PairwiseDisjoint id) ∧
      (∀ t ∈ P, MeasurableSet t) ∧
      ‖i‖ₑ * ((μ.transpose B).restrict s).variation (g ⁻¹' {i}) ≤
        ‖i‖ₑ * (∑ p ∈ P, ‖(μ.transpose B).restrict s p‖ₑ + ρ) := by
    rcases eq_or_ne i 0 with rfl | hi
    · exact ⟨∅, by simp⟩
    suffices ∃ (P : Finset (Set X)), (∀ t ∈ P, t ⊆ g ⁻¹' {i})
        ∧ ((P : Set (Set X)).PairwiseDisjoint id) ∧ (∀ t ∈ P, MeasurableSet t) ∧
        ((μ.transpose B).restrict s).variation (g ⁻¹' {i}) ≤
        (∑ p ∈ P, ‖(μ.transpose B).restrict s p‖ₑ + ρ) by
      obtain ⟨P, hP, h'P, h''P, h'''P⟩ := this
      exact ⟨P, hP, h'P, h''P, by gcongr⟩
    apply exists_variation_le_add' _ (g.measurableSet_fiber i) ρpos
    rw [variation_restrict hs]
    have : MemLp (⇑g) 1 (μ.transpose B).variation :=
      gmem.of_measure_le_smul (c := ‖B‖₊) (by simp) (variation_transpose_le _ _)
    exact (g.integrable_iff.1 (memLp_one_iff_integrable.1 this).restrict i hi).ne
  choose P Pg Pdisj Pmeas hP using C
  -- rewrite everything in terms of the global partition made by putting together the `Pᵢ`,
  -- and register that the resulting error is bounded by `δ`.
  have I3 : ∑ i ∈ g.range, ‖i‖ₑ * ((μ.transpose B).restrict s).variation (g ⁻¹' {i}) ≤
      ∑ i ∈ g.range.sigma P, ‖i.1‖ₑ * ‖(μ.transpose B).restrict s i.2‖ₑ + δ := calc
    ∑ i ∈ g.range, ‖i‖ₑ * ((μ.transpose B).restrict s).variation (g ⁻¹' {i})
    _ ≤ ∑ i ∈ g.range, ‖i‖ₑ * ((∑ p ∈ P i, ‖(μ.transpose B).restrict s p‖ₑ) + ρ) := by
      gcongr 1 with i hi
      exact hP i
    _ ≤ ∑ i ∈ g.range, ∑ p ∈ P i, ‖i‖ₑ * ‖(μ.transpose B).restrict s p‖ₑ + δ := by
      simp_rw [mul_add, Finset.sum_add_distrib, Finset.mul_sum]
      gcongr
    _ = ∑ i ∈ g.range.sigma P, ‖i.1‖ₑ * ‖(μ.transpose B).restrict s i.2‖ₑ + δ := by
      rw [Finset.sum_sigma']
  -- in the above sum, replace the values of `g` by `f`, as these two functions are close
  -- in `L^1` norm.
  have I4 : ∑ i ∈ g.range.sigma P, ‖i.1‖ₑ * ‖(μ.transpose B).restrict s i.2‖ₑ
      ≤ ∑ i ∈ g.range.sigma P, ‖∫ᵛ x in i.2, f x ∂[B; μ.restrict s]‖ₑ + δ := calc
    ∑ i ∈ g.range.sigma P, ‖i.1‖ₑ * ‖(μ.transpose B).restrict s i.2‖ₑ
    _ = ∑ i ∈ g.range.sigma P, ‖∫ᵛ x in i.2, i.1 ∂[B; μ.restrict s]‖ₑ := by
      congr! with ⟨i, p⟩ hi
      rcases eq_or_ne i 0 with rfl | h'i
      · simp
      simp only [Finset.mem_sigma] at hi
      have pmeas : MeasurableSet p := Pmeas i _ hi.2
      have : IsFiniteMeasure ((μ.restrict s).variation.restrict p) := by
        constructor
        rw [variation_restrict hs, Measure.restrict_restrict pmeas,
          MeasureTheory.Measure.restrict_apply_univ]
        apply lt_of_le_of_lt ?_ (g.integrable_iff.1 (memLp_one_iff_integrable.1 gmem) i h'i)
        exact measure_mono (inter_subset_left.trans (Pg i _ hi.2))
      rw [setIntegral_const, restrict_apply _ hs pmeas, restrict_apply _ hs pmeas]
      simp [transpose, hB, enorm_eq_nnnorm, mul_comm]
    _ = ∑ i ∈ g.range.sigma P, ‖∫ᵛ x in i.2, g x ∂[B; μ.restrict s]‖ₑ := by
      congr! 2 with ⟨i, p⟩ hi
      simp only [Finset.mem_sigma] at hi
      apply setIntegral_congr_ae
      filter_upwards with x hx using (Pg i _ hi.2 hx).symm
    _ = ∑ i ∈ g.range.sigma P, ‖∫ᵛ x in i.2, (g x - f x) + f x ∂[B; μ.restrict s]‖ₑ := by simp
    _ = ∑ i ∈ g.range.sigma P, ‖∫ᵛ x in i.2, (g x - f x) ∂[B; μ.restrict s]
          + ∫ᵛ x in i.2, f x ∂[B; μ.restrict s]‖ₑ := by
      congr! with i hi
      rw [integral_fun_add]
      · apply Integrable.restrict
        apply Integrable.restrict
        apply Integrable.sub (memLp_one_iff_integrable.1 gmem) hf
      · apply hf.restrict.restrict
    _ ≤ ∑ i ∈ g.range.sigma P, ‖∫ᵛ x in i.2, (g x - f x) ∂[B; μ.restrict s]‖ₑ
        + ∑ i ∈ g.range.sigma P, ‖∫ᵛ x in i.2, f x ∂[B; μ.restrict s]‖ₑ := by
      rw [← Finset.sum_add_distrib]
      gcongr with i hi
      apply enorm_add_le
    _ ≤ ∑ i ∈ g.range.sigma P, ∫⁻ x in i.2, ‖g x - f x‖ₑ ∂(μ.transpose B).variation
        + ∑ i ∈ g.range.sigma P, ‖∫ᵛ x in i.2, f x ∂[B; μ.restrict s]‖ₑ := by
      gcongr with i hi
      grw [enorm_setIntegral_le_lintegral_enorm_transpose]
      apply lintegral_mono' _ le_rfl
      apply Measure.restrict_mono le_rfl
      rw [transpose_restrict, variation_restrict hs]
      apply Measure.restrict_le_self
    _ = ∫⁻ x in (⋃ i ∈ g.range.sigma P, i.2), ‖g x - f x‖ₑ ∂(μ.transpose B).variation
        + ∑ i ∈ g.range.sigma P, ‖∫ᵛ x in i.2, f x ∂[B; μ.restrict s]‖ₑ := by
      rw [lintegral_biUnion_finset]
      · rintro ⟨i, p⟩ hi ⟨j, q⟩ hj hijpq
        simp only [Finset.coe_sigma, SimpleFunc.coe_range, mem_sigma_iff, mem_range,
          SetLike.mem_coe] at hi hj
        rcases eq_or_ne i j with rfl | hij
        · simp only [ne_eq, Sigma.mk.injEq, heq_eq_eq, true_and] at hijpq
          exact Pdisj i hi.2 hj.2 hijpq
        · have : Disjoint (g ⁻¹' {i}) (g ⁻¹' {j}) := by grind
          exact this.mono (Pg i p hi.2) (Pg j q hj.2)
      · rintro ⟨i, p⟩ hip
        simp only [Finset.mem_sigma, SimpleFunc.mem_range, mem_range] at hip
        exact Pmeas i p hip.2
    _ ≤ ∑ i ∈ g.range.sigma P, ‖∫ᵛ x in i.2, f x ∂[B; μ.restrict s]‖ₑ +
        ∫⁻ x, ‖g x - f x‖ₑ ∂(μ.transpose B).variation := by
      rw [add_comm]
      gcongr
      apply Measure.restrict_le_self
    _ ≤ ∑ i ∈ g.range.sigma P, ‖∫ᵛ x in i.2, f x ∂[B; μ.restrict s]‖ₑ + δ := by
      gcongr
      simp_rw [enorm_sub_rev]
      change ∫⁻ x, ‖(f - ⇑g) x‖ₑ ∂(μ.transpose B).variation ≤ ↑δ
      rw [← eLpNorm_one_eq_lintegral_enorm
        (aestronglyMeasurable_of_eLpNorm_ne_top (ne_of_lt (hg.trans_lt ENNReal.coe_lt_top)))]
      exact hg
  -- register that the sum of the enorms of the integrals of `f` over the pieces `Pᵢⱼ` of the
  -- partition is bounded by the variation of `μ.withDensity f B`, by definition of the variation.
  have I5 : ∑ i ∈ g.range.sigma P, ‖∫ᵛ x in i.2, f x ∂[B; μ.restrict s]‖ₑ
      ≤ (μ.withDensity f B).variation s := by
    let Q : Finset (Set X) := (g.range.sigma P).image (fun p ↦ p.2 ∩ s)
    calc ∑ i ∈ g.range.sigma P, ‖∫ᵛ x in i.2, f x ∂[B; μ.restrict s]‖ₑ
    _ = ∑ j ∈ Q, ‖∫ᵛ x in j, f x ∂[B; μ]‖ₑ := by
      simp only [Q]
      rw [Finset.sum_image_of_pairwise_eq_zero]; swap
      · rintro ⟨i, p⟩ hi ⟨j, q⟩ hj hijpq h'ij
        simp only [Finset.coe_sigma, SimpleFunc.coe_range, mem_sigma_iff, mem_range,
          SetLike.mem_coe] at hi hj
        suffices H : Disjoint p q by
          have : Disjoint (p ∩ s) (q ∩ s) := H.mono inter_subset_left inter_subset_left
          rw [← h'ij, disjoint_self] at this
          simp [this]
        rcases eq_or_ne i j with rfl | hij
        · simp only [ne_eq, Sigma.mk.injEq, heq_eq_eq, true_and] at hijpq
          exact Pdisj i hi.2 hj.2 hijpq
        · have : Disjoint (g ⁻¹' {i}) (g ⁻¹' {j}) := by grind
          exact this.mono (Pg i p hi.2) (Pg j q hj.2)
      apply Finset.sum_congr rfl
      rintro ⟨i, p⟩ hi
      simp only [Finset.mem_sigma, SimpleFunc.mem_range, mem_range] at hi
      rw [restrict_restrict _ (Pmeas i p hi.2) hs]
    _ = ∑ j ∈ Q, ‖μ.withDensity f B j‖ₑ :=
      Finset.sum_congr rfl (fun t ht ↦ by rw [withDensity_apply hf])
    _ ≤ (μ.withDensity f B).variation s := by
      apply le_variation _ hs
      · intro t ht
        simp only [Finset.mem_image, Finset.mem_sigma, SimpleFunc.mem_range, mem_range,
          Sigma.exists, ↓existsAndEq, true_and, exists_and_right, Q] at ht
        rcases ht with ⟨p, -, rfl⟩
        exact inter_subset_right
      · intro t ht u hu htu
        simp only [Finset.coe_image, Finset.coe_sigma, SimpleFunc.coe_range, mem_image,
          mem_sigma_iff, mem_range, SetLike.mem_coe, Sigma.exists, ↓existsAndEq, true_and,
          exists_and_right, Q] at ht hu
        rcases ht with ⟨p, ⟨i, hi⟩, rfl⟩
        rcases hu with ⟨q, ⟨j, hj⟩, rfl⟩
        have hpq : p ≠ q := by grind only
        suffices H : Disjoint p q from H.mono inter_subset_left inter_subset_left
        rcases eq_or_ne (g i) (g j) with hij | hij
        · rw [← hij] at hj
          exact Pdisj (g i) hi hj hpq
        · have : Disjoint (g ⁻¹' {g i}) (g ⁻¹' {g j}) := by grind
          exact this.mono (Pg (g i) p hi) (Pg (g j) q hj)
  -- finally, put together the above inequalities, and argue that the overall error `3δ` is
  -- bounded by `ε` by design.
  calc ∫⁻ (a : X) in s, ‖f a‖ₑ ∂(μ.transpose B).variation
  _ ≤ ∫⁻ a in s, ‖g a‖ₑ ∂(μ.transpose B).variation + δ := I1
  _ = ∑ i ∈ g.range, ‖i‖ₑ * ((μ.transpose B).restrict s).variation (g ⁻¹' {i}) + δ := by rw [I2]
  _ ≤ (∑ i ∈ g.range.sigma P, ‖i.1‖ₑ * ‖(μ.transpose B).restrict s i.2‖ₑ + δ) + δ := by gcongr
  _ ≤ ((∑ i ∈ g.range.sigma P, ‖∫ᵛ x in i.2, f x ∂[B; μ.restrict s]‖ₑ + δ) + δ) + δ := by gcongr
  _ = (∑ i ∈ g.range.sigma P, ‖∫ᵛ x in i.2, f x ∂[B; μ.restrict s]‖ₑ) + 3 * δ := by ring
  _ ≤ (μ.withDensity f B).variation s + 3 * δ := by gcongr
  _ ≤ (μ.withDensity f B).variation s + ε := by
    simp only [ne_eq, OfNat.ofNat_ne_zero, not_false_eq_true, ENNReal.coe_div, ENNReal.coe_ofNat, δ]
    rw [ENNReal.mul_div_cancel (by simp) (by simp)]

/-- If `‖B x y‖ = ‖x‖ * ‖y‖` for all `x, y`, then the variation of a vector measure with
density `f` wrt `μ` is the measure with density `‖f‖ₑ` with respect to the variation of `μ`.

The condition on `B` is necessary: for a counterexample without it, let `B` be the scalar
product in `ℝ²` and `f x` everywhere horizontal and `μ s` everywhere vertical.
Then `μ.withDensity f B = 0` so its variation is zero, while the integral of `‖f‖ₑ` is not.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/WithDensityVec/Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/WithDensityVec/Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae2e6dabd5ce78df77d591ac5935e114023762df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
