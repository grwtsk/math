# lintegral_comp_eq_lintegral_meas_le_mul_of_measurable_of_sigmaFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5de0d7f3-c1fc-acb1-eb97-cbe05e21c7a5",
  "kind": "theorem",
  "lexical_name": "lintegral_comp_eq_lintegral_meas_le_mul_of_measurable_of_sigmaFinite",
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
  "slug": "lintegral-comp-eq-lintegral-meas-le-mul-of-measurable-of-sigmafinite--35cbd7285d45cf833d9a3499",
  "source": {
    "blob": "18de3077a108c790d2b6c8addb314de87d5fb025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 115,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variantec49ef96b027f176e140df9957ab8eb6d74704027b4e509c18a2b1e44ac6b8ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35cbd7285d45cf833d9a3499b47c12206ff704c471125181972a4c968ee200fe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Layercake/Variantec49ef96b027f176e140df9957ab8eb6d74704027b4e509c18a2b1e44ac6b8ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5de0d7f3-c1fc-acb1-eb97-cbe05e21c7a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_comp_eq_lintegral_meas_le_mul_of_measurable_of_sigmaFinite
    (μ : Measure α) [SFinite μ]
    (f_nn : 0 ≤ f) (f_mble : Measurable f)
    (g_intble : ∀ t > 0, IntervalIntegrable g volume 0 t) (g_mble : Measurable g)
    (g_nn : ∀ t > 0, 0 ≤ g t) :
    ∫⁻ ω, ENNReal.ofReal (∫ t in 0..f ω, g t) ∂μ =
      ∫⁻ t in Ioi 0, μ {a : α | t ≤ f a} * ENNReal.ofReal (g t) := by
  have g_intble' : ∀ t : ℝ, 0 ≤ t → IntervalIntegrable g volume 0 t := by
    intro t ht
    rcases eq_or_lt_of_le ht with h | h
    · simp [← h]
    · exact g_intble t h
  have integrand_eq : ∀ ω,
      ENNReal.ofReal (∫ t in 0..f ω, g t) = ∫⁻ t in Ioc 0 (f ω), ENNReal.ofReal (g t) := by
    intro ω
    have g_ae_nn : 0 ≤ᵐ[volume.restrict (Ioc 0 (f ω))] g := by
      filter_upwards [self_mem_ae_restrict (measurableSet_Ioc : MeasurableSet (Ioc 0 (f ω)))]
        with x hx using g_nn x hx.1
    rw [← ofReal_integral_eq_lintegral_ofReal (g_intble' (f ω) (f_nn ω)).1 g_ae_nn]
    congr
    exact intervalIntegral.integral_of_le (f_nn ω)
  rw [lintegral_congr integrand_eq]
  simp_rw [← lintegral_indicator measurableSet_Ioc]
  rw [← lintegral_indicator measurableSet_Ioi, lintegral_lintegral_swap]
  · apply congr_arg
    funext s
    have aux₁ :
      (fun x => (Ioc 0 (f x)).indicator (fun t : ℝ => ENNReal.ofReal (g t)) s) = fun x =>
        ENNReal.ofReal (g s) * (Ioi (0 : ℝ)).indicator (fun _ => 1) s *
          (Ici s).indicator (fun _ : ℝ => (1 : ℝ≥0∞)) (f x) := by
      funext a
      by_cases h : s ∈ Ioc (0 : ℝ) (f a)
      · simp only [h, show s ∈ Ioi (0 : ℝ) from h.1, show f a ∈ Ici s from h.2, indicator_of_mem,
          mul_one]
      · have h_copy := h
        simp only [mem_Ioc, not_and, not_le] at h
        by_cases h' : 0 < s
        · simp only [h_copy, h h', indicator_of_notMem, not_false_iff, mem_Ici, not_le, mul_zero]
        · have : s ∉ Ioi (0 : ℝ) := h'
          simp only [this, h', indicator_of_notMem, not_false_iff, mul_zero,
            zero_mul, mem_Ioc, false_and]
    simp_rw [aux₁]
    rw [lintegral_const_mul']
    swap
    · apply ENNReal.mul_ne_top ENNReal.ofReal_ne_top
      by_cases h : (0 : ℝ) < s <;> · simp [h]
    simp_rw [show
        (fun a => (Ici s).indicator (fun _ : ℝ => (1 : ℝ≥0∞)) (f a)) = fun a =>
          {a : α | s ≤ f a}.indicator (fun _ => 1) a
        by funext a; by_cases h : s ≤ f a <;> simp [h]]
    rw [lintegral_indicator₀]
    swap; · exact f_mble.nullMeasurable measurableSet_Ici
    rw [lintegral_one, Measure.restrict_apply MeasurableSet.univ, univ_inter, indicator_mul_left,
      mul_assoc,
      show
        (Ioi 0).indicator (fun _x : ℝ => (1 : ℝ≥0∞)) s * μ {a : α | s ≤ f a} =
          (Ioi 0).indicator (fun _x : ℝ => 1 * μ {a : α | s ≤ f a}) s
        by by_cases h : 0 < s <;> simp [h]]
    simp_rw [mul_comm _ (ENNReal.ofReal _), one_mul]
    rfl
  have aux₂ :
    (Function.uncurry fun (x : α) (y : ℝ) =>
        (Ioc 0 (f x)).indicator (fun t : ℝ => ENNReal.ofReal (g t)) y) =
      {p : α × ℝ | p.2 ∈ Ioc 0 (f p.1)}.indicator fun p => ENNReal.ofReal (g p.2) := by
    funext p
    cases p with | mk p_fst p_snd => ?_
    rw [Function.uncurry_apply_pair]
    by_cases h : p_snd ∈ Ioc 0 (f p_fst)
    · have h' : (p_fst, p_snd) ∈ {p : α × ℝ | p.snd ∈ Ioc 0 (f p.fst)} := h
      rw [Set.indicator_of_mem h', Set.indicator_of_mem h]
    · have h' : (p_fst, p_snd) ∉ {p : α × ℝ | p.snd ∈ Ioc 0 (f p.fst)} := h
      rw [Set.indicator_of_notMem h', Set.indicator_of_notMem h]
  rw [aux₂]
  have mble₀ : MeasurableSet {p : α × ℝ | p.snd ∈ Ioc 0 (f p.fst)} := by
    simpa only [mem_univ, Pi.zero_apply, true_and] using
      measurableSet_region_between_oc measurable_zero f_mble MeasurableSet.univ
  exact (ENNReal.measurable_ofReal.comp (g_mble.comp measurable_snd)).aemeasurable.indicator₀
    mble₀.nullMeasurableSet

/-- An auxiliary version of the layer cake formula (Cavalieri's principle, tail probability
formula), with a measurability assumption that would also essentially follow from the
integrability assumptions.
Compared to `lintegral_comp_eq_lintegral_meas_le_mul_of_measurable_of_sigmaFinite`, we remove
the sigma-finite assumption.

See `MeasureTheory.lintegral_comp_eq_lintegral_meas_le_mul` and
`MeasureTheory.lintegral_comp_eq_lintegral_meas_lt_mul` for the main formulations of the layer
cake formula. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Layercake/Variantec49ef96b027f176e140df9957ab8eb6d74704027b4e509c18a2b1e44ac6b8ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variantec49ef96b027f176e140df9957ab8eb6d74704027b4e509c18a2b1e44ac6b8ef.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18de3077a108c790d2b6c8addb314de87d5fb025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
