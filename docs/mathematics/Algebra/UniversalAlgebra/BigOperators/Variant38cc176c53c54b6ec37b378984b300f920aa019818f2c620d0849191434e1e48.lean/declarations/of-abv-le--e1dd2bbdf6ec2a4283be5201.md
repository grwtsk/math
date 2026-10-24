# of_abv_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a86e8c54f6deeb8c3e43fb8d058cf88e43a318ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38cc176c53c54b6ec37b378984b300f920aa019818f2c620d0849191434e1e48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a78ab63f-d573-1dd4-59b9-f9418849cb2c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:628123e8-e83a-16d2-4e47-56f1768ff9a5",
  "kind": "lemma",
  "lexical_name": "of_abv_le",
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
  "slug": "of-abv-le--e1dd2bbdf6ec2a4283be5201",
  "source": {
    "blob": "a86e8c54f6deeb8c3e43fb8d058cf88e43a318ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 23,
    "path": "GRWTSK/Algebra/UniversalAlgebra/BigOperators/Variant38cc176c53c54b6ec37b378984b300f920aa019818f2c620d0849191434e1e48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1dd2bbdf6ec2a4283be52012180967087acd21e3ddc082f2d265b920da215ce",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/BigOperators/Variant38cc176c53c54b6ec37b378984b300f920aa019818f2c620d0849191434e1e48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:628123e8-e83a-16d2-4e47-56f1768ff9a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_abv_le (n : ℕ) (hm : ∀ m, n ≤ m → abv (f m) ≤ a m) :
    IsCauSeq abs (fun n ↦ ∑ i ∈ range n, a i) → IsCauSeq abv fun n ↦ ∑ i ∈ range n, f i := by
  intro hg ε ε0
  obtain ⟨i, hi⟩ := hg (ε / 2) (div_pos ε0 (by norm_num))
  exists max n i
  intro j ji
  have hi₁ := hi j (le_trans (le_max_right n i) ji)
  have hi₂ := hi (max n i) (le_max_right n i)
  have sub_le :=
    abs_sub_le (∑ k ∈ range j, a k) (∑ k ∈ range i, a k) (∑ k ∈ range (max n i), a k)
  have := add_lt_add hi₁ hi₂
  rw [abs_sub_comm (∑ k ∈ range (max n i), a k), add_halves ε] at this
  refine lt_of_le_of_lt (le_trans (le_trans ?_ (le_abs_self _)) sub_le) this
  generalize hk : j - max n i = k
  clear this hi₂ hi₁ hi ε0 ε hg sub_le
  rw [tsub_eq_iff_eq_add_of_le ji] at hk
  rw [hk]
  dsimp only
  clear hk ji j
  induction' k with k' hi
  · simp [abv_zero abv]
  simp only [Nat.succ_add, Nat.succ_eq_add_one, Finset.sum_range_succ_comm]
  simp only [add_assoc, sub_eq_add_neg]
  refine le_trans (abv_add _ _ _) ?_
  simp only [sub_eq_add_neg] at hi
  exact add_le_add (hm _ (le_add_of_nonneg_of_le (Nat.zero_le _) (le_max_left _ _))) hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/BigOperators/Variant38cc176c53c54b6ec37b378984b300f920aa019818f2c620d0849191434e1e48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/BigOperators/Variant38cc176c53c54b6ec37b378984b300f920aa019818f2c620d0849191434e1e48.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a86e8c54f6deeb8c3e43fb8d058cf88e43a318ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
