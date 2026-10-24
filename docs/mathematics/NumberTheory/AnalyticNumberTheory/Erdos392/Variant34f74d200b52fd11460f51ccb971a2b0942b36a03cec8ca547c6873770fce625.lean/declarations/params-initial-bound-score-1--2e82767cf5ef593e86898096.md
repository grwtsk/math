# Params.initial.bound_score_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2371,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e65df3b-a127-1fd2-192e-64f16a0fafcc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a63289a-8f20-f272-2fad-86828ce638c2",
  "kind": "theorem",
  "lexical_name": "Params.initial.bound_score_1",
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
  "slug": "params-initial-bound-score-1--2e82767cf5ef593e86898096",
  "source": {
    "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2409,
    "line": 2371,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e82767cf5ef593e86898096984dc7386df09abe4d4f67e68fc7eae051dd13dc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a63289a-8f20-f272-2fad-86828ce638c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2371–2409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Params.initial.bound_score_1 (ε : ℝ) (hε : ε > 0) :
    ∀ᶠ M in .atTop, ∀ P : Params,
      P.M = M → P.n * log (1 - 1 / (P.M : ℝ))⁻¹ ≤ ε * P.n := by
  have h_tendsto : Filter.Tendsto
      (fun M : ℕ ↦ log (1 - 1 / (M : ℝ))⁻¹) .atTop (nhds 0) := by
    have : Filter.Tendsto (fun M : ℕ ↦ (1 : ℝ) / M) .atTop (nhds 0) :=
      tendsto_const_div_atTop_nhds_zero_nat 1
    have : Filter.Tendsto (fun M : ℕ ↦ 1 - 1 / (M : ℝ)) .atTop (nhds 1) := by
      simpa only [one_div, sub_zero] using tendsto_const_nhds.sub this
    have : Filter.Tendsto (fun M : ℕ ↦ (1 - 1 / (M : ℝ))⁻¹) .atTop (nhds 1) := by
      simpa using this.inv₀ one_ne_zero
    have h : Filter.Tendsto (fun x : ℝ ↦ log x) (nhds 1) (nhds 0) := by
      simpa [ContinuousAt, log_one] using continuousAt_log (x := (1 : ℝ)) one_ne_zero
    exact h.comp this
  rw [Metric.tendsto_atTop] at h_tendsto
  obtain ⟨N, hN⟩ := h_tendsto ε hε
  filter_upwards [Filter.eventually_ge_atTop N] with M hM P hPM
  rcases eq_or_ne P.n 0 with hn | hn
  · simp [hn]
  have hM_pos : (0 : ℝ) < M := cast_pos.mpr (zero_lt_of_lt <| hPM ▸ P.hM)
  have h_one_sub_pos : 0 < 1 - 1 / (M : ℝ) := by
    rw [sub_pos, div_lt_one hM_pos]; exact one_lt_cast.mpr <| hPM ▸ P.hM
  have h_inv_ge_one : 1 ≤ (1 - 1 / (M : ℝ))⁻¹ := by
    rw [one_le_inv_iff₀]; exact ⟨h_one_sub_pos, by linarith [div_nonneg one_pos.le hM_pos.le]⟩
  have h_log_lt : log (1 - 1 / (M : ℝ))⁻¹ < ε := by
    have := hN M hM
    rw [Real.dist_eq, log_inv, sub_zero, abs_neg] at this
    rw [log_inv]
    rwa [abs_of_neg (log_neg h_one_sub_pos (by linarith [div_pos one_pos hM_pos]))] at this
  calc P.n * log (1 - 1 / (P.M : ℝ))⁻¹ = P.n * log (1 - 1 / (M : ℝ))⁻¹ := by rw [hPM]
    _ ≤ P.n * ε := by gcongr
    _ = ε * P.n := mul_comm ..

@[blueprint
  "bound-score-2"
  (statement := /-- If $L$ is sufficiently large depending on $M, \varepsilon$, and $n$
  sufficiently large depending on $L$, then $\sum_{p \leq n/L} M \log n  \leq \varepsilon n$. -/)
  (proof := /-- Use the prime number theorem (or the Chebyshev bound). -/)
  (latexEnv := "sublemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean#L2371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f920001904e0a69cdcc5a1042bc956cb81fd55a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
