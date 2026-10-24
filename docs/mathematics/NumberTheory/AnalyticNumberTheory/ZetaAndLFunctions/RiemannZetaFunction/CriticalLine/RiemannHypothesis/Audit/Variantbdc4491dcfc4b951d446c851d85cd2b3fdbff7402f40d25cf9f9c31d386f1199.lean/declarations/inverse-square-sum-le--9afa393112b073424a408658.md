# inverse_square_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f281a19a-d78a-3076-a482-95d9d216b82f",
  "kind": "theorem",
  "lexical_name": "inverse_square_sum_le",
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
  "slug": "inverse-square-sum-le--9afa393112b073424a408658",
  "source": {
    "blob": "84e4094657a5a86a57b6f73fd182d9836a19a035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variantbdc4491dcfc4b951d446c851d85cd2b3fdbff7402f40d25cf9f9c31d386f1199.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9afa393112b073424a40865892b18e8046ba63d4af4cab6aed880caaf268a444",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variantbdc4491dcfc4b951d446c851d85cd2b3fdbff7402f40d25cf9f9c31d386f1199.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f281a19a-d78a-3076-a482-95d9d216b82f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverse_square_sum_le {m N : ℕ} (hm : 2 ≤ m) (hN : m ≤ N) :
    (∑ j ∈ Finset.Icc m N, (1 : ℝ) / (j : ℝ) ^ 2) ≤
      1 / ((m : ℝ) - 1) - 1 / (N : ℝ) := by
  induction N, hN using Nat.le_induction with
  | base =>
      simpa using inverse_square_le_difference (j := (m : ℝ)) (by exact_mod_cast hm)
  | succ N hN ih =>
      rw [Finset.sum_Icc_succ_top (by omega)]
      have hn : 1 < ((N + 1 : ℕ) : ℝ) := by exact_mod_cast (show 1 < N + 1 by omega)
      have ht := inverse_square_le_difference hn
      have heq : ((N + 1 : ℕ) : ℝ) - 1 = (N : ℝ) := by push_cast; ring
      rw [heq] at ht
      linarith

/-- A finite or partially completed selection pays one uniform absolute cost. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variantbdc4491dcfc4b951d446c851d85cd2b3fdbff7402f40d25cf9f9c31d386f1199.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variantbdc4491dcfc4b951d446c851d85cd2b3fdbff7402f40d25cf9f9c31d386f1199.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84e4094657a5a86a57b6f73fd182d9836a19a035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
