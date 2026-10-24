# continuous_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b804c058044f619af5ce5a6b6e6314e836fd185",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b0d7884-01c1-6a2c-da2a-fc0447a9deea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d937c9b4-0a33-1025-10fb-2a9c50a5b228",
  "kind": "theorem",
  "lexical_name": "continuous_prod",
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
  "slug": "continuous-prod--d43034203b6e0d618879cc3a",
  "source": {
    "blob": "2b804c058044f619af5ce5a6b6e6314e836fd185",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 144,
    "path": "GRWTSK/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d43034203b6e0d618879cc3a8d896dad10e07e114f64faa33c2983a1389bde91",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d937c9b4-0a33-1025-10fb-2a9c50a5b228`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_prod [TopologicalSpace α] [TopologicalSpace β] [SecondCountableTopology α]
    [SecondCountableTopology β] [PseudoMetrizableSpace α] [PseudoMetrizableSpace β]
    [OpensMeasurableSpace α] [OpensMeasurableSpace β] :
    Continuous (fun (μ : ProbabilityMeasure α × ProbabilityMeasure β) ↦ μ.1.prod μ.2) := by
  refine continuous_iff_continuousAt.2 (fun μ ↦ ?_)
  /- It suffices to check the convergence along elements of a π-system containing arbitrarily
  small neighborhoods of any point, by `tendsto_probabilityMeasure_of_tendsto_of_mem`.
  We take as a π-system the sets of the form `a ×ˢ b` where `a` and `b` have null frontier. -/
  let S : Set (Set (α × β)) := {t | ∃ (a : Set α) (b : Set β),
    MeasurableSet a ∧ μ.1 (frontier a) = 0 ∧ MeasurableSet b ∧ μ.2 (frontier b) = 0
    ∧ t = a ×ˢ b}
  have : IsPiSystem S := by
    rintro - ⟨a, b, ameas, ha, bmeas, hb, rfl⟩ - ⟨a', b', a'meas, ha', b'meas, hb', rfl⟩ -
    refine ⟨a ∩ a', b ∩ b', ameas.inter a'meas, ?_, bmeas.inter b'meas, ?_, prod_inter_prod⟩
    · rw [null_iff_toMeasure_null] at ha ha' ⊢
      exact null_frontier_inter ha ha'
    · rw [null_iff_toMeasure_null] at hb hb' ⊢
      exact null_frontier_inter hb hb'
  apply this.tendsto_probabilityMeasure_of_tendsto_of_mem
  · rintro s ⟨a, b, ameas, -, bmeas, -, rfl⟩
    exact ameas.prod bmeas
  · let : PseudoMetricSpace α := TopologicalSpace.pseudoMetrizableSpacePseudoMetric α
    let : PseudoMetricSpace β := TopologicalSpace.pseudoMetrizableSpacePseudoMetric β
    intro u u_open x xu
    obtain ⟨ε, εpos, hε⟩ : ∃ ε > 0, ball x ε ⊆ u := Metric.isOpen_iff.1 u_open x xu
    rcases exists_null_frontier_thickening (μ.1 : Measure α) {x.1} εpos with ⟨r, hr, μr⟩
    rcases exists_null_frontier_thickening (μ.2 : Measure β) {x.2} εpos with ⟨r', hr', μr'⟩
    simp only [thickening_singleton] at μr μr'
    refine ⟨ball x.1 r ×ˢ ball x.2 r', ⟨ball x.1 r, ball x.2 r', measurableSet_ball,
      by simp [coeFn_def, μr], measurableSet_ball, by simp [coeFn_def, μr'], rfl⟩, ?_, ?_⟩
    · exact (isOpen_ball.prod isOpen_ball).mem_nhds (by simp [hr.1, hr'.1])
    · calc ball x.1 r ×ˢ ball x.2 r'
      _ ⊆ ball x.1 ε ×ˢ ball x.2 ε := by gcongr; exacts [hr.2.le, hr'.2.le]
      _ ⊆ _ := by rwa [ball_prod_same]
  · rintro s ⟨a, b, ameas, ha, bmeas, hb, rfl⟩
    simp only [prod_prod]
    apply Filter.Tendsto.mul
    · exact tendsto_measure_of_null_frontier_of_tendsto tendsto_id.fst_nhds ha
    · exact tendsto_measure_of_null_frontier_of_tendsto tendsto_id.snd_nhds hb

end ProbabilityMeasure -- namespace

end ProbabilityMeasure_product -- section

end MeasureTheory -- namespace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b804c058044f619af5ce5a6b6e6314e836fd185` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
