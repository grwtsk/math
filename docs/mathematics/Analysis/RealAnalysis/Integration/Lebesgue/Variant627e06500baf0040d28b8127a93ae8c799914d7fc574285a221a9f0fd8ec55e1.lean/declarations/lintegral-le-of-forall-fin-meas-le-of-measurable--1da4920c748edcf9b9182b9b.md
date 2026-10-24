# lintegral_le_of_forall_fin_meas_le_of_measurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9fff8b19-4bd8-6e3b-8f9e-7b36941a2aba",
  "kind": "theorem",
  "lexical_name": "lintegral_le_of_forall_fin_meas_le_of_measurable",
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
  "slug": "lintegral-le-of-forall-fin-meas-le-of-measurable--1da4920c748edcf9b9182b9b",
  "source": {
    "blob": "36852aae1b786e2c3955ba9e963b7eae7ca6e3f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2013,
    "line": 1974,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lebesgue/Variant627e06500baf0040d28b8127a93ae8c799914d7fc574285a221a9f0fd8ec55e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1da4920c748edcf9b9182b9bb95c5cc317913a1ab1ed842113975df928256af3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lebesgue/Variant627e06500baf0040d28b8127a93ae8c799914d7fc574285a221a9f0fd8ec55e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fff8b19-4bd8-6e3b-8f9e-7b36941a2aba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1974–2013.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_le_of_forall_fin_meas_le_of_measurable {μ : Measure α} (hm : m ≤ m0)
    [SigmaFinite (μ.trim hm)] (C : ℝ≥0∞) {f : α → ℝ≥0∞} (hf_meas : Measurable f)
    (hf : ∀ s, MeasurableSet[m] s → μ s ≠ ∞ → ∫⁻ x in s, f x ∂μ ≤ C) : ∫⁻ x, f x ∂μ ≤ C := by
  have : ∫⁻ x in univ, f x ∂μ = ∫⁻ x, f x ∂μ := by simp only [Measure.restrict_univ]
  rw [← this]
  refine' univ_le_of_forall_fin_meas_le hm C hf fun S hS_meas hS_mono => _
  rw [← lintegral_indicator]
  swap
  · exact hm (⋃ n, S n) (@MeasurableSet.iUnion _ _ m _ _ hS_meas)
  have h_integral_indicator : ⨆ n, ∫⁻ x in S n, f x ∂μ = ⨆ n, ∫⁻ x, (S n).indicator f x ∂μ := by
    congr
    ext1 n
    rw [lintegral_indicator _ (hm _ (hS_meas n))]
  rw [h_integral_indicator, ← lintegral_iSup]
  · refine' le_of_eq (lintegral_congr fun x => _)
    simp_rw [indicator_apply]
    by_cases hx_mem : x ∈ iUnion S
    · simp only [hx_mem, if_true]
      obtain ⟨n, hxn⟩ := mem_iUnion.mp hx_mem
      refine' le_antisymm (_root_.trans _ (le_iSup _ n)) (iSup_le fun i => _)
      · simp only [hxn, le_refl, if_true]
      · by_cases hxi : x ∈ S i <;> simp [hxi]
    · simp only [hx_mem, if_false]
      rw [mem_iUnion] at hx_mem
      push_neg at hx_mem
      refine' le_antisymm (zero_le _) (iSup_le fun n => _)
      simp only [hx_mem n, if_false, nonpos_iff_eq_zero]
  · exact fun n => hf_meas.indicator (hm _ (hS_meas n))
  · intro n₁ n₂ hn₁₂ a
    simp_rw [indicator_apply]
    split_ifs with h h_1
    · exact le_rfl
    · exact absurd (mem_of_mem_of_subset h (hS_mono hn₁₂)) h_1
    · exact zero_le _
    · exact le_rfl
#align measure_theory.lintegral_le_of_forall_fin_meas_le_of_measurable MeasureTheory.lintegral_le_of_forall_fin_meas_le_of_measurable

/-- If the Lebesgue integral of a function is bounded by some constant on all sets with finite
measure in a sub-σ-algebra and the measure is σ-finite on that sub-σ-algebra, then the integral
over the whole space is bounded by that same constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lebesgue/Variant627e06500baf0040d28b8127a93ae8c799914d7fc574285a221a9f0fd8ec55e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lebesgue/Variant627e06500baf0040d28b8127a93ae8c799914d7fc574285a221a9f0fd8ec55e1.lean#L1974).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36852aae1b786e2c3955ba9e963b7eae7ca6e3f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
