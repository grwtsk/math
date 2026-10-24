# SeparableSpace.exists_measurable_partition_diam_le

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
      "line": 517,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/757c2e88728386685877902bcbc7d4bb5285e66cf2ec9540252c6a9a0e6c3c73.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4f87dcb-1316-4fd0-b34b-dd8df3e92e64",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b8eb43f-0961-7f3c-b551-022f87b7f0ec",
  "kind": "lemma",
  "lexical_name": "SeparableSpace.exists_measurable_partition_diam_le",
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
  "slug": "separablespace-exists-measurable-partition-diam-le--5e618f3d4358ed9d7bfd8e05",
  "source": {
    "blob": "a5a3cec9b3322e6a6337e53352aee7d75562b9d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 546,
    "line": 517,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant757c2e88728386685877902bcbc7d4bb5285e66cf2ec9540252c6a9a0e6c3c73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e618f3d4358ed9d7bfd8e05919aeeaf327f9ff2228c9bb77d691dc70f0c7763",
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

Occurrence: `result:5b8eb43f-0961-7f3c-b551-022f87b7f0ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–546.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma SeparableSpace.exists_measurable_partition_diam_le {ε : ℝ} (ε_pos : 0 < ε) :
    ∃ (As : ℕ → Set Ω), (∀ n, MeasurableSet (As n)) ∧ (∀ n, Bornology.IsBounded (As n)) ∧
        (∀ n, diam (As n) ≤ ε) ∧ (⋃ n, As n = univ) ∧
        (Pairwise (fun (n m : ℕ) ↦ Disjoint (As n) (As m))) := by
  by_cases X_emp : IsEmpty Ω
  · refine ⟨fun _ ↦ ∅, fun _ ↦ MeasurableSet.empty, fun _ ↦ Bornology.isBounded_empty, ?_, ?_,
            fun _ _ _ ↦ disjoint_of_subsingleton⟩
    · intro n
      simpa only [diam_empty] using LT.lt.le ε_pos
    · simp only [iUnion_empty]
      apply Eq.symm
      simp only [univ_eq_empty_iff, X_emp]
  rw [not_isEmpty_iff] at X_emp
  obtain ⟨xs, xs_dense⟩ := exists_dense_seq Ω
  have half_ε_pos : 0 < ε / 2 := half_pos ε_pos
  set Bs := fun n ↦ Metric.ball (xs n) (ε/2)
  set As := disjointed Bs
  refine ⟨As, ?_, ?_, ?_, ?_, ?_⟩
  · exact MeasurableSet.disjointed (fun n ↦ measurableSet_ball)
  · exact fun n ↦ Bornology.IsBounded.subset isBounded_ball <| disjointed_subset Bs n
  · intro n
    apply (diam_mono (disjointed_subset Bs n) isBounded_ball).trans
    convert diam_ball half_ε_pos.le
    ring
  · have aux : ⋃ n, Bs n = univ := by
      convert DenseRange.iUnion_uniformity_ball xs_dense <| Metric.dist_mem_uniformity half_ε_pos
      exact (ball_eq_ball' _ _).symm
    simpa only [← aux] using iUnion_disjointed
  · exact disjoint_disjointed Bs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant757c2e88728386685877902bcbc7d4bb5285e66cf2ec9540252c6a9a0e6c3c73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant757c2e88728386685877902bcbc7d4bb5285e66cf2ec9540252c6a9a0e6c3c73.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5a3cec9b3322e6a6337e53352aee7d75562b9d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
