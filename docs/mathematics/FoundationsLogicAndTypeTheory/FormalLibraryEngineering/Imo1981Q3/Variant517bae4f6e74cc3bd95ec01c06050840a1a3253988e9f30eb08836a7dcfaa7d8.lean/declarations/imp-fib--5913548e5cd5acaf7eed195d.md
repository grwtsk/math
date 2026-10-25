# imp_fib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "199a09dd1e95c1637d53fc26049671f59219d49c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/517bae4f6e74cc3bd95ec01c06050840a1a3253988e9f30eb08836a7dcfaa7d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6fa66b4-e96a-f2b6-e1ee-cdf3bebb2cf8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5bbd1546-b9cd-5605-971b-438d89d40bf3",
  "kind": "theorem",
  "lexical_name": "imp_fib",
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
  "slug": "imp-fib--5913548e5cd5acaf7eed195d",
  "source": {
    "blob": "199a09dd1e95c1637d53fc26049671f59219d49c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant517bae4f6e74cc3bd95ec01c06050840a1a3253988e9f30eb08836a7dcfaa7d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5913548e5cd5acaf7eed195df6f2177cefe485487f263b20455365440880e0d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant517bae4f6e74cc3bd95ec01c06050840a1a3253988e9f30eb08836a7dcfaa7d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bbd1546-b9cd-5605-971b-438d89d40bf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imp_fib {n : ℕ} : ∀ m : ℕ, NatPredicate N m n → ∃ k : ℕ, m = fib k ∧ n = fib (k + 1) := by
  refine Nat.strong_induction_on n ?_
  intro n h1 m h2
  have h3 : m ≤ n := h2.m_le_n
  obtain (rfl : 1 = n) | (h4 : 1 < n) := (succ_le_iff.mpr h2.n_pos).eq_or_lt
  · use 1
    have h5 : 1 ≤ m := succ_le_iff.mpr h2.m_pos
    simpa using h3.antisymm h5
  · obtain (rfl : m = n) | (h6 : m < n) := h3.eq_or_lt
    · exact absurd h2.eq_imp_1 (Nat.ne_of_gt h4)
    · have h7 : NatPredicate N (n - m) m := h2.reduction h4
      obtain ⟨k : ℕ, hnm : n - m = fib k, rfl : m = fib (k + 1)⟩ := h1 m h6 (n - m) h7
      use k + 1, rfl
      rw [fib_add_two, ← hnm, tsub_add_cancel_of_le h3]

end NatPredicate

/-
Next, we prove that if `N < fib K + fib (K+1)`, then the largest `m` and `n`
satisfying `NatPredicate m n N` are `fib K` and `fib (K+1)`, respectively.
-/
variable {K : ℕ} (HK : N < fib K + fib (K + 1)) {N}

include HK in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant517bae4f6e74cc3bd95ec01c06050840a1a3253988e9f30eb08836a7dcfaa7d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant517bae4f6e74cc3bd95ec01c06050840a1a3253988e9f30eb08836a7dcfaa7d8.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `199a09dd1e95c1637d53fc26049671f59219d49c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
