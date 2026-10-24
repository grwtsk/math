# log_stirlingSeq_bounded_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0be2ca8d-e28d-826f-7f68-015e0149cc42",
  "kind": "theorem",
  "lexical_name": "log_stirlingSeq_bounded_aux",
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
  "slug": "log-stirlingseq-bounded-aux--9c9598f4392e8aa5b1504950",
  "source": {
    "blob": "5060c493e10d7ab3cea2c678cd488566c9aef3f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 141,
    "path": "GRWTSK/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c9598f4392e8aa5b15049502a764f6f4428b82859c5ea951489471b7b765f64",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0be2ca8d-e28d-826f-7f68-015e0149cc42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_stirlingSeq_bounded_aux :
    ∃ c : ℝ, ∀ n : ℕ, log (stirlingSeq 1) - log (stirlingSeq (n + 1)) ≤ c := by
  let d : ℝ := ∑' k : ℕ, (1 : ℝ) / (↑(k + 1) : ℝ) ^ 2
  use 1 / 4 * d
  let log_stirlingSeq' : ℕ → ℝ := fun k => log (stirlingSeq (k + 1))
  intro n
  have h₁ k : log_stirlingSeq' k - log_stirlingSeq' (k + 1) ≤ 1 / 4 * (1 / (↑(k + 1) : ℝ) ^ 2) := by
    convert log_stirlingSeq_sub_log_stirlingSeq_succ k using 1; field_simp
  have h₂ : (∑ k ∈ range n, 1 / (↑(k + 1) : ℝ) ^ 2) ≤ d := by
    have := (summable_nat_add_iff 1).mpr <| Real.summable_one_div_nat_pow.mpr one_lt_two
    exact this.sum_le_tsum (range n) (fun k _ => by positivity)
  calc
    log (stirlingSeq 1) - log (stirlingSeq (n + 1)) = log_stirlingSeq' 0 - log_stirlingSeq' n :=
      rfl
    _ = ∑ k ∈ range n, (log_stirlingSeq' k - log_stirlingSeq' (k + 1)) := by
      rw [← sum_range_sub' log_stirlingSeq' n]
    _ ≤ ∑ k ∈ range n, 1 / 4 * (1 / ↑((k + 1)) ^ 2) := sum_le_sum fun k _ => h₁ k
    _ = 1 / 4 * ∑ k ∈ range n, 1 / ↑((k + 1)) ^ 2 := by rw [mul_sum]
    _ ≤ 1 / 4 * d := by gcongr

/-- The sequence `log_stirlingSeq` is bounded below for `n ≥ 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5060c493e10d7ab3cea2c678cd488566c9aef3f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
