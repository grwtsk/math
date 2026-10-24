# ae_tendsto_lintegral_enorm_sub_div'_of_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4306b546065d2c8e4816f30f3507973d6ace6a16",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 772,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:962f776d-4a7c-d226-4853-fb057d5036db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa060d2d-c0b6-626c-0050-c562fa7df899",
  "kind": "theorem",
  "lexical_name": "ae_tendsto_lintegral_enorm_sub_div'_of_integrable",
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
  "slug": "ae-tendsto-lintegral-enorm-sub-div-of-integrable--639c1d63efcfa66b67c02f19",
  "source": {
    "blob": "4306b546065d2c8e4816f30f3507973d6ace6a16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 845,
    "line": 772,
    "path": "GRWTSK/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:639c1d63efcfa66b67c02f1955f80592b8e71d8fc0811dd98c9c7d85b2879ef6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa060d2d-c0b6-626c-0050-c562fa7df899`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 772–845.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_tendsto_lintegral_enorm_sub_div'_of_integrable {f : α → E} (hf : Integrable f μ)
    (h'f : StronglyMeasurable f) :
    ∀ᵐ x ∂μ, Tendsto (fun a => (∫⁻ y in a, ‖f y - f x‖ₑ ∂μ) / μ a) (v.filterAt x) (𝓝 0) := by
  /- For every `c`, then `(∫⁻ y in a, ‖f y - c‖ₑ ∂μ) / μ a` tends almost everywhere to `‖f x - c‖`.
    We apply this to a countable set of `c` which is dense in the range of `f`, to deduce the
    desired convergence.
    A minor technical inconvenience is that constants are not integrable, so to apply previous
    lemmas we need to replace `c` with the restriction of `c` to a finite measure set `A n` in the
    above sketch. -/
  let A := MeasureTheory.Measure.finiteSpanningSetsInOpen' μ
  rcases h'f.isSeparable_range with ⟨t, t_count, ht⟩
  have main :
    ∀ᵐ x ∂μ,
      ∀ᵉ (n : ℕ) (c ∈ t),
        Tendsto (fun a => (∫⁻ y in a, ‖f y - (A.set n).indicator (fun _ => c) y‖ₑ ∂μ) / μ a)
          (v.filterAt x) (𝓝 ‖f x - (A.set n).indicator (fun _ => c) x‖ₑ) := by
    #adaptation_note /-- 2024-04-23
    The next two lines were previously just `simp_rw [ae_all_iff, ae_ball_iff t_count]`. -/
    simp_rw [ae_all_iff]
    intro x; rw [ae_ball_iff t_count]; revert x
    intro n c _
    apply ae_tendsto_lintegral_div'
    · refine (h'f.sub ?_).enorm
      exact stronglyMeasurable_const.indicator (IsOpen.measurableSet (A.set_mem n))
    · apply ne_of_lt
      calc
        ∫⁻ y, ‖f y - (A.set n).indicator (fun _ : α => c) y‖ₑ ∂μ
          ≤ ∫⁻ y, ‖f y‖ₑ + ‖(A.set n).indicator (fun _ : α => c) y‖ₑ ∂μ :=
          lintegral_mono fun x ↦ enorm_sub_le
        _ = ∫⁻ y, ‖f y‖ₑ ∂μ + ∫⁻ y, ‖(A.set n).indicator (fun _ : α => c) y‖ₑ ∂μ :=
          lintegral_add_left h'f.enorm _
        _ < ∞ + ∞ :=
          haveI I : Integrable ((A.set n).indicator fun _ : α => c) μ := by
            simp only [integrable_indicator_iff (IsOpen.measurableSet (A.set_mem n)),
              integrableOn_const_iff (C := c), A.finite n, or_true]
          ENNReal.add_lt_add hf.2 I.2
  filter_upwards [main, v.ae_eventually_measure_pos] with x hx h'x
  have M c (hc : c ∈ t) :
      Tendsto (fun a => (∫⁻ y in a, ‖f y - c‖ₑ ∂μ) / μ a) (v.filterAt x) (𝓝 ‖f x - c‖ₑ) := by
    obtain ⟨n, xn⟩ : ∃ n, x ∈ A.set n := by simpa [← A.spanning] using mem_univ x
    specialize hx n c hc
    simp only [xn, indicator_of_mem] at hx
    apply hx.congr' _
    filter_upwards [v.eventually_filterAt_subset_of_nhds (IsOpen.mem_nhds (A.set_mem n) xn),
      v.eventually_filterAt_measurableSet x] with a ha h'a
    congr 1
    apply setLIntegral_congr_fun h'a
    filter_upwards with y hy using (by simp only [ha hy, indicator_of_mem])
  apply ENNReal.tendsto_nhds_zero.2 fun ε εpos => ?_
  obtain ⟨c, ct, xc⟩ : ∃ c ∈ t, ‖f x - c‖ₑ < ε / 2 := by
    simp_rw [← edist_eq_enorm_sub]
    have : f x ∈ closure t := ht (mem_range_self _)
    exact EMetric.mem_closure_iff.1 this (ε / 2) (ENNReal.half_pos (ne_of_gt εpos))
  filter_upwards [(tendsto_order.1 (M c ct)).2 (ε / 2) xc, h'x, v.eventually_measure_lt_top x] with
    a ha h'a h''a
  apply ENNReal.div_le_of_le_mul
  calc
    (∫⁻ y in a, ‖f y - f x‖ₑ ∂μ) ≤ ∫⁻ y in a, ‖f y - c‖ₑ + ‖f x - c‖ₑ ∂μ := by
      apply lintegral_mono fun x => ?_
      simpa only [← edist_eq_enorm_sub] using edist_triangle_right _ _ _
    _ = (∫⁻ y in a, ‖f y - c‖ₑ ∂μ) + ∫⁻ _ in a, ‖f x - c‖ₑ ∂μ :=
      (lintegral_add_right _ measurable_const)
    _ ≤ ε / 2 * μ a + ε / 2 * μ a := by
      gcongr
      · rw [ENNReal.div_lt_iff (Or.inl h'a.ne') (Or.inl h''a.ne)] at ha
        exact ha.le
      · simp only [lintegral_const, Measure.restrict_apply, MeasurableSet.univ, univ_inter]
        gcongr
    _ = ε * μ a := by rw [← add_mul, ENNReal.add_halves]

@[deprecated (since := "2025-01-22")]
alias ae_tendsto_lintegral_nnnorm_sub_div'_of_integrable :=
  ae_tendsto_lintegral_enorm_sub_div'_of_integrable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean#L772).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4306b546065d2c8e4816f30f3507973d6ace6a16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
