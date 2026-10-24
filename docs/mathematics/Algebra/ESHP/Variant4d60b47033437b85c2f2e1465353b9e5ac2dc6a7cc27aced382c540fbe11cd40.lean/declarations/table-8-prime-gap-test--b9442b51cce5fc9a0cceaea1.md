# table_8_prime_gap_test

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
      "line": 28,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65f92c26-b50e-8776-fc3e-96448658d33d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:412fb519-caf9-dc26-5786-185c18ebc9eb",
  "kind": "theorem",
  "lexical_name": "table_8_prime_gap_test",
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
  "slug": "table-8-prime-gap-test--b9442b51cce5fc9a0cceaea1",
  "source": {
    "blob": "b9e468fee2e01d3278a32ef82ef1c44b2545514b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 28,
    "path": "GRWTSK/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9442b51cce5fc9a0cceaea10c0abc586c2a0e6c705f8db7a5acad68e4b5e41f",
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

Occurrence: `result:412fb519-caf9-dc26-5786-185c18ebc9eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem table_8_prime_gap_test (p g : ℕ) (h : (p, g) ∈ table_8)
    (htest : p < 30) : prime_gap_record p g := by
  have hmem := h
  simp [table_8] at hmem
  have hsmall :
      (p = 2 ∧ g = 1) ∨ (p = 3 ∧ g = 2) ∨ (p = 7 ∧ g = 4) ∨ (p = 23 ∧ g = 6) := by
    omega
  have nth_prime_eq_of_count {m i : ℕ} (hm : Nat.Prime m) (hcount : Nat.count Nat.Prime m = i) :
    nth_prime i = m := by
    simpa only [nth_prime, hcount] using Nat.nth_count hm
  rcases hsmall with h2 | h3 | h7 | h23
  · obtain ⟨rfl, rfl⟩ := h2
    refine ⟨0, by simp [nth_prime], by simp [nth_prime_gap, nth_prime], fun k hk => ?_⟩
    have hk2 : 2 ≤ nth_prime k := by
      have hk2' : k + 2 ≤ nth_prime k := by
        simpa only [nth_prime] using Nat.add_two_le_nth_prime k
      omega
    omega
  · obtain ⟨rfl, rfl⟩ := h3
    refine ⟨1, by simp [nth_prime], by simp [nth_prime_gap, nth_prime], fun k hk => ?_⟩
    have hk' : k < 1 := by
      have hkn : nth_prime k < nth_prime 1 := by simpa [nth_prime] using hk
      exact (Nat.nth_lt_nth Nat.infinite_setOf_prime).1 hkn
    have hk0 : k = 0 := Nat.lt_one_iff.mp hk'
    subst hk0
    simp [nth_prime_gap, nth_prime]
  · obtain ⟨rfl, rfl⟩ := h7
    refine ⟨3, by simp [nth_prime], by simp [nth_prime_gap, nth_prime], fun k hk => ?_⟩
    have hk' : k < 3 := by
      have hkn : nth_prime k < nth_prime 3 := by simpa [nth_prime] using hk
      exact (Nat.nth_lt_nth Nat.infinite_setOf_prime).1 hkn
    interval_cases k <;> simp [nth_prime_gap, nth_prime]
  · obtain ⟨rfl, rfl⟩ := h23
    have h13 : nth_prime 5 = 13 := nth_prime_eq_of_count (by decide) (by decide)
    have h17 : nth_prime 6 = 17 := nth_prime_eq_of_count (by decide) (by decide)
    have h19 : nth_prime 7 = 19 := nth_prime_eq_of_count (by decide) (by decide)
    have h23' : nth_prime 8 = 23 := nth_prime_eq_of_count (by decide) (by decide)
    have h29 : nth_prime 9 = 29 := nth_prime_eq_of_count (by decide) (by decide)
    refine ⟨8, h23', by simp [nth_prime_gap, h23', h29], fun k hk => ?_⟩
    have hk' : k < 8 := by
      have hkn : nth_prime k < nth_prime 8 := by simpa [nth_prime, h23'] using hk
      exact (Nat.nth_lt_nth Nat.infinite_setOf_prime).1 hkn
    interval_cases k <;>
      simp [nth_prime_gap, nth_prime, h13, h17, h19, h23']


@[blueprint
  "table-8-prime-gap"
  (title := "Table 8 prime gap records")
  (statement := /--
  For every pair $(p_k,g_k)$ in Table 8, $g_k$ is the prime
  gap $p_{k+1} - p_k$, and all prime gaps preceding this gap
  are less than $g_k$. -/)
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9e468fee2e01d3278a32ef82ef1c44b2545514b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
