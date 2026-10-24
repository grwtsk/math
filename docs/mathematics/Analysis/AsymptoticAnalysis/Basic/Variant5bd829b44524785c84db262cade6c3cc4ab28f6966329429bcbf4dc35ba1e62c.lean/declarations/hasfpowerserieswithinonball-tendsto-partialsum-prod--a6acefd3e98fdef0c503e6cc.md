# HasFPowerSeriesWithinOnBall.tendsto_partialSum_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6510a0fdecc0cd5100fa6ffaf5f7cb6efade2f1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 609,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5bd829b44524785c84db262cade6c3cc4ab28f6966329429bcbf4dc35ba1e62c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa167faf-4e51-7bba-472b-38c7ca80e968",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e665837c-9c58-9925-78df-3e1aecf9e83b",
  "kind": "theorem",
  "lexical_name": "HasFPowerSeriesWithinOnBall.tendsto_partialSum_prod",
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
  "slug": "hasfpowerserieswithinonball-tendsto-partialsum-prod--a6acefd3e98fdef0c503e6cc",
  "source": {
    "blob": "6510a0fdecc0cd5100fa6ffaf5f7cb6efade2f1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 674,
    "line": 609,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant5bd829b44524785c84db262cade6c3cc4ab28f6966329429bcbf4dc35ba1e62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6acefd3e98fdef0c503e6cc5904fbee76641ca439499a1f411a17bf7010f212",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant5bd829b44524785c84db262cade6c3cc4ab28f6966329429bcbf4dc35ba1e62c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e665837c-9c58-9925-78df-3e1aecf9e83b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 609–674.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFPowerSeriesWithinOnBall.tendsto_partialSum_prod {y : E}
    (hf : HasFPowerSeriesWithinOnBall f p s x r) (hy : y ∈ Metric.eball (0 : E) r)
    (h'y : x + y ∈ insert x s) :
    Tendsto (fun (z : ℕ × E) ↦ p.partialSum z.1 z.2) (atTop ×ˢ 𝓝 y) (𝓝 (f (x + y))) := by
  have A : Tendsto (fun (z : ℕ × E) ↦ p.partialSum z.1 y) (atTop ×ˢ 𝓝 y) (𝓝 (f (x + y))) := by
    apply (hf.tendsto_partialSum hy h'y).comp tendsto_fst
  suffices Tendsto (fun (z : ℕ × E) ↦ p.partialSum z.1 z.2 - p.partialSum z.1 y)
    (atTop ×ˢ 𝓝 y) (𝓝 0) by simpa using A.add this
  apply Metric.tendsto_nhds.2 (fun ε εpos ↦ ?_)
  obtain ⟨r', yr', r'r⟩ : ∃ (r' : ℝ≥0), ‖y‖₊ < r' ∧ r' < r := by
    simp at hy
    simpa using ENNReal.lt_iff_exists_nnreal_btwn.1 hy
  have yr'_2 : ‖y‖ < r' := by simpa [← coe_nnnorm] using yr'
  have S : Summable fun n ↦ ‖p n‖ * ↑r' ^ n := p.summable_norm_mul_pow (r'r.trans_le hf.r_le)
  obtain ⟨k, hk⟩ : ∃ k, ∑' (n : ℕ), ‖p (n + k)‖ * ↑r' ^ (n + k) < ε / 4 := by
    have : Tendsto (fun k ↦ ∑' n, ‖p (n + k)‖ * ↑r' ^ (n + k)) atTop (𝓝 0) := by
      apply _root_.tendsto_sum_nat_add (f := fun n ↦ ‖p n‖ * ↑r' ^ n)
    exact ((tendsto_order.1 this).2 _ (by linarith)).exists
  have A : ∀ᶠ (z : ℕ × E) in atTop ×ˢ 𝓝 y,
      dist (p.partialSum k z.2) (p.partialSum k y) < ε / 4 := by
    have : ContinuousAt (fun z ↦ p.partialSum k z) y := (p.partialSum_continuous k).continuousAt
    exact tendsto_snd (Metric.tendsto_nhds.1 this.tendsto (ε / 4) (by linarith))
  have B : ∀ᶠ (z : ℕ × E) in atTop ×ˢ 𝓝 y, ‖z.2‖₊ < r' := by
    suffices ∀ᶠ (z : E) in 𝓝 y, ‖z‖₊ < r' from tendsto_snd this
    have : Metric.ball 0 r' ∈ 𝓝 y := Metric.isOpen_ball.mem_nhds (by simpa using yr'_2)
    filter_upwards [this] with a ha using by simpa [← coe_nnnorm] using ha
  have C : ∀ᶠ (z : ℕ × E) in atTop ×ˢ 𝓝 y, k ≤ z.1 := tendsto_fst (Ici_mem_atTop _)
  filter_upwards [A, B, C]
  rintro ⟨n, z⟩ hz h'z hkn
  simp only [dist_eq_norm, sub_zero] at hz ⊢
  have I (w : E) (hw : ‖w‖₊ < r') : ‖∑ i ∈ Ico k n, p i (fun _ ↦ w)‖ ≤ ε / 4 := calc
    ‖∑ i ∈ Ico k n, p i (fun _ ↦ w)‖
    _ = ‖∑ i ∈ range (n - k), p (i + k) (fun _ ↦ w)‖ := by
        rw [sum_Ico_eq_sum_range]
        congr with i
        rw [add_comm k]
    _ ≤ ∑ i ∈ range (n - k), ‖p (i + k) (fun _ ↦ w)‖ := norm_sum_le _ _
    _ ≤ ∑ i ∈ range (n - k), ‖p (i + k)‖ * ‖w‖ ^ (i + k) := by
        gcongr with i _hi; exact ((p (i + k)).le_opNorm _).trans_eq (by simp)
    _ ≤ ∑ i ∈ range (n - k), ‖p (i + k)‖ * ↑r' ^ (i + k) := by
        gcongr with i _hi; simpa [← coe_nnnorm] using hw.le
    _ ≤ ∑' i, ‖p (i + k)‖ * ↑r' ^ (i + k) := by
        apply Summable.sum_le_tsum _ (fun i _hi ↦ by positivity)
        apply ((_root_.summable_nat_add_iff k).2 S)
    _ ≤ ε / 4 := hk.le
  calc
  ‖p.partialSum n z - p.partialSum n y‖
  _ = ‖∑ i ∈ range n, p i (fun _ ↦ z) - ∑ i ∈ range n, p i (fun _ ↦ y)‖ := rfl
  _ = ‖(∑ i ∈ range k, p i (fun _ ↦ z) + ∑ i ∈ Ico k n, p i (fun _ ↦ z))
        - (∑ i ∈ range k, p i (fun _ ↦ y) + ∑ i ∈ Ico k n, p i (fun _ ↦ y))‖ := by
    simp [sum_range_add_sum_Ico _ hkn]
  _ = ‖(p.partialSum k z - p.partialSum k y) + (∑ i ∈ Ico k n, p i (fun _ ↦ z))
        + (- ∑ i ∈ Ico k n, p i (fun _ ↦ y))‖ := by
    congr 1
    simp only [FormalMultilinearSeries.partialSum]
    abel
  _ ≤ ‖p.partialSum k z - p.partialSum k y‖ + ‖∑ i ∈ Ico k n, p i (fun _ ↦ z)‖
      + ‖- ∑ i ∈ Ico k n, p i (fun _ ↦ y)‖ := norm_add₃_le
  _ ≤ ε / 4 + ε / 4 + ε / 4 := by
    gcongr
    · exact I _ h'z
    · simp only [norm_neg]; exact I _ yr'
  _ < ε := by linarith

/-- If a function admits a power series on a ball, then the partial sums
`p.partialSum n z` converges to `f (x + y)` as `n → ∞` and `z → y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant5bd829b44524785c84db262cade6c3cc4ab28f6966329429bcbf4dc35ba1e62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant5bd829b44524785c84db262cade6c3cc4ab28f6966329429bcbf4dc35ba1e62c.lean#L609).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6510a0fdecc0cd5100fa6ffaf5f7cb6efade2f1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
