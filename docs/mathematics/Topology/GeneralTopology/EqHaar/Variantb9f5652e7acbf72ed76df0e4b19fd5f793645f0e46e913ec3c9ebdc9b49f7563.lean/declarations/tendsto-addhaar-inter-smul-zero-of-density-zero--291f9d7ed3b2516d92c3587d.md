# tendsto_addHaar_inter_smul_zero_of_density_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:405ca6a1-e40f-434d-6be2-8bb0fd0cfd47",
  "kind": "theorem",
  "lexical_name": "tendsto_addHaar_inter_smul_zero_of_density_zero",
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
  "slug": "tendsto-addhaar-inter-smul-zero-of-density-zero--291f9d7ed3b2516d92c3587d",
  "source": {
    "blob": "3ef415bffee55a89d8af50fea647b7b5afb1871a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 764,
    "line": 706,
    "path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variantb9f5652e7acbf72ed76df0e4b19fd5f793645f0e46e913ec3c9ebdc9b49f7563.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:291f9d7ed3b2516d92c3587d8f53ef6919d3ed6676043ef37f1cd5f2543c0a2d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EqHaar/Variantb9f5652e7acbf72ed76df0e4b19fd5f793645f0e46e913ec3c9ebdc9b49f7563.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:405ca6a1-e40f-434d-6be2-8bb0fd0cfd47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 706–764.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_addHaar_inter_smul_zero_of_density_zero (s : Set E) (x : E)
    (h : Tendsto (fun r => μ (s ∩ closedBall x r) / μ (closedBall x r)) (𝓝[>] 0) (𝓝 0)) (t : Set E)
    (ht : MeasurableSet t) (h''t : μ t ≠ ∞) :
    Tendsto (fun r : ℝ => μ (s ∩ ({x} + r • t)) / μ ({x} + r • t)) (𝓝[>] 0) (𝓝 0) := by
  refine tendsto_order.2 ⟨fun a' ha' => (ENNReal.not_lt_zero ha').elim, fun ε (εpos : 0 < ε) => ?_⟩
  rcases eq_or_ne (μ t) 0 with (h't | h't)
  · filter_upwards with r
    suffices H : μ (s ∩ ({x} + r • t)) = 0 by
      rw [H]; simpa only [ENNReal.zero_div] using εpos
    rw [← nonpos_iff_eq_zero]
    calc
      μ (s ∩ ({x} + r • t)) ≤ μ ({x} + r • t) := measure_mono inter_subset_right
      _ = 0 := by
        simp only [h't, addHaar_smul, image_add_left, measure_preimage_add, singleton_add,
          mul_zero]
  obtain ⟨n, npos, hn⟩ : ∃ n : ℕ, 0 < n ∧ μ (t \ closedBall 0 n) < ε / 2 * μ t := by
    have A :
      Tendsto (fun n : ℕ => μ (t \ closedBall 0 n)) atTop
        (𝓝 (μ (⋂ n : ℕ, t \ closedBall 0 n))) := by
      have N : ∃ n : ℕ, μ (t \ closedBall 0 n) ≠ ∞ :=
        ⟨0, ((measure_mono sdiff_subset).trans_lt h''t.lt_top).ne⟩
      refine tendsto_measure_iInter_atTop
        (fun n ↦ (ht.diff measurableSet_closedBall).nullMeasurableSet) (fun m n hmn ↦ ?_) N
      exact sdiff_subset_sdiff Subset.rfl (by gcongr)
    have : ⋂ n : ℕ, t \ closedBall 0 n = ∅ := by
      simp_rw [sdiff_eq, ← inter_iInter, iInter_eq_compl_iUnion_compl, compl_compl,
        iUnion_closedBall_nat, compl_univ, inter_empty]
    simp only [this, measure_empty] at A
    have I : 0 < ε / 2 * μ t := ENNReal.mul_pos (ENNReal.half_pos εpos.ne').ne' h't
    exact (Eventually.and (Ioi_mem_atTop 0) ((tendsto_order.1 A).2 _ I)).exists
  have L :
    Tendsto (fun r : ℝ => μ (s ∩ ({x} + r • (t ∩ closedBall 0 n))) / μ ({x} + r • t)) (𝓝[>] 0)
      (𝓝 0) :=
    tendsto_addHaar_inter_smul_zero_of_density_zero_aux2 μ s x h _ t h't n (Nat.cast_pos.2 npos)
      inter_subset_right
  filter_upwards [(tendsto_order.1 L).2 _ (ENNReal.half_pos εpos.ne'), self_mem_nhdsWithin]
  rintro r hr (rpos : 0 < r)
  have I :
    μ (s ∩ ({x} + r • t)) ≤
      μ (s ∩ ({x} + r • (t ∩ closedBall 0 n))) + μ ({x} + r • (t \ closedBall 0 n)) :=
    calc
      μ (s ∩ ({x} + r • t)) =
          μ (s ∩ ({x} + r • (t ∩ closedBall 0 n)) ∪ s ∩ ({x} + r • (t \ closedBall 0 n))) := by
        rw [← inter_union_distrib_left, ← add_union, ← smul_set_union, inter_union_sdiff]
      _ ≤ μ (s ∩ ({x} + r • (t ∩ closedBall 0 n))) + μ (s ∩ ({x} + r • (t \ closedBall 0 n))) :=
        measure_union_le _ _
      _ ≤ μ (s ∩ ({x} + r • (t ∩ closedBall 0 n))) + μ ({x} + r • (t \ closedBall 0 n)) := by
        gcongr; apply inter_subset_right
  calc
    μ (s ∩ ({x} + r • t)) / μ ({x} + r • t) ≤
        (μ (s ∩ ({x} + r • (t ∩ closedBall 0 n))) + μ ({x} + r • (t \ closedBall 0 n))) /
          μ ({x} + r • t) := by gcongr
    _ < ε / 2 + ε / 2 := by
      rw [ENNReal.add_div]
      apply ENNReal.add_lt_add hr _
      rwa [addHaar_singleton_add_smul_div_singleton_add_smul μ rpos.ne',
        ENNReal.div_lt_iff (Or.inl h't) (Or.inl h''t)]
    _ = ε := ENNReal.add_halves _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EqHaar/Variantb9f5652e7acbf72ed76df0e4b19fd5f793645f0e46e913ec3c9ebdc9b49f7563.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EqHaar/Variantb9f5652e7acbf72ed76df0e4b19fd5f793645f0e46e913ec3c9ebdc9b49f7563.lean#L706).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ef415bffee55a89d8af50fea647b7b5afb1871a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
