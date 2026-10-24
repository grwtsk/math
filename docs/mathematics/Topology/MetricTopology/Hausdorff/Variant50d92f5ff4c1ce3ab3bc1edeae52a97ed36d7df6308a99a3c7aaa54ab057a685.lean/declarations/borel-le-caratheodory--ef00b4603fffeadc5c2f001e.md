# borel_le_caratheodory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "68e1819bc363c5422395f0e9c695aca6b0f85b97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0017b0d-7139-83e4-213f-8f7631ee599d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66d2f633-a3c0-93e6-d936-49ea1e740659",
  "kind": "theorem",
  "lexical_name": "borel_le_caratheodory",
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
  "slug": "borel-le-caratheodory--ef00b4603fffeadc5c2f001e",
  "source": {
    "blob": "68e1819bc363c5422395f0e9c695aca6b0f85b97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 161,
    "path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef00b4603fffeadc5c2f001ee6b30739a05dcd06c4a52e620728e46954d1d625",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66d2f633-a3c0-93e6-d936-49ea1e740659`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem borel_le_caratheodory (hm : IsMetric μ) : borel X ≤ μ.caratheodory := by
  rw [borel_eq_generateFrom_isClosed]
  refine' MeasurableSpace.generateFrom_le fun t ht => μ.isCaratheodory_iff_le.2 fun s => _
  set S : ℕ → Set X := fun n => {x ∈ s | (↑n)⁻¹ ≤ infEdist x t}
  have n0 : ∀ {n : ℕ}, (n⁻¹ : ℝ≥0∞) ≠ 0 := fun {n} => ENNReal.inv_ne_zero.2 (ENNReal.nat_ne_top _)
  have Ssep : ∀ n, IsMetricSeparated (S n) t := fun n =>
    ⟨n⁻¹, n0, fun x hx y hy => hx.2.trans <| infEdist_le_edist_of_mem hy⟩
  have Ssep' : ∀ n, IsMetricSeparated (S n) (s ∩ t) := fun n =>
    (Ssep n).mono Subset.rfl (inter_subset_right _ _)
  have S_sub : ∀ n, S n ⊆ s \ t := fun n =>
    subset_inter (inter_subset_left _ _) (Ssep n).subset_compl_right
  have hSs : ∀ n, μ (s ∩ t) + μ (S n) ≤ μ s := fun n =>
    calc
      μ (s ∩ t) + μ (S n) = μ (s ∩ t ∪ S n) := Eq.symm <| hm _ _ <| (Ssep' n).symm
      _ ≤ μ (s ∩ t ∪ s \ t) := μ.mono <| union_subset_union_right _ <| S_sub n
      _ = μ s := by rw [inter_union_diff]
  have iUnion_S : ⋃ n, S n = s \ t := by
    refine' Subset.antisymm (iUnion_subset S_sub) _
    rintro x ⟨hxs, hxt⟩
    rw [mem_iff_infEdist_zero_of_closed ht] at hxt
    rcases ENNReal.exists_inv_nat_lt hxt with ⟨n, hn⟩
    exact mem_iUnion.2 ⟨n, hxs, hn.le⟩
  /- Now we have `∀ n, μ (s ∩ t) + μ (S n) ≤ μ s` and we need to prove
    `μ (s ∩ t) + μ (⋃ n, S n) ≤ μ s`. We can't pass to the limit because
    `μ` is only an outer measure. -/
  by_cases htop : μ (s \ t) = ∞
  · rw [htop, add_top, ← htop]
    exact μ.mono (diff_subset _ _)
  suffices : μ (⋃ n, S n) ≤ ⨆ n, μ (S n)
  calc
    μ (s ∩ t) + μ (s \ t) = μ (s ∩ t) + μ (⋃ n, S n) := by rw [iUnion_S]
    _ ≤ μ (s ∩ t) + ⨆ n, μ (S n) := (add_le_add le_rfl this)
    _ = ⨆ n, μ (s ∩ t) + μ (S n) := ENNReal.add_iSup
    _ ≤ μ s := iSup_le hSs
  /- It suffices to show that `∑' k, μ (S (k + 1) \ S k) ≠ ∞`. Indeed, if we have this,
    then for all `N` we have `μ (⋃ n, S n) ≤ μ (S N) + ∑' k, m (S (N + k + 1) \ S (N + k))`
    and the second term tends to zero, see `OuterMeasure.iUnion_nat_of_monotone_of_tsum_ne_top`
    for details. -/
  have : ∀ n, S n ⊆ S (n + 1) := fun n x hx =>
    ⟨hx.1, le_trans (ENNReal.inv_le_inv.2 <| Nat.cast_le.2 n.le_succ) hx.2⟩
  classical -- Porting note: Added this to get the next tactic to work
  refine' (μ.iUnion_nat_of_monotone_of_tsum_ne_top this _).le; clear this
  /- While the sets `S (k + 1) \ S k` are not pairwise metric separated, the sets in each
    subsequence `S (2 * k + 1) \ S (2 * k)` and `S (2 * k + 2) \ S (2 * k)` are metric separated,
    so `m` is additive on each of those sequences. -/
  rw [← tsum_even_add_odd ENNReal.summable ENNReal.summable, ENNReal.add_ne_top]
  suffices : ∀ a, (∑' k : ℕ, μ (S (2 * k + 1 + a) \ S (2 * k + a))) ≠ ∞
  exact ⟨by simpa using this 0, by simpa using this 1⟩
  refine' fun r => ne_top_of_le_ne_top htop _
  rw [← iUnion_S, ENNReal.tsum_eq_iSup_nat, iSup_le_iff]
  intro n
  rw [← hm.finset_iUnion_of_pairwise_separated]
  · exact μ.mono (iUnion_subset fun i => iUnion_subset fun _ x hx => mem_iUnion.2 ⟨_, hx.1⟩)
  suffices : ∀ i j, i < j → IsMetricSeparated (S (2 * i + 1 + r)) (s \ S (2 * j + r))
  exact fun i _ j _ hij =>
    hij.lt_or_lt.elim
      (fun h => (this i j h).mono (inter_subset_left _ _) fun x hx => by exact ⟨hx.1.1, hx.2⟩)
      fun h => (this j i h).symm.mono (fun x hx => by exact ⟨hx.1.1, hx.2⟩) (inter_subset_left _ _)
  intro i j hj
  have A : ((↑(2 * j + r))⁻¹ : ℝ≥0∞) < (↑(2 * i + 1 + r))⁻¹ := by
    rw [ENNReal.inv_lt_inv, Nat.cast_lt]; linarith
  refine' ⟨(↑(2 * i + 1 + r))⁻¹ - (↑(2 * j + r))⁻¹, by simpa using A, fun x hx y hy => _⟩
  have : infEdist y t < (↑(2 * j + r))⁻¹ := not_le.1 fun hle => hy.2 ⟨hy.1, hle⟩
  rcases infEdist_lt_iff.mp this with ⟨z, hzt, hyz⟩
  have hxz : (↑(2 * i + 1 + r))⁻¹ ≤ edist x z := le_infEdist.1 hx.2 _ hzt
  apply ENNReal.le_of_add_le_add_right hyz.ne_top
  refine' le_trans _ (edist_triangle _ _ _)
  refine' (add_le_add le_rfl hyz.le).trans (Eq.trans_le _ hxz)
  rw [tsub_add_cancel_of_le A.le]
#align measure_theory.outer_measure.is_metric.borel_le_caratheodory MeasureTheory.OuterMeasure.IsMetric.borel_le_caratheodory

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68e1819bc363c5422395f0e9c695aca6b0f85b97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
