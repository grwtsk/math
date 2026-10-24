# HasFPowerSeriesAt.tendsto_partialSum_prod_of_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ae15ddb4cf94b1c6b5aab91380f75e505ebcd68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 568,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:561decc1-3829-f216-6c05-79ac75e4bbb4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d14cbc6-36b1-bb21-0a9f-c6bd52f6357a",
  "kind": "lemma",
  "lexical_name": "HasFPowerSeriesAt.tendsto_partialSum_prod_of_comp",
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
  "slug": "hasfpowerseriesat-tendsto-partialsum-prod-of-comp--6c2750c3010370dd8ddd2e73",
  "source": {
    "blob": "1ae15ddb4cf94b1c6b5aab91380f75e505ebcd68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 614,
    "line": 568,
    "path": "GRWTSK/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c2750c3010370dd8ddd2e73cbcdd793f6cfc59a08a61e5aac874aba3699e364",
  "verification": {
    "reference": "docs/verification/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d14cbc6-36b1-bb21-0a9f-c6bd52f6357a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 568–614.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasFPowerSeriesAt.tendsto_partialSum_prod_of_comp
    {f : E → G} {q : FormalMultilinearSeries 𝕜 F G}
    {p : FormalMultilinearSeries 𝕜 E F} {x : E}
    (hf : HasFPowerSeriesAt f (q.comp p) x) (hq : 0 < q.radius) (hp : 0 < p.radius) :
    ∀ᶠ y in 𝓝 0, Tendsto (fun (a : ℕ × ℕ) ↦ q.partialSum a.1 (p.partialSum a.2 y
      - p 0 (fun _ ↦ 0))) atTop (𝓝 (f (x + y))) := by
  rcases hf with ⟨r0, h0⟩
  rcases q.comp_summable_nnreal p hq hp with ⟨r1, r1_pos : 0 < r1, hr1⟩
  let r : ℝ≥0∞ := min r0 r1
  have : Metric.eball (0 : E) r ∈ 𝓝 0 :=
    Metric.eball_mem_nhds 0 (lt_min h0.r_pos (by exact_mod_cast r1_pos))
  filter_upwards [this] with y hy
  have hy0 : y ∈ Metric.eball 0 r0 := Metric.eball_subset_eball (min_le_left _ _) hy
  have A : HasSum (fun i : Σ n, Composition n => q.compAlongComposition p i.2 fun _j => y)
      (f (x + y)) := by
    have cau : CauchySeq fun s : Finset (Σ n, Composition n) =>
        ∑ i ∈ s, q.compAlongComposition p i.2 fun _j => y := by
      apply cauchySeq_finset_of_norm_bounded (NNReal.summable_coe.2 hr1) _
      simp only [coe_nnnorm, NNReal.coe_mul, NNReal.coe_pow]
      rintro ⟨n, c⟩
      calc
        ‖(compAlongComposition q p c) fun _j : Fin n => y‖ ≤
            ‖compAlongComposition q p c‖ * ∏ _j : Fin n, ‖y‖ := by
          apply ContinuousMultilinearMap.le_opNorm
        _ ≤ ‖compAlongComposition q p c‖ * (r1 : ℝ) ^ n := by
          apply mul_le_mul_of_nonneg_left _ (norm_nonneg _)
          rw [Finset.prod_const, Finset.card_fin]
          gcongr
          rw [Metric.mem_eball, edist_zero_right] at hy
          have := le_trans (le_of_lt hy) (min_le_right _ _)
          rwa [enorm_le_coe, ← NNReal.coe_le_coe, coe_nnnorm] at this
    apply HasSum.of_sigma (fun b ↦ hasSum_fintype _) ?_ cau
    simpa [FormalMultilinearSeries.comp] using h0.hasSum hy0
  have B : Tendsto (fun (n : ℕ × ℕ) => ∑ i ∈ compPartialSumTarget 0 n.1 n.2,
      q.compAlongComposition p i.2 fun _j => y) atTop (𝓝 (f (x + y))) := by
    apply Tendsto.comp A compPartialSumTarget_tendsto_prod_atTop
  have C : Tendsto (fun (n : ℕ × ℕ) => q.partialSum n.1 (∑ a ∈ Finset.Ico 1 n.2, p a fun _b ↦ y))
      atTop (𝓝 (f (x + y))) := by simpa [comp_partialSum] using B
  apply C.congr'
  filter_upwards [Ici_mem_atTop (0, 1)]
  rintro ⟨-, n⟩ ⟨-, (hn : 1 ≤ n)⟩
  congr
  rw [partialSum, eq_sub_iff_add_eq', Finset.range_eq_Ico,
        Finset.sum_eq_sum_Ico_succ_bot hn]
  congr with i
  exact i.elim0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inverse/Variant1148e729603e70a4ac3a857581942d249287f203f0484afbe34c9b5c8d019796.lean#L568).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ae15ddb4cf94b1c6b5aab91380f75e505ebcd68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
