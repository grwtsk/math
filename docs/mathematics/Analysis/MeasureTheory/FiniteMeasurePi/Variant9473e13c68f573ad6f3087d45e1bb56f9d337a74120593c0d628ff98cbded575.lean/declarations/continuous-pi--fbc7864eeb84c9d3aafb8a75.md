# continuous_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cbd28503b3e219c7fd4b6cc775b0b15e5232fe95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/9473e13c68f573ad6f3087d45e1bb56f9d337a74120593c0d628ff98cbded575.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1dc24e9c-2855-2bce-dabb-b8c8737a4d64",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ee354cd-aab6-9567-a4b9-fd69956a784e",
  "kind": "theorem",
  "lexical_name": "continuous_pi",
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
  "slug": "continuous-pi--fbc7864eeb84c9d3aafb8a75",
  "source": {
    "blob": "cbd28503b3e219c7fd4b6cc775b0b15e5232fe95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 88,
    "path": "GRWTSK/Analysis/MeasureTheory/FiniteMeasurePi/Variant9473e13c68f573ad6f3087d45e1bb56f9d337a74120593c0d628ff98cbded575.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbc7864eeb84c9d3aafb8a7558b54785e7c68a20e7ad320ea0e1da2b5d725aa1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/FiniteMeasurePi/Variant9473e13c68f573ad6f3087d45e1bb56f9d337a74120593c0d628ff98cbded575.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ee354cd-aab6-9567-a4b9-fd69956a784e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_pi [∀ i, TopologicalSpace (α i)] [∀ i, SecondCountableTopology (α i)]
    [∀ i, PseudoMetrizableSpace (α i)] [∀ i, OpensMeasurableSpace (α i)] :
    Continuous (fun (μ : Π i, ProbabilityMeasure (α i)) ↦ ProbabilityMeasure.pi μ) := by
  refine continuous_iff_continuousAt.2 (fun μ ↦ ?_)
  /- It suffices to check the convergence along elements of a π-system containing arbitrarily
  small neighborhoods of any point, by `tendsto_probabilityMeasure_of_tendsto_of_mem`.
  We take as a π-system the sets of the form `s₁ × ... × sₙ` where all the `sᵢ` have
  null frontier. -/
  let S : Set (Set (Π i, α i)) := {t | ∃ (s : Π i, Set (α i)), t = univ.pi s ∧
    (∀ i, MeasurableSet (s i)) ∧ (∀ i, μ i (frontier (s i)) = 0)}
  have : IsPiSystem S := by
    rintro - ⟨s, rfl, smeas, hs⟩ - ⟨s', rfl, s'meas, hs'⟩ -
    refine ⟨fun i ↦ s i ∩ s' i, pi_inter_distrib.symm, fun i ↦ (smeas i).inter (s'meas i),
      fun i ↦ ?_⟩
    simp_rw [null_iff_toMeasure_null] at hs hs' ⊢
    exact null_frontier_inter (hs i) (hs' i)
  apply this.tendsto_probabilityMeasure_of_tendsto_of_mem
  · rintro - ⟨s, rfl, smeas, hs⟩
    exact MeasurableSet.univ_pi smeas
  · let : ∀ i, PseudoMetricSpace (α i) :=
      fun i ↦ TopologicalSpace.pseudoMetrizableSpacePseudoMetric (α i)
    intro u u_open x xu
    obtain ⟨ε, εpos, hε⟩ : ∃ ε > 0, ball x ε ⊆ u := Metric.isOpen_iff.1 u_open x xu
    have A (i) : ∃ r ∈ Ioo 0 ε, (μ i : Measure (α i)) (frontier (Metric.thickening r {x i})) = 0 :=
      exists_null_frontier_thickening _ _ εpos
    choose! r rpos hr using A
    refine ⟨univ.pi (fun i ↦ ball (x i) (r i)), ⟨fun i ↦ ball (x i) (r i), rfl,
      fun i ↦ measurableSet_ball, fun i ↦ by simpa using hr i⟩, ?_, ?_⟩
    · apply IsOpen.mem_nhds
      · exact isOpen_set_pi finite_univ (by simp)
      · simpa using fun i ↦ (rpos i).1
    · calc univ.pi fun i ↦ ball (x i) (r i)
      _ ⊆ univ.pi fun i ↦ ball (x i) ε := by gcongr with i hi; exact (rpos i).2.le
      _ ⊆ u := by rwa [← ball_pi _ εpos]
  · rintro - ⟨s, rfl, smeas, hs⟩
    simp only [pi_pi]
    apply tendsto_finsetProd _ (fun i hi ↦ ?_)
    exact tendsto_measure_of_null_frontier_of_tendsto (Tendsto.apply_nhds (fun ⦃U⦄ a ↦ a) i) (hs i)

end ProbabilityMeasure

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/FiniteMeasurePi/Variant9473e13c68f573ad6f3087d45e1bb56f9d337a74120593c0d628ff98cbded575.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/FiniteMeasurePi/Variant9473e13c68f573ad6f3087d45e1bb56f9d337a74120593c0d628ff98cbded575.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbd28503b3e219c7fd4b6cc775b0b15e5232fe95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
