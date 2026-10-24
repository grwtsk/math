# sum_lt_half_of_not_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5713e9608429c6f6290d002cc303b318b2393f84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/180c301d00cf3e99a94df0f08e99025518de9ecb6fe533fe5e5a8524c9c6b388.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:56f65917-8ce4-8bf8-aeca-6fb90d8aed7c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a80c5f4-0ec1-56f5-7527-6772426cdb4b",
  "kind": "theorem",
  "lexical_name": "sum_lt_half_of_not_tendsto",
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
  "slug": "sum-lt-half-of-not-tendsto--3bf81cb23bf47adf00bcaf70",
  "source": {
    "blob": "5713e9608429c6f6290d002cc303b318b2393f84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 80,
    "path": "GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant180c301d00cf3e99a94df0f08e99025518de9ecb6fe533fe5e5a8524c9c6b388.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bf81cb23bf47adf00bcaf7049303f0c04e46ce35ce4d26989b36d4af9a307eb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant180c301d00cf3e99a94df0f08e99025518de9ecb6fe533fe5e5a8524c9c6b388.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a80c5f4-0ec1-56f5-7527-6772426cdb4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_lt_half_of_not_tendsto
    (h : ¬Tendsto (fun n => ∑ p in Finset.filter (fun p => Nat.Prime p) (range n), 1 / (p : ℝ))
      atTop atTop) :
    ∃ k, ∀ x, ∑ p in P x k, 1 / (p : ℝ) < 1 / 2 := by
  have h0 :
    (fun n => ∑ p in Finset.filter (fun p => Nat.Prime p) (range n), 1 / (p : ℝ)) = fun n =>
      ∑ p in range n, ite (Nat.Prime p) (1 / (p : ℝ)) 0 := by
    simp only [sum_filter]
  have hf : ∀ n : ℕ, 0 ≤ ite (Nat.Prime n) (1 / (n : ℝ)) 0 := by
    intro n; split_ifs
    · simp only [one_div, inv_nonneg, Nat.cast_nonneg]
    · exact le_rfl
  rw [h0, ← summable_iff_not_tendsto_nat_atTop_of_nonneg hf, summable_iff_vanishing] at h
  obtain ⟨s, h⟩ := h (Set.Ioo (-1) (1 / 2)) (isOpen_Ioo.mem_nhds (by norm_num))
  obtain ⟨k, hk⟩ := exists_nat_subset_range s
  use k
  intro x
  rw [P, ← filter_filter, sum_filter]
  refine' (h _ _).2
  rw [disjoint_iff_ne]
  simp only [mem_filter]
  intro a ha b hb
  exact ((mem_range.mp (hk hb)).trans ha.2).ne'
#align theorems_100.sum_lt_half_of_not_tendsto Theorems100.sum_lt_half_of_not_tendsto

/--
Removing from {0, ..., x - 1} those elements `e` for which `e + 1` is a product of powers of primes
smaller than or equal to `k` leaves those `e` for which there is a prime `p > k` that divides
`e + 1`, or the union over those primes `p > k` of the sets of `e`s for which `e + 1` is a multiple
of `p`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant180c301d00cf3e99a94df0f08e99025518de9ecb6fe533fe5e5a8524c9c6b388.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant180c301d00cf3e99a94df0f08e99025518de9ecb6fe533fe5e5a8524c9c6b388.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5713e9608429c6f6290d002cc303b318b2393f84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
