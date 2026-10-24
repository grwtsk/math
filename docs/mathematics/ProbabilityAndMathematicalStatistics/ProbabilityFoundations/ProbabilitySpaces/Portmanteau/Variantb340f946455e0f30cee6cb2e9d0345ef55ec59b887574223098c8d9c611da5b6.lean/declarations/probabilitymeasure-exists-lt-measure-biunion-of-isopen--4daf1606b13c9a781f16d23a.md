# ProbabilityMeasure.exists_lt_measure_biUnion_of_isOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a19e8276-d078-7bd9-5015-08faf2faa888",
  "kind": "lemma",
  "lexical_name": "ProbabilityMeasure.exists_lt_measure_biUnion_of_isOpen",
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
  "slug": "probabilitymeasure-exists-lt-measure-biunion-of-isopen--4daf1606b13c9a781f16d23a",
  "source": {
    "blob": "cd4a6d1837c264488b6cefcf7402bf52a1549d8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 838,
    "line": 802,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4daf1606b13c9a781f16d23a80bd8059efeda565bc6027ace3a16b0a10f1a484",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a19e8276-d078-7bd9-5015-08faf2faa888`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 802–838.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ProbabilityMeasure.exists_lt_measure_biUnion_of_isOpen
    [TopologicalSpace Ω] [SecondCountableTopology Ω]
    {S : Set (Set Ω)} (ν : ProbabilityMeasure Ω)
    (h : ∀ (u : Set Ω), IsOpen u → ∀ x ∈ u, ∃ s ∈ S, s ∈ 𝓝 x ∧ s ⊆ u)
    {G : Set Ω} (hG : IsOpen G) {r : ℝ≥0} (hr : r < ν G) :
    ∃ T : Finset (Set Ω), (∀ t ∈ T, t ∈ S) ∧ (r < ν (⋃ t ∈ T, t)) ∧ (⋃ t ∈ T, t) ⊆ G := by
  obtain ⟨T, TS, T_count, hT⟩ : ∃ T : Set (Set Ω), T ⊆ S ∧ T.Countable ∧ ⋃ t ∈ T, t = G := by
    have : ∀ (x : G), ∃ s ∈ S, s ∈ 𝓝 (x : Ω) ∧ s ⊆ G := fun x ↦ h G hG x x.2
    choose! s hsS hs_nhds hsG using this
    rcases TopologicalSpace.isOpen_iUnion_countable (fun i ↦ interior (s i))
      (fun i ↦ isOpen_interior) with ⟨T₀, T₀_count, hT₀⟩
    refine ⟨s '' T₀, by grind, T₀_count.image s, ?_⟩
    refine Subset.antisymm (by simp; grind) ?_
    have : G ⊆ ⋃ i, interior (s i) := by
      intro y hy
      simpa using ⟨y, hy, mem_interior_iff_mem_nhds.2 (hs_nhds ⟨y, hy⟩)⟩
    apply this.trans
    rw [← hT₀, biUnion_image]
    exact iUnion₂_mono fun i j ↦ interior_subset
  have : T.Nonempty := by
    contrapose! hr
    simp [← hT, hr]
  rcases T_count.exists_eq_range this with ⟨f, hf⟩
  have G_eq : G = ⋃ n, f n := by simp [← hT, hf]
  have : Tendsto (fun i ↦ ν (accumulate f i)) atTop (𝓝 (ν (⋃ i, f i))) :=
    (ENNReal.tendsto_toNNReal_iff (by simp) (by simp)).2 tendsto_measure_iUnion_accumulate
  rw [← G_eq] at this
  rcases ((tendsto_order.1 this).1 r hr).exists with ⟨n, hn⟩
  refine ⟨(Finset.range (n + 1)).image f, by grind, ?_, ?_⟩
  · convert! hn
    simp [accumulate_def]
  · simpa [G_eq] using fun i _ ↦ subset_iUnion f i

/-- Assume that, applied to all the elements of a π-system, a sequence of probability measures
converges to a limiting probability measure. Assume also that the π-system contains arbitrarily
small neighborhoods of any point. Then the sequence of probability measures converges for the
weak topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean#L802).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd4a6d1837c264488b6cefcf7402bf52a1549d8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
