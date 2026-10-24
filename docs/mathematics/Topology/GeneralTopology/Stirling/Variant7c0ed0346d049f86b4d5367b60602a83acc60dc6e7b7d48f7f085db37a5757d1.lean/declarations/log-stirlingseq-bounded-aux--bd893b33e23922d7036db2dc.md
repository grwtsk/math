# log_stirlingSeq_bounded_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac841ca6-2593-b812-03d1-5324e59fd1e6",
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
  "slug": "log-stirlingseq-bounded-aux--bd893b33e23922d7036db2dc",
  "source": {
    "blob": "73f07f03fc8b1a88de24a67f848199a1987b7b6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 156,
    "path": "GRWTSK/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd893b33e23922d7036db2dcf856ca4da24c2e3f3b208b1d4581a2d52004d3bf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac841ca6-2593-b812-03d1-5324e59fd1e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_stirlingSeq_bounded_aux :
    ∃ c : ℝ, ∀ n : ℕ, log (stirlingSeq 1) - log (stirlingSeq n.succ) ≤ c := by
  let d := ∑' k : ℕ, ↑1 / (k.succ:ℝ) ^ 2
  use (1 / 4 * d : ℝ)
  let log_stirlingSeq' : ℕ → ℝ := fun k => log (stirlingSeq k.succ)
  intro n
  have h₁ : ∀ k, log_stirlingSeq' k - log_stirlingSeq' (k + 1) ≤
      ↑1 / ↑4 * (↑1 / (k.succ:ℝ) ^ 2) := by
    intro k; convert log_stirlingSeq_sub_log_stirlingSeq_succ k using 1; field_simp
  have h₂ : (∑ k : ℕ in range n, ↑1 / (k.succ:ℝ) ^ 2) ≤ d := by
    have := (summable_nat_add_iff 1).mpr <| Real.summable_one_div_nat_pow.mpr one_lt_two
    simp only [rpow_nat_cast] at this
    exact sum_le_tsum (range n) (fun k _ => by positivity) this
  calc
    log (stirlingSeq 1) - log (stirlingSeq n.succ) = log_stirlingSeq' 0 - log_stirlingSeq' n :=
      rfl
    _ = ∑ k in range n, (log_stirlingSeq' k - log_stirlingSeq' (k + 1)) := by
      rw [← sum_range_sub' log_stirlingSeq' n]
    _ ≤ ∑ k in range n, ↑1 / ↑4 * (↑1 / ↑(k.succ) ^ 2) := (sum_le_sum fun k _ => h₁ k)
    _ = ↑1 / ↑4 * ∑ k in range n, ↑1 / ↑(k.succ) ^ 2 := by rw [mul_sum]
    _ ≤ 1 / 4 * d := mul_le_mul_of_nonneg_left h₂ <| by positivity
#align stirling.log_stirling_seq_bounded_aux Stirling.log_stirlingSeq_bounded_aux

/-- The sequence `log_stirlingSeq` is bounded below for `n ≥ 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73f07f03fc8b1a88de24a67f848199a1987b7b6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
