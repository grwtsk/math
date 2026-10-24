# tendsto_integral_meas_thickening_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5a3cec9b3322e6a6337e53352aee7d75562b9d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 396,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/757c2e88728386685877902bcbc7d4bb5285e66cf2ec9540252c6a9a0e6c3c73.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f2269fa-066b-ec3a-fcae-0b286da4c6a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32cd0c6a-55e2-7c1d-77d1-4a0562cdd539",
  "kind": "lemma",
  "lexical_name": "tendsto_integral_meas_thickening_le",
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
  "slug": "tendsto-integral-meas-thickening-le--0bb48299e533e8469bc1ef69",
  "source": {
    "blob": "a5a3cec9b3322e6a6337e53352aee7d75562b9d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 396,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant757c2e88728386685877902bcbc7d4bb5285e66cf2ec9540252c6a9a0e6c3c73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bb48299e533e8469bc1ef69f4ce24b7fa3e05718edc222ceeb404ab839256e2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant757c2e88728386685877902bcbc7d4bb5285e66cf2ec9540252c6a9a0e6c3c73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32cd0c6a-55e2-7c1d-77d1-4a0562cdd539`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_integral_meas_thickening_le (f : Ω →ᵇ ℝ)
    {A : Set ℝ} (A_finmeas : volume A ≠ ∞) (μ : ProbabilityMeasure Ω) :
    Tendsto (fun ε ↦ ∫ t in A, (Measure.real μ (thickening ε {a | t ≤ f a}))) (𝓝[>] (0 : ℝ))
      (𝓝 (∫ t in A, (Measure.real μ {a | t ≤ f a}))) := by
  apply tendsto_integral_filter_of_dominated_convergence (G := ℝ) (μ := volume.restrict A)
        (F := fun ε t ↦ (μ (thickening ε {a | t ≤ f a}))) (f := fun t ↦ (μ {a | t ≤ f a})) 1
  · apply Eventually.of_forall fun n ↦ Measurable.aestronglyMeasurable ?_
    simp only [measurable_coe_nnreal_real_iff]
    apply measurable_toNNReal.comp <| Antitone.measurable (fun s t hst ↦ ?_)
    exact measure_mono <| thickening_subset_of_subset _ <| fun ω h ↦ hst.trans h
  · apply Eventually.of_forall (fun i ↦ ?_)
    apply Eventually.of_forall (fun t ↦ ?_)
    simp only [Real.norm_eq_abs, NNReal.abs_eq, Pi.one_apply]
    exact ENNReal.toReal_mono one_ne_top prob_le_one
  · have aux : IsFiniteMeasure (volume.restrict A) := ⟨by simp [lt_top_iff_ne_top, A_finmeas]⟩
    apply integrable_const
  · apply Eventually.of_forall (fun t ↦ ?_)
    simp only [NNReal.tendsto_coe]
    apply (ENNReal.tendsto_toNNReal _).comp
    · apply tendsto_measure_thickening_of_isClosed ?_ ?_
      · exact ⟨1, ⟨Real.zero_lt_one, measure_ne_top _ _⟩⟩
      · exact isClosed_le continuous_const f.continuous
    · exact measure_ne_top _ _

/-- The identity map `LevyProkhorov (ProbabilityMeasure Ω) → ProbabilityMeasure Ω` is continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant757c2e88728386685877902bcbc7d4bb5285e66cf2ec9540252c6a9a0e6c3c73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant757c2e88728386685877902bcbc7d4bb5285e66cf2ec9540252c6a9a0e6c3c73.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5a3cec9b3322e6a6337e53352aee7d75562b9d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
