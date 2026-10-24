# sum_reciprocal_sqrt_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00a398d6dfb75622252243575360647cf4e13d7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a7ce1fdb8b0385162db86c30130ee6e9cb6081afe30be551800c92b864e280b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:663de0a5-b0a0-269f-00bf-5139048e4751",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7ff696d-de9f-0a3b-16db-c8e70f62bbb8",
  "kind": "theorem",
  "lexical_name": "sum_reciprocal_sqrt_le",
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
  "slug": "sum-reciprocal-sqrt-le--e8b342c8d5b8419244d7b5af",
  "source": {
    "blob": "00a398d6dfb75622252243575360647cf4e13d7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InventoryAudit/Varianta7ce1fdb8b0385162db86c30130ee6e9cb6081afe30be551800c92b864e280b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8b342c8d5b8419244d7b5afec633c4b441d049f2aeba6a9128b7e63efa49909",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InventoryAudit/Varianta7ce1fdb8b0385162db86c30130ee6e9cb6081afe30be551800c92b864e280b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7ff696d-de9f-0a3b-16db-c8e70f62bbb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_reciprocal_sqrt_le (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, 1 / Real.sqrt (n : ℝ)) ≤ 2 * Real.sqrt N := by
  induction N with
  | zero => simp
  | succ N hN =>
    rw [Finset.sum_Icc_succ_top (by omega)]
    have hp : 0 < Real.sqrt ((N + 1 : ℕ) : ℝ) := Real.sqrt_pos.mpr (by positivity)
    have ha := Real.sq_sqrt (by positivity : (0 : ℝ) ≤ ((N + 1 : ℕ) : ℝ))
    have hb := Real.sq_sqrt (Nat.cast_nonneg N : (0 : ℝ) ≤ N)
    have hstep : 1 / Real.sqrt ((N + 1 : ℕ) : ℝ) ≤
        2 * (Real.sqrt ((N + 1 : ℕ) : ℝ) - Real.sqrt (N : ℝ)) := by
      apply (div_le_iff₀ hp).2
      have hd : Real.sqrt ((N + 1 : ℕ) : ℝ) ^ 2 - Real.sqrt (N : ℝ) ^ 2 = 1 := by
        rw [ha, hb]
        push_cast
        ring
      nlinarith [sq_nonneg (Real.sqrt ((N + 1 : ℕ) : ℝ) - Real.sqrt (N : ℝ))]
    linarith

/-- The unit bound for the genuine integer Möbius coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InventoryAudit/Varianta7ce1fdb8b0385162db86c30130ee6e9cb6081afe30be551800c92b864e280b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InventoryAudit/Varianta7ce1fdb8b0385162db86c30130ee6e9cb6081afe30be551800c92b864e280b9.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00a398d6dfb75622252243575360647cf4e13d7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
