# tendsto_primeCounting_div_id_zero

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
      "line": 2852,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5442a35a-1e9d-d2b0-530c-420a6902dccb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:300deb36-6f6b-a3ea-ec8d-510a4028ec32",
  "kind": "lemma",
  "lexical_name": "tendsto_primeCounting_div_id_zero",
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
  "slug": "tendsto-primecounting-div-id-zero--246c7cc3595f50206e1b6e79",
  "source": {
    "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2878,
    "line": 2852,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:246c7cc3595f50206e1b6e79ba8cc18a80e603a9e01ef0153b189751e56e32cd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:300deb36-6f6b-a3ea-ec8d-510a4028ec32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2852–2878.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_primeCounting_div_id_zero :
    Filter.Tendsto (fun n ↦ (Nat.primeCounting n : ℝ) / n) .atTop (nhds 0) := by
  have h_upper_bound : ∀ n : ℕ, 2 ≤ n →
      (primeCounting n : ℝ) / n ≤
        Real.sqrt n / n + (2 * Real.log 4) / Real.log n := by
    intro n hn
    rw [div_le_iff₀ (by positivity)]
    convert primeCounting_le_bound n hn using 1
    · ring_nf; norm_num [show n ≠ 0 by positivity]
  have h_tendsto : Filter.Tendsto
      (fun n : ℕ ↦ .sqrt n / n + (2 * Real.log 4) / Real.log n)
      .atTop (nhds 0) := by
    have h1 : Filter.Tendsto (fun n : ℕ ↦ Real.sqrt n / n) .atTop (nhds 0) := by
      simpa [sqrt_div_self] using tendsto_inv_atTop_nhds_zero_nat.sqrt
    have h2 : Filter.Tendsto (fun n : ℕ ↦ (2 * Real.log 4) / Real.log n) .atTop (nhds 0) :=
      tendsto_const_nhds.div_atTop (tendsto_log_atTop.comp tendsto_natCast_atTop_atTop)
    simpa using h1.add h2
  exact squeeze_zero_norm' (Filter.eventually_atTop.mpr ⟨2, fun n hn ↦ by
    rw [norm_of_nonneg (by positivity)]; exact h_upper_bound n hn⟩) h_tendsto

@[blueprint
  "bound-score-5"
  (statement := /-- If $n$ sufficiently large depending on $M, L, \varepsilon$, then
$\sum_{p \leq L} (M \log n + M L \pi(n)) \log L \leq \varepsilon n$. -/)
  (proof := /-- Use the prime number theorem (or the Chebyshev bound). -/)
  (discussion := 518)
  (latexEnv := "sublemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean#L2852).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f920001904e0a69cdcc5a1042bc956cb81fd55a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
