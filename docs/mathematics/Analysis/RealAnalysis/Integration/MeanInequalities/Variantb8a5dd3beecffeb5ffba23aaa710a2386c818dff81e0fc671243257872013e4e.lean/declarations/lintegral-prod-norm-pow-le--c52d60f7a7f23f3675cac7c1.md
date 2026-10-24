# lintegral_prod_norm_pow_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "299ef74231950517bf58c7aff960934aa3729c20",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 241,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7c8cc0d-aeeb-a797-a339-dc6e002647cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7dd9ba3-aef6-8043-afd3-fd4a408c1cac",
  "kind": "theorem",
  "lexical_name": "lintegral_prod_norm_pow_le",
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
  "slug": "lintegral-prod-norm-pow-le--c52d60f7a7f23f3675cac7c1",
  "source": {
    "blob": "299ef74231950517bf58c7aff960934aa3729c20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 241,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c52d60f7a7f23f3675cac7c13e90288206448bf20e38353e4232c4933edc31cd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7dd9ba3-aef6-8043-afd3-fd4a408c1cac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_prod_norm_pow_le {α ι : Type*} [MeasurableSpace α] {μ : Measure α}
    (s : Finset ι) {f : ι → α → ℝ≥0∞} (hf : ∀ i ∈ s, AEMeasurable (f i) μ)
    {p : ι → ℝ} (hp : ∑ i ∈ s, p i = 1) (h2p : ∀ i ∈ s, 0 ≤ p i) :
    ∫⁻ a, ∏ i ∈ s, f i a ^ p i ∂μ ≤ ∏ i ∈ s, (∫⁻ a, f i a ∂μ) ^ p i := by
  classical
  induction s using Finset.induction generalizing p with
  | empty =>
    simp at hp
  | insert i₀ s hi₀ ih =>
    rcases eq_or_ne (p i₀) 1 with h2i₀ | h2i₀
    · simp only [hi₀, not_false_eq_true, prod_insert]
      have h2p : ∀ i ∈ s, p i = 0 := by
        simpa [hi₀, h2i₀, sum_eq_zero_iff_of_nonneg (fun i hi ↦ h2p i <| mem_insert_of_mem hi)]
          using hp
      calc ∫⁻ a, f i₀ a ^ p i₀ * ∏ i ∈ s, f i a ^ p i ∂μ
          = ∫⁻ a, f i₀ a ^ p i₀ * ∏ i ∈ s, 1 ∂μ := by
            congr! 3 with x
            apply prod_congr rfl fun i hi ↦ by rw [h2p i hi, ENNReal.rpow_zero]
        _ ≤ (∫⁻ a, f i₀ a ∂μ) ^ p i₀ * ∏ i ∈ s, 1 := by simp [h2i₀]
        _ = (∫⁻ a, f i₀ a ∂μ) ^ p i₀ * ∏ i ∈ s, (∫⁻ a, f i a ∂μ) ^ p i := by
            congr 1
            apply prod_congr rfl fun i hi ↦ by rw [h2p i hi, ENNReal.rpow_zero]
    · have hpi₀ : 0 ≤ 1 - p i₀ := by
        simp_rw [sub_nonneg, ← hp, single_le_sum h2p (mem_insert_self ..)]
      have h2pi₀ : 1 - p i₀ ≠ 0 := by
        rwa [sub_ne_zero, ne_comm]
      let q := fun i ↦ p i / (1 - p i₀)
      have hq : ∑ i ∈ s, q i = 1 := by
        rw [← Finset.sum_div, ← sum_insert_sub hi₀, hp, div_self h2pi₀]
      have h2q : ∀ i ∈ s, 0 ≤ q i :=
        fun i hi ↦ div_nonneg (h2p i <| mem_insert_of_mem hi) hpi₀
      calc ∫⁻ a, ∏ i ∈ insert i₀ s, f i a ^ p i ∂μ
          = ∫⁻ a, f i₀ a ^ p i₀ * ∏ i ∈ s, f i a ^ p i ∂μ := by simp [hi₀]
        _ = ∫⁻ a, f i₀ a ^ p i₀ * (∏ i ∈ s, f i a ^ q i) ^ (1 - p i₀) ∂μ := by
            simp [q, ← ENNReal.prod_rpow_of_nonneg hpi₀, ← ENNReal.rpow_mul,
              div_mul_cancel₀ (h := h2pi₀)]
        _ ≤ (∫⁻ a, f i₀ a ∂μ) ^ p i₀ * (∫⁻ a, ∏ i ∈ s, f i a ^ q i ∂μ) ^ (1 - p i₀) := by
            apply ENNReal.lintegral_mul_norm_pow_le
            · exact hf i₀ <| mem_insert_self ..
            · exact s.aemeasurable_fun_prod fun i hi ↦ (hf i <| mem_insert_of_mem hi).pow_const _
            · exact h2p i₀ <| mem_insert_self ..
            · exact hpi₀
            · apply add_sub_cancel
        _ ≤ (∫⁻ a, f i₀ a ∂μ) ^ p i₀ * (∏ i ∈ s, (∫⁻ a, f i a ∂μ) ^ q i) ^ (1 - p i₀) := by
            gcongr -- behavior of gcongr is heartbeat-dependent, which makes code really fragile...
            exact ih (fun i hi ↦ hf i <| mem_insert_of_mem hi) hq h2q
        _ = (∫⁻ a, f i₀ a ∂μ) ^ p i₀ * ∏ i ∈ s, (∫⁻ a, f i a ∂μ) ^ p i := by
            simp [q, ← ENNReal.prod_rpow_of_nonneg hpi₀, ← ENNReal.rpow_mul,
              div_mul_cancel₀ (h := h2pi₀)]
        _ = ∏ i ∈ insert i₀ s, (∫⁻ a, f i a ∂μ) ^ p i := by simp [hi₀]

/-- A version of Hölder with multiple arguments, one of which plays a distinguished role. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `299ef74231950517bf58c7aff960934aa3729c20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
