# log_stirlingSeq_diff_le_geo_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9f23b701269fb0b377e0695f952e7e55f7aac81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:673efd2c-81d9-aa53-bab5-dfc6674f989f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a24591c-97a9-acb5-d798-55ac7aabbf76",
  "kind": "theorem",
  "lexical_name": "log_stirlingSeq_diff_le_geo_sum",
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
  "slug": "log-stirlingseq-diff-le-geo-sum--3e408eed97fcf47d3d444698",
  "source": {
    "blob": "f9f23b701269fb0b377e0695f952e7e55f7aac81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 95,
    "path": "GRWTSK/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e408eed97fcf47d3d444698104abb99f1fb3cccca4dbef0baecef6f3e1e104d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a24591c-97a9-acb5-d798-55ac7aabbf76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_stirlingSeq_diff_le_geo_sum (n : ℕ) :
    log (stirlingSeq (n + 1)) - log (stirlingSeq (n + 2)) ≤
      ((1 : ℝ) / (2 * ↑(n + 1) + 1)) ^ 2 / (1 - ((1 : ℝ) / (2 * ↑(n + 1) + 1)) ^ 2) := by
  have h_nonneg : (0 : ℝ) ≤ ((1 : ℝ) / (2 * ↑(n + 1) + 1)) ^ 2 := sq_nonneg _
  have g : HasSum (fun k : ℕ => (((1 : ℝ) / (2 * ↑(n + 1) + 1)) ^ 2) ^ ↑(k + 1))
      (((1 : ℝ) / (2 * ↑(n + 1) + 1)) ^ 2 / (1 - ((1 : ℝ) / (2 * ↑(n + 1) + 1)) ^ 2)) := by
    have := (hasSum_geometric_of_lt_one h_nonneg ?_).mul_left (((1 : ℝ) / (2 * ↑(n + 1) + 1)) ^ 2)
    · simp_rw [← _root_.pow_succ'] at this
      exact this
    rw [one_div, inv_pow]
    exact inv_lt_one_of_one_lt₀ (one_lt_pow₀ (lt_add_of_pos_left _ <| by positivity) two_ne_zero)
  have hab (k : ℕ) : (1 : ℝ) / (2 * ↑(k + 1) + 1) * ((1 / (2 * ↑(n + 1) + 1)) ^ 2) ^ ↑(k + 1) ≤
      (((1 : ℝ) / (2 * ↑(n + 1) + 1)) ^ 2) ^ ↑(k + 1) := by
    refine mul_le_of_le_one_left (pow_nonneg h_nonneg ↑(k + 1)) ?_
    rw [one_div]
    exact inv_le_one_of_one_le₀ (le_add_of_nonneg_left <| by positivity)
  exact hasSum_le hab (log_stirlingSeq_diff_hasSum n) g

/-- We have the bound `log (stirlingSeq n) - log (stirlingSeq (n+1))` ≤ 1/(4 n^2)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9f23b701269fb0b377e0695f952e7e55f7aac81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
