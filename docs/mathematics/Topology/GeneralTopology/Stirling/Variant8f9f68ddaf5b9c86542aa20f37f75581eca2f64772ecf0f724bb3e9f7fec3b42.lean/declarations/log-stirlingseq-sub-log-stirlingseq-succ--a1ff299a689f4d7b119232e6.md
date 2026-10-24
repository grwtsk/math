# log_stirlingSeq_sub_log_stirlingSeq_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "afda0468b72d09b19e29b15a07a9dde801f34027",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:172ddf82-7d1a-c059-f128-1dbc8d8ca2d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6025c25-a401-b9ca-f2f3-e0f26882dec5",
  "kind": "theorem",
  "lexical_name": "log_stirlingSeq_sub_log_stirlingSeq_succ",
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
  "slug": "log-stirlingseq-sub-log-stirlingseq-succ--a1ff299a689f4d7b119232e6",
  "source": {
    "blob": "afda0468b72d09b19e29b15a07a9dde801f34027",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 129,
    "path": "GRWTSK/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1ff299a689f4d7b119232e682398856d3d1f29af7f79c5fd08439a3998122d7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6025c25-a401-b9ca-f2f3-e0f26882dec5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_stirlingSeq_sub_log_stirlingSeq_succ (n : ℕ) :
    log (stirlingSeq n.succ) - log (stirlingSeq n.succ.succ) ≤ ↑1 / (↑4 * (n.succ:ℝ) ^ 2) := by
  have h₁ : ↑0 < ↑4 * ((n:ℝ) + 1) ^ 2 := by positivity
  have h₃ : ↑0 < (2 * ((n:ℝ) + 1) + 1) ^ 2 := by positivity
  have h₂ : ↑0 < ↑1 - (1 / (2 * ((n:ℝ) + 1) + 1)) ^ 2 := by
    rw [← mul_lt_mul_right h₃]
    have H : ↑0 < (2 * ((n:ℝ) + 1) + 1) ^ 2 - 1 := by nlinarith [@cast_nonneg ℝ _ n]
    convert H using 1 <;> field_simp [h₃.ne']
  refine' (log_stirlingSeq_diff_le_geo_sum n).trans _
  push_cast
  rw [div_le_div_iff h₂ h₁]
  field_simp [h₃.ne']
  rw [div_le_div_right h₃]
  ring_nf
  norm_cast
  linarith
#align stirling.log_stirling_seq_sub_log_stirling_seq_succ Stirling.log_stirlingSeq_sub_log_stirlingSeq_succ

/-- For any `n`, we have `log_stirlingSeq 1 - log_stirlingSeq n ≤ 1/4 * ∑' 1/k^2`  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afda0468b72d09b19e29b15a07a9dde801f34027` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
