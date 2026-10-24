# lintegral_comp_eq_lintegral_meas_le_mul_of_measurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb8286c5-32b5-9245-27b1-657e7d71d368",
  "kind": "theorem",
  "lexical_name": "lintegral_comp_eq_lintegral_meas_le_mul_of_measurable",
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
  "slug": "lintegral-comp-eq-lintegral-meas-le-mul-of-measurable--de93383d48bbb183694b6f20",
  "source": {
    "blob": "d19866ba90671e5d7abc7e000390ac59e90fdea8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 88,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de93383d48bbb183694b6f20028928849916e7446b63372c118c52c23eecaa0d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb8286c5-32b5-9245-27b1-657e7d71d368`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_comp_eq_lintegral_meas_le_mul_of_measurable (μ : Measure α) [SigmaFinite μ]
    (f_nn : 0 ≤ f) (f_mble : Measurable f) (g_intble : ∀ t > 0, IntervalIntegrable g volume 0 t)
    (g_mble : Measurable g) (g_nn : ∀ t > 0, 0 ≤ g t) :
    (∫⁻ ω, ENNReal.ofReal (∫ t in (0)..f ω, g t) ∂μ) =
      ∫⁻ t in Ioi 0, μ {a : α | t ≤ f a} * ENNReal.ofReal (g t) := by
  have g_intble' : ∀ t : ℝ, 0 ≤ t → IntervalIntegrable g volume 0 t := by
    intro t ht
    cases' eq_or_lt_of_le ht with h h
    · simp [← h]
    · exact g_intble t h
  have integrand_eq :
    ∀ ω, ENNReal.ofReal (∫ t in (0)..f ω, g t) = ∫⁻ t in Ioc 0 (f ω), ENNReal.ofReal (g t) := by
    intro ω
    have g_ae_nn : 0 ≤ᵐ[volume.restrict (Ioc 0 (f ω))] g := by
      filter_upwards [self_mem_ae_restrict (measurableSet_Ioc : MeasurableSet (Ioc 0 (f ω)))] with x
        hx using g_nn x hx.1
    rw [← ofReal_integral_eq_lintegral_ofReal (g_intble' (f ω) (f_nn ω)).1 g_ae_nn]
    congr
    exact intervalIntegral.integral_of_le (f_nn ω)
  simp_rw [integrand_eq, ← lintegral_indicator (fun t => ENNReal.ofReal (g t)) measurableSet_Ioc]
  -- Porting note: was part of `simp_rw` on the previous line, but didn't trigger.
  rw [← lintegral_indicator _ measurableSet_Ioi]
  rw [lintegral_lintegral_swap]
  · apply congr_arg
    funext s
    have aux₁ :
      (fun x => (Ioc 0 (f x)).indicator (fun t : ℝ => ENNReal.ofReal (g t)) s) = fun x =>
        ENNReal.ofReal (g s) * (Ioi (0 : ℝ)).indicator (fun _ => 1) s *
          (Ici s).indicator (fun _ : ℝ => (1 : ℝ≥0∞)) (f x) := by
      funext a
      by_cases s ∈ Ioc (0 : ℝ) (f a)
      · simp only [h, show s ∈ Ioi (0 : ℝ) from h.1, show f a ∈ Ici s from h.2, indicator_of_mem,
          mul_one]
      · have h_copy := h
        simp only [mem_Ioc, not_and, not_le] at h
        by_cases h' : 0 < s
        · simp only [h_copy, h h', indicator_of_not_mem, not_false_iff, mem_Ici, not_le,
            mul_zero]
        · have : s ∉ Ioi (0 : ℝ) := h'
          simp only [this, h', indicator_of_not_mem, not_false_iff, mul_zero,
            zero_mul, mem_Ioc, false_and_iff]
    simp_rw [aux₁]
    rw [lintegral_const_mul']
    swap;
    · apply ENNReal.mul_ne_top ENNReal.ofReal_ne_top
      -- Porting note: was
      -- by_cases s ∈ Ioi (0 : ℝ) <;> · simp [h]
      by_cases h : (0 : ℝ) < s <;> · simp [indicator_apply, h]
    simp_rw [show
        (fun a => (Ici s).indicator (fun _ : ℝ => (1 : ℝ≥0∞)) (f a)) = fun a =>
          {a : α | s ≤ f a}.indicator (fun _ => 1) a
        by funext a; by_cases s ≤ f a <;> simp [h]]
    rw [lintegral_indicator]
    swap; · exact f_mble measurableSet_Ici
    rw [lintegral_one, Measure.restrict_apply MeasurableSet.univ, univ_inter, indicator_mul_left,
      mul_assoc,
      show
        (Ioi 0).indicator (fun _x : ℝ => (1 : ℝ≥0∞)) s * μ {a : α | s ≤ f a} =
          (Ioi 0).indicator (fun _x : ℝ => 1 * μ {a : α | s ≤ f a}) s
        by by_cases 0 < s <;> simp [h]]
    simp_rw [mul_comm _ (ENNReal.ofReal _), one_mul]
    rfl
  have aux₂ :
    (Function.uncurry fun (x : α) (y : ℝ) =>
        (Ioc 0 (f x)).indicator (fun t : ℝ => ENNReal.ofReal (g t)) y) =
      {p : α × ℝ | p.2 ∈ Ioc 0 (f p.1)}.indicator fun p => ENNReal.ofReal (g p.2) := by
    funext p
    cases p with | mk p_fst p_snd => ?_
    rw [Function.uncurry_apply_pair]
    by_cases p_snd ∈ Ioc 0 (f p_fst)
    · have h' : (p_fst, p_snd) ∈ {p : α × ℝ | p.snd ∈ Ioc 0 (f p.fst)} := h
      rw [Set.indicator_of_mem h', Set.indicator_of_mem h]
    · have h' : (p_fst, p_snd) ∉ {p : α × ℝ | p.snd ∈ Ioc 0 (f p.fst)} := h
      rw [Set.indicator_of_not_mem h', Set.indicator_of_not_mem h]
  rw [aux₂]
  have mble := measurableSet_region_between_oc measurable_zero f_mble MeasurableSet.univ
  simp_rw [mem_univ, Pi.zero_apply, true_and_iff] at mble
  exact (ENNReal.measurable_ofReal.comp (g_mble.comp measurable_snd)).aemeasurable.indicator mble
#align measure_theory.lintegral_comp_eq_lintegral_meas_le_mul_of_measurable MeasureTheory.lintegral_comp_eq_lintegral_meas_le_mul_of_measurable

/-- The layer cake formula / Cavalieri's principle / tail probability formula:

Let `f` be a non-negative measurable function on a sigma-finite measure space. Let `G` be an
increasing absolutely continuous function on the positive real line, vanishing at the origin,
with derivative `G' = g`. Then the integral of the composition `G ∘ f` can be written as
the integral over the positive real line of the "tail measures" `μ {ω | f(ω) ≥ t}` of `f`
weighted by `g`.

Roughly speaking, the statement is: `∫⁻ (G ∘ f) ∂μ = ∫⁻ t in (0).. ∞, g(t) * μ {ω | f(ω) ≥ t}`.

See `lintegral_comp_eq_lintegral_meas_lt_mul` for a version with sets of the form `{ω | f(ω) > t}`
instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d19866ba90671e5d7abc7e000390ac59e90fdea8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
