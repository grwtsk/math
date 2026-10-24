# lemma_IBP_bound_C1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 572,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8b517b2-c031-f872-e158-74ee8eece201",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:590c595d-a70a-0dab-e2ff-b671246f2fcc",
  "kind": "theorem",
  "lexical_name": "lemma_IBP_bound_C1",
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
  "slug": "lemma-ibp-bound-c1--da7464a7fa707a2bd29d0ab0",
  "source": {
    "blob": "bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 696,
    "line": 572,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da7464a7fa707a2bd29d0ab03839701fe5e271cc4c68f4330792854b507a1cce",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:590c595d-a70a-0dab-e2ff-b671246f2fcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 572–696.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemma_IBP_bound_C1 {a b : ℝ} (hab : a < b) (g : ℝ → ℝ) (F : ℝ → ℂ)
    (hg : ContDiffOn ℝ 1 g (Icc a b)) (hF : ContDiffOn ℝ 1 F (Icc a b)) :
    ‖(∫ t in Icc a b, (g t : ℂ) * deriv F t) - (g b * F b - g a * F a)‖ ≤
        (⨆ t ∈ Icc a b, ‖F t‖) * ∫ t in Icc a b, |deriv g t| := by
  have hint_parts : ∫ t in Icc a b, (g t) * (deriv F t) =
      (g b) * (F b) - (g a) * (F a) - ∫ t in Icc a b, (F t) * (deriv g t) := by
    rw [integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le hab.le,
      integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le hab.le,
        eq_sub_iff_add_eq, ← intervalIntegral.integral_add, intervalIntegral.integral_eq_sub_of_hasDeriv_right]
    · simpa only [Set.uIcc_of_le hab.le] using ContinuousOn.mul
        (continuous_ofReal.comp_continuousOn hg.continuousOn) hF.continuousOn
    · intro x hx
      have hxa : x > a := by cases max_cases a b <;> cases min_cases a b <;> linarith [hx.1, hx.2]
      have hxb : x < b := by cases max_cases a b <;> cases min_cases a b <;> linarith [hx.1, hx.2]
      convert HasDerivAt.hasDerivWithinAt <| HasDerivAt.mul
        (HasDerivAt.ofReal_comp <| hg.differentiableOn_one |> DifferentiableOn.hasDerivAt <| Icc_mem_nhds hxa hxb)
          (hF.differentiableOn_one |> DifferentiableOn.hasDerivAt <| Icc_mem_nhds hxa hxb)
            using 1
      ring
    · rw [intervalIntegrable_iff_integrableOn_Ioo_of_le hab.le]
      refine Integrable.add ?_ ?_
      · have hintF : IntegrableOn (fun x ↦ deriv F x) (Ioo a b) := by
          have hcont := hF.continuousOn_derivWithin
          have hintF' : IntegrableOn (fun x ↦ derivWithin F (Icc a b) x) (Ioo a b) :=
            (hcont (uniqueDiffOn_Icc hab) le_rfl |> ContinuousOn.integrableOn_Icc) |>
              fun h ↦ h.mono_set Ioo_subset_Icc_self
          refine hintF'.congr ?_
          filter_upwards [ae_restrict_mem measurableSet_Ioo] with x hx using
            by rw [derivWithin_of_mem_nhds (Icc_mem_nhds hx.1 hx.2)]
        apply Integrable.mono' _ _ _
        · exact fun x ↦ ‖deriv F x‖ * sSup (Set.image (fun x ↦ |g x|) (Icc a b))
        · exact Integrable.mul_const hintF.norm _
        · exact AEStronglyMeasurable.mul
            (continuous_ofReal.comp_aestronglyMeasurable
              (hg.continuousOn.aestronglyMeasurable measurableSet_Icc |>
                fun h ↦ h.mono_set Ioo_subset_Icc_self))
            hintF.aestronglyMeasurable
        · filter_upwards [ae_restrict_mem measurableSet_Ioo] with x hx using by
            simpa [mul_comm] using mul_le_mul_of_nonneg_left
              (le_csSup (IsCompact.bddAbove (isCompact_Icc.image_of_continuousOn
                (continuous_abs.comp_continuousOn hg.continuousOn)))
                (Set.mem_image_of_mem _ <| Ioo_subset_Icc_self hx)) (norm_nonneg _)
      · have hintg : IntegrableOn (fun x ↦ deriv g x) (Ioo a b) := by
          have hcont := hg.continuousOn_derivWithin (uniqueDiffOn_Icc hab) le_rfl
          have hintg' : IntegrableOn (fun x ↦ derivWithin g (Icc a b) x) (Ioo a b) :=
            hcont.integrableOn_Icc.mono_set Ioo_subset_Icc_self
          exact hintg'.congr_fun (fun x hx ↦
            by rw [derivWithin_of_mem_nhds (Icc_mem_nhds hx.1 hx.2)]) measurableSet_Ioo
        have hintFg : IntegrableOn (fun x ↦ F x * deriv g x) (Ioo a b) := by
          have hbdd : ∃ C, ∀ x ∈ Ioo a b, ‖F x‖ ≤ C :=
            IsCompact.exists_bound_of_continuousOn isCompact_Icc hF.continuousOn |>
              fun ⟨C, hC⟩ ↦ ⟨C, fun x hx ↦ hC x <| Ioo_subset_Icc_self hx⟩
          apply Integrable.mono' _ _ _
          · exact fun x ↦ hbdd.choose * ‖deriv g x‖
          · exact Integrable.const_mul hintg.norm _
          · exact AEStronglyMeasurable.mul
              (hF.continuousOn.aestronglyMeasurable measurableSet_Icc |>
                fun h ↦ h.mono_set Ioo_subset_Icc_self)
              (continuous_ofReal.comp_aestronglyMeasurable hintg.aestronglyMeasurable)
          · filter_upwards [ae_restrict_mem measurableSet_Ioo] with x hx using by
              simpa using mul_le_mul_of_nonneg_right (hbdd.choose_spec x hx)
                (norm_nonneg (deriv g x))
        exact hintFg
    · rw [intervalIntegrable_iff_integrableOn_Ioo_of_le hab.le]
      have hintF : IntegrableOn (fun x ↦ deriv F x) (Ioo a b) := by
        have hcont := hF.continuousOn_derivWithin
        have hintF' : IntegrableOn (fun x ↦ derivWithin F (Icc a b) x) (Ioo a b) :=
          (hcont (uniqueDiffOn_Icc hab) le_rfl |> ContinuousOn.integrableOn_Icc) |>
            fun h ↦ h.mono_set Ioo_subset_Icc_self
        refine hintF'.congr ?_
        filter_upwards [ae_restrict_mem measurableSet_Ioo] with x hx using
          by rw [derivWithin_of_mem_nhds (Icc_mem_nhds hx.1 hx.2)]
      refine hintF.norm.const_mul ?_ |> fun h ↦ h.mono' ?_ ?_
      · exact sSup (Set.image (fun x ↦ ‖g x‖) (Icc a b))
      · exact AEStronglyMeasurable.mul
          (continuous_ofReal.comp_aestronglyMeasurable
            (hg.continuousOn.aestronglyMeasurable measurableSet_Icc |>
              fun h ↦ h.mono_set Ioo_subset_Icc_self))
          hintF.aestronglyMeasurable
      · filter_upwards [ae_restrict_mem measurableSet_Ioo] with x hx using by
          simpa [abs_mul] using mul_le_mul_of_nonneg_right
            (le_csSup (IsCompact.bddAbove (isCompact_Icc.image_of_continuousOn hg.continuousOn.norm))
              (Set.mem_image_of_mem _ <| Ioo_subset_Icc_self hx)) (norm_nonneg _)
    · rw [intervalIntegrable_iff_integrableOn_Ioc_of_le hab.le]
      have hintg : IntegrableOn (fun x ↦ deriv g x) (Ioc a b) := by
        have hintg' : IntegrableOn (fun x ↦ deriv g x) (Ioo a b) := by
          have hcont := hg.continuousOn_derivWithin (uniqueDiffOn_Icc hab) le_rfl
          have hintg'' : IntegrableOn (fun x ↦ derivWithin g (Icc a b) x) (Ioo a b) :=
            hcont.integrableOn_Icc.mono_set Ioo_subset_Icc_self
          exact hintg''.congr_fun (fun x hx ↦
            by rw [derivWithin_of_mem_nhds (Icc_mem_nhds hx.1 hx.2)]) measurableSet_Ioo
        rwa [IntegrableOn, Measure.restrict_congr_set Ioo_ae_eq_Ioc] at *
      have hintFg : IntegrableOn (fun x ↦ F x * deriv g x) (Ioc a b) := by
        have hbdd : ∃ C, ∀ x ∈ Ioc a b, ‖F x‖ ≤ C :=
          IsCompact.exists_bound_of_continuousOn isCompact_Icc hF.continuousOn |>
            fun ⟨C, hC⟩ ↦ ⟨C, fun x hx ↦ hC x <| Ioc_subset_Icc_self hx⟩
        apply Integrable.mono' _ _ _
        · exact fun x ↦ hbdd.choose * ‖deriv g x‖
        · exact Integrable.const_mul hintg.norm _
        · exact AEStronglyMeasurable.mul
            (hF.continuousOn.aestronglyMeasurable measurableSet_Icc |>
              fun h ↦ h.mono_set Ioc_subset_Icc_self)
            (continuous_ofReal.comp_aestronglyMeasurable hintg.aestronglyMeasurable)
        · filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx using by
            simpa using mul_le_mul_of_nonneg_right (hbdd.choose_spec x hx)
              (norm_nonneg (deriv g x))
      convert hintFg using 1
  simp_all only [sub_sub_cancel_left, norm_neg, Set.mem_Icc, ge_iff_le]
  rw [← integral_const_mul]
  refine le_trans (norm_integral_le_integral_norm _) (integral_mono_of_nonneg ?_ ?_ ?_)
  · exact Eventually.of_forall fun x ↦ norm_nonneg _
  · refine Integrable.const_mul ?_ _
    have hderivint : IntegrableOn (deriv g) (Ioo a b) := by
      have hcont := hg.continuousOn_derivWithin (uniqueDiffOn_Icc hab) le_rfl
      exact (hcont.integrableOn_Icc.mono_set Ioo_subset_Icc_self) |> fun h ↦ h.congr_fun
        (fun x hx ↦ by rw [derivWithin_of_mem_nhds (Icc_mem_nhds hx.1 hx.2)]) measurableSet_Ioo
    simpa only [IntegrableOn, Measure.restrict_congr_set Ioo_ae_eq_Icc] using hderivint.abs
  · filter_upwards [ae_restrict_mem measurableSet_Icc] with t ht
    refine le_trans ?_ (mul_le_mul_of_nonneg_right (le_ciSup ?_ t) (abs_nonneg _))
    · aesop
    · obtain ⟨M, hM⟩ := IsCompact.exists_bound_of_continuousOn isCompact_Icc hF.continuousOn.norm
      exact ⟨Max.max M 1, Set.forall_mem_range.mpr fun t ↦ by rw [ciSup_eq_ite]; aesop⟩

/-- Integration by parts bound for `C¹` monotone functions.
For `C¹` monotone `g` and `C¹` `F`, `‖∫ g F' - [gF]‖ ≤ sup ‖F‖ · (g(b) - g(a))`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean#L572).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
