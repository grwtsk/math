# nth_prime_vals

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
      "line": 308,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65f34dc3-0489-d62e-aad3-8553d20f18b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e6cbed9-e9eb-656e-35b5-400c3c656d3f",
  "kind": "lemma",
  "lexical_name": "nth_prime_vals",
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
  "slug": "nth-prime-vals--88deac41ea3080b5c40315a5",
  "source": {
    "blob": "b9e468fee2e01d3278a32ef82ef1c44b2545514b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 308,
    "path": "GRWTSK/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88deac41ea3080b5c40315a52d0e1b3217e2a44c8d93a58631f9ce810b897375",
  "verification": {
    "reference": "docs/verification/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e6cbed9-e9eb-656e-35b5-400c3c656d3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nth_prime_vals : nth_prime 0 = 2 ∧ nth_prime 1 = 3 ∧ nth_prime 2 = 5 ∧
    nth_prime 3 = 7 ∧ nth_prime 4 = 11 ∧ nth_prime 5 = 13 ∧ nth_prime 6 = 17 ∧
    nth_prime 7 = 19 ∧ nth_prime 8 = 23 := by
  norm_num [nth_prime, Nat.nth_zero]
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · exact le_antisymm (Nat.sInf_le Nat.prime_two)
      (le_csInf ⟨2, prime_two⟩ fun p hp ↦ Prime.two_le hp)
  · rw [eq_comm, nth_eq_sInf]
    refine le_antisymm ?_ ?_
    · refine le_csInf ?_ ?_ <;> norm_num
      · exact ⟨_, prime_nth_prime 5, fun k hk ↦ nth_strictMono infinite_setOf_prime hk⟩
      · intro b hb hb'
        contrapose! hb'
        use count Nat.Prime b
        interval_cases b <;> simp +arith +decide at hb ⊢
    · exact Nat.sInf_le ⟨by norm_num, fun k hk ↦ by interval_cases k <;> norm_num [*]⟩
  · have h_nth_prime_6 : nth_prime 6 = 17 := by
      have : count Nat.Prime 17 = 6 := by decide
      rw [← this, nth_prime, nth_count]
      norm_num
    exact h_nth_prime_6
  · have h_prime_7 : nth_prime 7 = 19 := by
      have : nth_prime 7 = nth_prime (count Nat.Prime 19) := by congr
      exact this.trans (nth_count <| by norm_num)
    exact h_prime_7
  · have h_prime_8 : nth_prime 8 = 23 := by
      have : count Nat.Prime 23 = 8 := by decide
      rw [← this, nth_prime, nth_count]
      norm_num
    exact h_prime_8

/-- For any odd number `g > 1`, the first prime gap of size `g` is `0`
(meaning it doesn't exist). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9e468fee2e01d3278a32ef82ef1c44b2545514b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
