# upper_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b52f6085c03ce54ee9e7227391361c1879fd3b2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f954b65dd5b22489f1ec3d743e8780de930a435bd3201e816ec23a0f22716a3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:725e5d61-4089-0344-ac41-11634be8a34d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90835342-6b29-d9c6-1367-b9aba3356b51",
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
  "slug": "upper-bound--8849fab269d876cd1e2c5a19",
  "source": {
    "blob": "b52f6085c03ce54ee9e7227391361c1879fd3b2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2019Q4/Variantf954b65dd5b22489f1ec3d743e8780de930a435bd3201e816ec23a0f22716a3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8849fab269d876cd1e2c5a1914710aee39b0bb694184a615852eaea8b16cb613",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2019Q4/Variantf954b65dd5b22489f1ec3d743e8780de930a435bd3201e816ec23a0f22716a3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90835342-6b29-d9c6-1367-b9aba3356b51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upper_bound {k n : ℕ} (hk : k > 0)
    (h : (k ! : ℤ) = ∏ i in range n, ((2:ℤ) ^ n - (2:ℤ) ^ i)) : n < 6 := by
  have h2 : ∑ i in range n, i < k
  · suffices multiplicity 2 (k ! : ℤ) = ↑(∑ i in range n, i : ℕ) by
      rw [← PartENat.coe_lt_coe, ← this]; change multiplicity ((2 : ℕ) : ℤ) _ < _
      simp_rw [Int.coe_nat_multiplicity, multiplicity_two_factorial_lt hk.lt.ne.symm]
    rw [h, multiplicity.Finset.prod Int.prime_two, Nat.cast_sum]
    apply sum_congr rfl; intro i hi
    rw [multiplicity_sub_of_gt, multiplicity_pow_self_of_prime Int.prime_two]
    rwa [multiplicity_pow_self_of_prime Int.prime_two, multiplicity_pow_self_of_prime Int.prime_two,
      PartENat.coe_lt_coe, ← mem_range]
  rw [← not_le]; intro hn
  apply _root_.ne_of_gt _ h
  calc ∏ i in range n, ((2:ℤ) ^ n - (2:ℤ) ^ i) ≤ ∏ __ in range n, (2:ℤ) ^ n := ?_
    _ < ↑ k ! := ?_
  · gcongr
    · intro i hi
      simp only [mem_range] at hi
      have : (2:ℤ) ^ i ≤ (2:ℤ) ^ n := by gcongr; norm_num
      linarith
    · apply sub_le_self
      positivity
  norm_cast
  calc ∏ __ in range n, 2 ^ n = 2 ^ (n * n) := by rw [prod_const, card_range, ← pow_mul]
    _ < (∑ i in range n, i)! := ?_
    _ ≤ k ! := by gcongr
  clear h h2
  induction' n, hn using Nat.le_induction with n' hn' IH
  · norm_num
  let A := ∑ i in range n', i
  have le_sum : ∑ i in range 6, i ≤ A
  · apply sum_le_sum_of_subset
    simpa using hn'
  calc 2 ^ ((n' + 1) * (n' + 1))
      ≤ 2 ^ (n' * n' + 4 * n') := by gcongr <;> linarith
    _ = 2 ^ (n' * n') * (2 ^ 4) ^ n' := by rw [← pow_mul, ← pow_add]
    _ < A ! * (2 ^ 4) ^ n' := by gcongr
    _ = A ! * (15 + 1) ^ n' := rfl
    _ ≤ A ! * (A + 1) ^ n' := by gcongr; exact le_sum
    _ ≤ (A + n')! := factorial_mul_pow_le_factorial
    _ = (∑ i in range (n' + 1), i)! := by rw [sum_range_succ]
#align imo2019_q4.upper_bound Imo2019Q4.upper_bound

end Imo2019Q4

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2019Q4/Variantf954b65dd5b22489f1ec3d743e8780de930a435bd3201e816ec23a0f22716a3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2019Q4/Variantf954b65dd5b22489f1ec3d743e8780de930a435bd3201e816ec23a0f22716a3c.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b52f6085c03ce54ee9e7227391361c1879fd3b2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
