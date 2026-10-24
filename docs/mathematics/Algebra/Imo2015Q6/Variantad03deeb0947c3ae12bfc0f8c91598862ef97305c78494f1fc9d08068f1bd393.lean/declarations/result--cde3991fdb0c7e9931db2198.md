# result

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dff4316401e74ec63ac264015bb26a0ea6ab3211",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b9de4ca-c097-fa26-dd56-67314fe077aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca082276-498b-00f2-e546-5c6ecfbf0fca",
  "kind": "theorem",
  "lexical_name": "result",
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
  "slug": "result--cde3991fdb0c7e9931db2198",
  "source": {
    "blob": "dff4316401e74ec63ac264015bb26a0ea6ab3211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 178,
    "path": "GRWTSK/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cde3991fdb0c7e9931db219849ad820b3c1d0c9abc610d4de674eb6c6adabf85",
  "verification": {
    "reference": "docs/verification/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca082276-498b-00f2-e546-5c6ecfbf0fca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem result (ha : Condition a) :
    ∃ b > 0, ∃ N, ∀ m ≥ N, ∀ n > m, |∑ j ∈ Ico m n, (a j - b)| ≤ 1007 ^ 2 := by
  obtain ⟨b, N, hbN⟩ := exists_max_card_pool ha
  have bp := b_pos ha hbN
  use b, Int.ofNat_pos.mpr bp, N; intro m hm n hn; rw [sum_telescope ha hbN hm hn]
  calc
    _ ≤ ∑ i ∈ range (b - 1), (2014 - i : ℤ) - ∑ i ∈ range b, (i : ℤ) :=
      abs_sub_le_of_le_of_le (le_sum_pool ha hbN (hm.trans hn.le))
        (sum_pool_le ha hbN (hm.trans hn.le)) (le_sum_pool ha hbN hm) (sum_pool_le ha hbN hm)
    _ = (b - 1) * (2015 - b) := by
      nth_rw 2 [← Nat.sub_one_add_one_eq_of_pos bp]
      rw [← sum_flip, sum_range_succ, tsub_self, Nat.cast_zero, add_zero, ← sum_sub_distrib]
      have sc : ∀ x ∈ range (b - 1), (2014 - x - (b - 1 - x : ℕ)) = (2015 - b : ℤ) := fun x mx ↦ by
        rw [mem_range] at mx; omega
      rw [sum_congr rfl sc, sum_const, card_range, nsmul_eq_mul, Nat.cast_pred bp]
    _ ≤ _ := by
      rw [← mul_le_mul_left zero_lt_four, ← mul_assoc,
        show 4 * 1007 ^ 2 = ((b - 1 : ℤ) + (2015 - b)) ^ 2 by simp]
      exact four_mul_le_sq_add ..

end Imo2015Q6
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dff4316401e74ec63ac264015bb26a0ea6ab3211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
