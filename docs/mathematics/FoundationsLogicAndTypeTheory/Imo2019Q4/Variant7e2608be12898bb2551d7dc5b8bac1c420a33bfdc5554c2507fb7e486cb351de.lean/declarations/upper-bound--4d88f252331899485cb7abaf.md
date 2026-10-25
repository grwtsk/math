# upper_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b46b9b351c17db0b25e4512f9c898219b42dd73",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e2608be12898bb2551d7dc5b8bac1c420a33bfdc5554c2507fb7e486cb351de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ded5219f-0892-a28b-f7f1-47d8424fc564",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b4c82a6a-e256-af08-a99b-852cfc6acb8d",
  "kind": "theorem",
  "lexical_name": "upper_bound",
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
  "slug": "upper-bound--4d88f252331899485cb7abaf",
  "source": {
    "blob": "6b46b9b351c17db0b25e4512f9c898219b42dd73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Imo2019Q4/Variant7e2608be12898bb2551d7dc5b8bac1c420a33bfdc5554c2507fb7e486cb351de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d88f252331899485cb7abaf9ddb792fd17e40c7f5848ff8bdb83e4cbf78e16c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Imo2019Q4/Variant7e2608be12898bb2551d7dc5b8bac1c420a33bfdc5554c2507fb7e486cb351de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4c82a6a-e256-af08-a99b-852cfc6acb8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upper_bound {k n : ℕ} (hk : k > 0)
    (h : (k ! : ℤ) = ∏ i ∈ range n, ((2 : ℤ) ^ n - (2 : ℤ) ^ i)) : n < 6 := by
  have h2 : ∑ i ∈ range n, i < k := by
    suffices emultiplicity 2 (k ! : ℤ) = ↑(∑ i ∈ range n, i : ℕ) by
      rw [← Nat.cast_lt (α := ℕ∞), ← this]; change emultiplicity ((2 : ℕ) : ℤ) _ < _
      simp_rw [Int.natCast_emultiplicity, emultiplicity_two_factorial_lt hk.lt.ne.symm]
    rw [h, Finset.emultiplicity_prod Int.prime_two, Nat.cast_sum]
    apply sum_congr rfl; intro i hi
    rw [emultiplicity_sub_of_gt, emultiplicity_pow_self_of_prime Int.prime_two]
    rwa [emultiplicity_pow_self_of_prime Int.prime_two,
      emultiplicity_pow_self_of_prime Int.prime_two, Nat.cast_lt, ← mem_range]
  rw [← not_le]; intro hn
  apply _root_.ne_of_gt _ h
  calc ∏ i ∈ range n, ((2:ℤ) ^ n - (2:ℤ) ^ i) ≤ ∏ __ ∈ range n, (2:ℤ) ^ n := ?_
    _ < ↑ k ! := ?_
  · gcongr
    · intro i hi
      simp only [mem_range] at hi
      have : (2:ℤ) ^ i ≤ (2:ℤ) ^ n := by gcongr; norm_num
      linarith
    · apply sub_le_self
      positivity
  norm_cast
  calc ∏ __ ∈ range n, 2 ^ n = 2 ^ (n * n) := by rw [prod_const, card_range, ← pow_mul]
    _ < (∑ i ∈ range n, i)! := ?_
    _ ≤ k ! := by gcongr
  clear h h2
  induction' n, hn using Nat.le_induction with n' hn' IH
  · decide
  let A := ∑ i ∈ range n', i
  have le_sum : ∑ i ∈ range 6, i ≤ A := by
    apply sum_le_sum_of_subset
    simpa using hn'
  calc 2 ^ ((n' + 1) * (n' + 1))
      ≤ 2 ^ (n' * n' + 4 * n') := by gcongr <;> linarith
    _ = 2 ^ (n' * n') * (2 ^ 4) ^ n' := by rw [← pow_mul, ← pow_add]
    _ < A ! * (2 ^ 4) ^ n' := by gcongr
    _ = A ! * (15 + 1) ^ n' := rfl
    _ ≤ A ! * (A + 1) ^ n' := by gcongr; exact le_sum
    _ ≤ (A + n')! := factorial_mul_pow_le_factorial
    _ = (∑ i ∈ range (n' + 1), i)! := by rw [sum_range_succ]

end Imo2019Q4

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Imo2019Q4/Variant7e2608be12898bb2551d7dc5b8bac1c420a33bfdc5554c2507fb7e486cb351de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Imo2019Q4/Variant7e2608be12898bb2551d7dc5b8bac1c420a33bfdc5554c2507fb7e486cb351de.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b46b9b351c17db0b25e4512f9c898219b42dd73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
