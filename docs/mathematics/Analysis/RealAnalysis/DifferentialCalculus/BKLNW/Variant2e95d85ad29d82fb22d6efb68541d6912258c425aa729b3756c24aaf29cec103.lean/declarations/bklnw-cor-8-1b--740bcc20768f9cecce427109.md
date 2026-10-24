# bklnw_cor_8_1b

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31d573af61253eda377326baebeb36929353a168",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1437,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e7a27493-e91a-a4cc-73ea-f2aaaf3e0955",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fdd5cb5f-2ea0-6c24-7df9-df580dd1a835",
  "kind": "theorem",
  "lexical_name": "bklnw_cor_8_1b",
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
  "slug": "bklnw-cor-8-1b--740bcc20768f9cecce427109",
  "source": {
    "blob": "31d573af61253eda377326baebeb36929353a168",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1484,
    "line": 1437,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:740bcc20768f9cecce427109333af0f7b846927b6e944603e59e63da9127dd9f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdd5cb5f-2ea0-6c24-7df9-df580dd1a835`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1437–1484.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bklnw_cor_8_1b (k : ℕ) (b₀ : ℝ) (hk : 1 ≤ k ∧ k ≤ 5)
  (hb₀ : b₀ ∈ table_10_entries) :
  ∀ x ∈ Set.Icc (exp b₀) (exp K), |θ x - x| ≤ (B_8_1' k b₀) * x / (log x)^k := by
  intro x hx
  have hx_pos : 0 < x := (exp_pos b₀).trans_le hx.1
  have hlog_lower : b₀ ≤ log x := by
    simpa using log_le_log (exp_pos b₀) hx.1
  have hlog_upper : log x ≤ K := by
    simpa using log_le_log hx_pos hx.2
  obtain ⟨b, hb_in, hb₀_le, hb_le_logx, hlogx_le_next⟩ :=
    table_10_coverage b₀ (log x) hb₀ hlog_lower hlog_upper
  have hb_lt_K : b < K := table_10_entry_lt_K b hb_in
  have hxb : exp b ≤ x := by
    simpa [exp_log hx_pos] using exp_le_exp.mpr hb_le_logx
  have hxnext : x ≤ exp (table_10_next b) := by
    simpa [exp_log hx_pos] using exp_le_exp.mpr hlogx_le_next
  have hbk : b ≥ max 7 (2 * (k : ℝ)) := by
    have hb20 : (20 : ℝ) ≤ b := table_10_entries_ge_20 b hb_in
    have hk5 : (k : ℝ) ≤ 5 := by exact_mod_cast hk.2
    exact max_le (by linarith) (by linarith)
  have hsub :
      |θ x - x| ≤ (B_8_1 k b (table_10_next b)) * x / (log x)^k :=
    bklnw_cor_8_1a k b (table_10_next b) hk
      (table_10_next_gt b hb_lt_K) hbk x ⟨hxb, hxnext⟩
  have hB : B_8_1 k b (table_10_next b) ≤ B_8_1' k b₀ := by
    let S := (table_10_entries.filter (fun b ↦ b₀ ≤ b ∧ b < K)).image
      fun b ↦ B_8_1 k b (table_10_next b)
    have hmem : B_8_1 k b (table_10_next b) ∈ S := mem_image_of_mem _
      (mem_filter.mpr ⟨hb_in, hb₀_le, hb_lt_K⟩)
    rw [B_8_1', dif_pos ⟨B_8_1 k b (table_10_next b), hmem⟩]
    exact Finset.le_sup' id hmem
  have hx_gt_one : 1 < x := by
    have hb20 : (20 : ℝ) ≤ b₀ := table_10_entries_ge_20 b₀ hb₀
    have : 1 < exp b₀ := by
      simpa using exp_strictMono (by linarith : (0 : ℝ) < b₀)
    exact this.trans_le hx.1
  exact hsub.trans <|
    div_le_div_of_nonneg_right
      (mul_le_mul_of_nonneg_right hB hx_pos.le)
      (pow_nonneg (log_pos hx_gt_one).le k)

@[blueprint
  "bklnw-table-11-verification"
  (title := "BKLNW Table 11 verification")
  (statement := /--  Verification of the entries of Table 11. -/)
  (proof := /-- TODO: Implement a margin and verify the entries of Table 11. Any lengthy numerical calculations should be moved to `BKLNW\_tables.lean`-/)
  (latexEnv := "proposition")
  (discussion := 1257)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean#L1437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31d573af61253eda377326baebeb36929353a168` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
