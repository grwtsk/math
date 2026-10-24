# tendsto_preCdf_atBot_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e21ed035-dd1b-6233-f628-2bf8bff37a5f",
  "kind": "theorem",
  "lexical_name": "tendsto_preCdf_atBot_zero",
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
  "slug": "tendsto-precdf-atbot-zero--575d661b3533778fb6eaeeaa",
  "source": {
    "blob": "8ff22f63535d2a22bb2c37e21aea83df0babac79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 518,
    "line": 451,
    "path": "GRWTSK/Analysis/MeasureTheory/CondCdf/Variant4b5df95b8a088303a33e59129843638460ae888b19f791e355f81009a9c87eca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:575d661b3533778fb6eaeeaa6e625a342474d3a356d69a403e54b7d5d2fdade8",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CondCDF/Variant4b5df95b8a088303a33e59129843638460ae888b19f791e355f81009a9c87eca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e21ed035-dd1b-6233-f628-2bf8bff37a5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 451–518.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_preCdf_atBot_zero (ρ : Measure (α × ℝ)) [IsFiniteMeasure ρ] :
    ∀ᵐ a ∂ρ.fst, Tendsto (fun r => preCdf ρ r a) atBot (𝓝 0) := by
  -- We show first that `preCdf` has a limit in ℝ≥0∞ almost everywhere.
  -- We then show that the integral of `pre_cdf` tends to 0, and that it also tends
  -- to the integral of the limit. Since the limit has integral 0, it is equal to 0 a.e.
  suffices ∀ᵐ a ∂ρ.fst, Tendsto (fun r => preCdf ρ (-r) a) atTop (𝓝 0) by
    filter_upwards [this] with a ha
    have h_eq_neg : (fun r : ℚ => preCdf ρ r a) = fun r : ℚ => preCdf ρ (- -r) a := by
      simp_rw [neg_neg]
    rw [h_eq_neg]
    exact ha.comp tendsto_neg_atBot_atTop
  have h_exists : ∀ᵐ a ∂ρ.fst, ∃ l, Tendsto (fun r => preCdf ρ (-r) a) atTop (𝓝 l) := by
    filter_upwards [monotone_preCdf ρ] with a ha
    have h_anti : Antitone fun r => preCdf ρ (-r) a := fun p q hpq => ha (neg_le_neg hpq)
    have h_tendsto :
      Tendsto (fun r => preCdf ρ (-r) a) atTop atBot ∨
        ∃ l, Tendsto (fun r => preCdf ρ (-r) a) atTop (𝓝 l) :=
      tendsto_of_antitone h_anti
    cases' h_tendsto with h_bot h_tendsto
    · exact ⟨0, Tendsto.mono_right h_bot atBot_le_nhds_bot⟩
    · exact h_tendsto
  classical
  let F : α → ℝ≥0∞ := fun a =>
    if h : ∃ l, Tendsto (fun r => preCdf ρ (-r) a) atTop (𝓝 l) then h.choose else 0
  have h_tendsto : ∀ᵐ a ∂ρ.fst, Tendsto (fun r => preCdf ρ (-r) a) atTop (𝓝 (F a)) := by
    filter_upwards [h_exists] with a ha
    simp_rw [dif_pos ha]
    exact ha.choose_spec
  suffices h_lintegral_eq : ∫⁻ a, F a ∂ρ.fst = 0
  · have hF_ae_meas : AEMeasurable F ρ.fst := by
      refine' aemeasurable_of_tendsto_metrizable_ae _ (fun n => _) h_tendsto
      exact measurable_preCdf.aemeasurable
    rw [lintegral_eq_zero_iff' hF_ae_meas] at h_lintegral_eq
    filter_upwards [h_tendsto, h_lintegral_eq] with a ha_tendsto ha_eq
    rwa [ha_eq] at ha_tendsto
  have h_lintegral :
    Tendsto (fun r => ∫⁻ a, preCdf ρ (-r) a ∂ρ.fst) atTop (𝓝 (∫⁻ a, F a ∂ρ.fst)) := by
    refine'
      tendsto_lintegral_filter_of_dominated_convergence (fun _ => 1)
        (eventually_of_forall fun _ => measurable_preCdf) (eventually_of_forall fun _ => _) _
        h_tendsto
    · filter_upwards [preCdf_le_one ρ] with a ha using ha _
    · rw [lintegral_one]
      exact measure_ne_top _ _
  have h_lintegral' : Tendsto (fun r => ∫⁻ a, preCdf ρ (-r) a ∂ρ.fst) atTop (𝓝 0) := by
    have h_lintegral_eq :
      (fun r => ∫⁻ a, preCdf ρ (-r) a ∂ρ.fst) = fun r : ℚ => ρ (univ ×ˢ Iic (-r : ℝ)) := by
      ext1 n
      rw [← set_lintegral_univ, set_lintegral_preCdf_fst ρ _ MeasurableSet.univ,
        Measure.IicSnd_univ]
      norm_cast
    rw [h_lintegral_eq]
    have h_zero_eq_measure_iInter : (0 : ℝ≥0∞) = ρ (⋂ r : ℚ, univ ×ˢ Iic (-r : ℝ)) := by
      suffices ⋂ r : ℚ, Iic (-(r : ℝ)) = ∅ by rw [← prod_iInter, this, prod_empty, measure_empty]
      ext1 x
      simp only [mem_iInter, mem_Iic, mem_empty_iff_false, iff_false_iff, not_forall, not_le]
      simp_rw [neg_lt]
      exact exists_rat_gt _
    rw [h_zero_eq_measure_iInter]
    refine'
      tendsto_measure_iInter (fun n => MeasurableSet.univ.prod measurableSet_Iic)
        (fun i j hij x => _) ⟨0, measure_ne_top ρ _⟩
    simp only [mem_prod, mem_univ, mem_Iic, true_and_iff]
    refine' fun hxj => hxj.trans (neg_le_neg _)
    exact_mod_cast hij
  exact tendsto_nhds_unique h_lintegral h_lintegral'
#align probability_theory.tendsto_pre_cdf_at_bot_zero ProbabilityTheory.tendsto_preCdf_atBot_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CondCDF/Variant4b5df95b8a088303a33e59129843638460ae888b19f791e355f81009a9c87eca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CondCdf/Variant4b5df95b8a088303a33e59129843638460ae888b19f791e355f81009a9c87eca.lean#L451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ff22f63535d2a22bb2c37e21aea83df0babac79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
