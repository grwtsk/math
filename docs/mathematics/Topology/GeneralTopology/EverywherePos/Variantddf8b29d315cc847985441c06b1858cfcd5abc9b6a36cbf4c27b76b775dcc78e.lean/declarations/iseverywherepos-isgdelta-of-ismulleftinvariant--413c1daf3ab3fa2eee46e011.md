# IsEverywherePos.IsGdelta_of_isMulLeftInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e2c0d0bf0a9d546e2049d23200fae43d618113f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/ddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3993309d-5c4b-3b83-e4d3-dafd03d20785",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d716951d-31dd-3caf-88c6-2fba520bf235",
  "kind": "lemma",
  "lexical_name": "IsEverywherePos.IsGdelta_of_isMulLeftInvariant",
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
  "slug": "iseverywherepos-isgdelta-of-ismulleftinvariant--413c1daf3ab3fa2eee46e011",
  "source": {
    "blob": "2e2c0d0bf0a9d546e2049d23200fae43d618113f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 224,
    "path": "GRWTSK/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:413c1daf3ab3fa2eee46e011e4dcab7c6ee203164605863e47574b5e276876b3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d716951d-31dd-3caf-88c6-2fba520bf235`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsEverywherePos.IsGdelta_of_isMulLeftInvariant
    {k : Set G} (h : μ.IsEverywherePos k) (hk : IsCompact k) (h'k : IsClosed k) :
    IsGδ k := by
  /- Consider a decreasing sequence of open neighborhoods `Vₙ` of the identity, such that `g k \ k`
  has small measure for all `g ∈ Vₙ`. We claim that `k = ⋂ Vₙ k`, which proves
  the lemma as the sets on the right are open. The inclusion `⊆` is trivial.
  Let us show the converse. Take `x` in the intersection. For each `n`, write `x = vₙ yₙ` with
  `vₙ ∈ Vₙ` and `yₙ ∈ k`. Let `z ∈ k` be a cluster value of `yₙ`, by compactness. As multiplication
  by `vₙ = x yₙ⁻¹ ∈ Vₙ` changes the measure of `k` by very little, passing to the limit we get
  `μ (x z⁻¹ k \ k) = 0`. By invariance of the measure under `z x ⁻¹`, we get `μ (k \ z x⁻¹ k) = 0`.
  Assume `x ∉ k`. Then `z ∈ k \ z x⁻¹ k`. Even more, this set is a neighborhood of `z` within `k`
  (as `z x⁻¹ k` is closed), and it has zero measure. This contradicts the fact that `k` has
  positive measure around the point `z`. -/
  obtain ⟨u, -, u_mem, u_lim⟩ : ∃ u, StrictAnti u ∧ (∀ (n : ℕ), u n ∈ Ioo 0 1)
    ∧ Tendsto u atTop (𝓝 0) := exists_seq_strictAnti_tendsto' (zero_lt_one : (0 : ℝ≥0∞) < 1)
  have : ∀ n, ∃ (W : Set G), IsOpen W ∧ 1 ∈ W ∧ ∀ g ∈ W * W, μ ((g • k) \ k) < u n :=
    fun n ↦ exists_open_nhds_one_mul_subset
      (eventually_nhds_one_measure_smul_sdiff_lt hk h'k (u_mem n).1.ne')
  choose W W_open mem_W hW using this
  let V n := ⋂ i ∈ Finset.range n, W i
  suffices ⋂ n, V n * k ⊆ k by
    replace : k = ⋂ n, V n * k := by
      apply Subset.antisymm (subset_iInter_iff.2 (fun n ↦ ?_)) this
      exact subset_mul_right k (by simp [V, mem_W])
    rw [this]
    refine .iInter_of_isOpen fun n ↦ ?_
    exact .mul_right (isOpen_biInter_finset (fun i _hi ↦ W_open i))
  intro x hx
  choose v hv y hy hvy using mem_iInter.1 hx
  obtain ⟨z, zk, hz⟩ : ∃ z ∈ k, MapClusterPt z atTop y := hk.exists_mapClusterPt (by simp [hy])
  have A n : μ (((x * z⁻¹) • k) \ k) ≤ u n := by
    apply le_of_lt (hW _ _ ?_)
    have : W n * {z} ∈ 𝓝 z := (IsOpen.mul_right (W_open n)).mem_nhds (by simp [mem_W])
    obtain ⟨i, hi, ni⟩ : ∃ i, y i ∈ W n * {z} ∧ n < i :=
      ((hz.frequently this).and_eventually (eventually_gt_atTop n)).exists
    refine ⟨x * (y i) ⁻¹, ?_, y i * z⁻¹, by simpa using hi, by group⟩
    have I : V i ⊆ W n := iInter₂_subset n (by simp [ni])
    have J : x * (y i)⁻¹ ∈ V i := by simpa [← hvy i] using hv i
    exact I J
  have B : μ (((x * z⁻¹) • k) \ k) = 0 :=
    le_antisymm (ge_of_tendsto u_lim (Eventually.of_forall A)) bot_le
  have C : μ (k \ (z * x⁻¹) • k) = 0 := by
    have : μ ((z * x⁻¹) • (((x * z⁻¹) • k) \ k)) = 0 := by rwa [measure_smul]
    rw [← this, smul_set_sdiff, smul_smul]
    group
    simp
  by_contra H
  have : k ∩ ((z * x⁻¹) • k)ᶜ ∈ 𝓝[k] z := by
    apply inter_mem_nhdsWithin k
    apply IsOpen.mem_nhds (by simpa using h'k.smul _)
    push _ ∈ _
    contrapose H
    simpa [mem_smul_set_iff_inv_smul_mem] using H
  have : 0 < μ (k \ ((z * x⁻¹) • k)) := h z zk _ this
  exact lt_irrefl _ (C.le.trans_lt this)

/-- **Halmos' theorem: Haar measure is completion regular.** More precisely, any finite measure
set can be approximated from inside by a level set of a continuous function with compact support. -/
@[to_additive innerRegularWRT_preimage_one_hasCompactSupport_measure_ne_top_of_addGroup
/-- **Halmos' theorem: Haar measure is completion regular.** More precisely, any finite measure
set can be approximated from inside by a level set of a continuous function with compact
support. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e2c0d0bf0a9d546e2049d23200fae43d618113f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
