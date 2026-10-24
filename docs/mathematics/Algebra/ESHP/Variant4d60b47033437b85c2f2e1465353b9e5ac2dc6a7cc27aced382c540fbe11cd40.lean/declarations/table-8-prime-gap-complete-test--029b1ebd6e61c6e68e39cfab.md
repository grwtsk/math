# table_8_prime_gap_complete_test

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b9e468fee2e01d3278a32ef82ef1c44b2545514b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3dd6f52-579a-e7c9-703b-7316f61be7bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ebd584d6-a117-26a1-e45d-54ac96b2b402",
  "kind": "theorem",
  "lexical_name": "table_8_prime_gap_complete_test",
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
  "slug": "table-8-prime-gap-complete-test--029b1ebd6e61c6e68e39cfab",
  "source": {
    "blob": "b9e468fee2e01d3278a32ef82ef1c44b2545514b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 97,
    "path": "GRWTSK/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:029b1ebd6e61c6e68e39cfab3d8f6fb6d76f19d98ff702a714ec7e4e74318782",
  "verification": {
    "reference": "docs/verification/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebd584d6-a117-26a1-e45d-54ac96b2b402`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem table_8_prime_gap_complete_test (p g : ℕ) (hp : p ≤ 30)
    (hrecord : prime_gap_record p g) : (p, g) ∈ table_8 := by
  obtain ⟨n, hn₁, hn₂, hn₃⟩ := hrecord
  have nth_eq : ∀ {m i}, m.Prime → Nat.count Nat.Prime m = i → nth_prime i = m :=
    fun hm hc ↦ by simpa only [nth_prime, hc] using nth_count hm
  have hpv : ∀ k < 11, nth_prime k = if k = 0 then 2 else if k = 1 then 3 else if k = 2 then 5
    else if k = 3 then 7 else if k = 4 then 11 else if k = 5 then 13 else if k = 6 then 17
    else if k = 7 then 19 else if k = 8 then 23 else if k = 9 then 29 else 31 := by
    intro k hk
    interval_cases k <;> exact nth_eq (by decide) (by decide)
  by_cases hn : n < 11
  · interval_cases n <;>
      simp only [← hn₁, ← hn₂, nth_prime_gap] at *
    all_goals
      have := hn₃ 0; have := hn₃ 1; have := hn₃ 2
      have := hn₃ 3; have := hn₃ 4; have := hn₃ 5
      have := hn₃ 6; have := hn₃ 7; have := hn₃ 8
      have := hn₃ 9
      simp +decide [*] at *
  · have h10 := nth_eq (show Nat.Prime 31 by decide) (show count Nat.Prime 31 = 10 by decide)
    linarith [nth_monotone Nat.infinite_setOf_prime (show 10 ≤ n by omega), hn₁]

@[blueprint
  "table-8-prime-gap-complete"
  (title := "Table 8 prime gap records - completeness")
  (statement := /--
  Table 8 contains ALL the prime gap records $(p_k,g_k)$
  with $p_k \leq 4 \times 10^{18}$. -/)
  (proof := /-- Verified by computer.  Unlikely to be
  formalizable in Lean with current technology, except for
  the small values of the table. -/)
  (latexEnv := "proposition")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9e468fee2e01d3278a32ef82ef1c44b2545514b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
