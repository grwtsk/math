# self_sub_one_pow_dvd_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8be8a8878fde7a76a71914205a7f72599f39227a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48f665d54557a7822a9a6146667b4bbe409171f8db2cd66b1e2b657535b61fd9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34775b29-66e7-0917-222e-cb1446a2cf94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bfecf3e3-d803-0317-5c1c-b9524afef529",
  "kind": "lemma",
  "lexical_name": "self_sub_one_pow_dvd_order",
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
  "slug": "self-sub-one-pow-dvd-order--22292b84b4cd496aec7bbb97",
  "source": {
    "blob": "8be8a8878fde7a76a71914205a7f72599f39227a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 48,
    "path": "GRWTSK/Algebra/Lemmas/Variant48f665d54557a7822a9a6146667b4bbe409171f8db2cd66b1e2b657535b61fd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22292b84b4cd496aec7bbb97d60b63f1ba04c400e58bb2e93ae33833eedb488d",
  "verification": {
    "reference": "docs/verification/Algebra/Lemmas/Variant48f665d54557a7822a9a6146667b4bbe409171f8db2cd66b1e2b657535b61fd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfecf3e3-d803-0317-5c1c-b9524afef529`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma self_sub_one_pow_dvd_order {k n : ℕ} (hn : k < n) {μ : R} (hμ : IsPrimitiveRoot μ n) :
    ∃ z ∈ adjoin ℤ {μ}, n = z * (μ - 1) ^ k := by
  let n' + 1 := n
  obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' (Nat.le_of_lt_succ hn)
  have hdvd k : ∃ z ∈ adjoin ℤ {μ}, μ ^ k - 1 = z * (μ - 1) := by
    refine ⟨(Finset.range k).sum (μ ^ ·), ?_, (geom_sum_mul μ k).symm⟩
    exact Subalgebra.sum_mem _ fun m _ ↦ Subalgebra.pow_mem _ (self_mem_adjoin_singleton _ μ) _
  let Z k := Classical.choose <| hdvd k
  have Zdef k : Z k ∈ adjoin ℤ {μ} ∧ μ ^ k - 1 = Z k * (μ - 1) :=
    Classical.choose_spec <| hdvd k
  refine ⟨(-1) ^ (m + k) * (∏ j ∈ range k, Z (j + 1)) * ∏ j ∈ Ico k (m + k), (μ ^ (j + 1) - 1),
    ?_, ?_⟩
  · apply Subalgebra.mul_mem
    · apply Subalgebra.mul_mem
      · exact Subalgebra.pow_mem _ (Subalgebra.neg_mem _ <| Subalgebra.one_mem _) _
      · exact Subalgebra.prod_mem _ fun _ _ ↦ (Zdef _).1
    · refine Subalgebra.prod_mem _ fun _ _ ↦ ?_
      apply Subalgebra.sub_mem
      · exact Subalgebra.pow_mem _ (self_mem_adjoin_singleton ℤ μ) _
      · exact Subalgebra.one_mem _
  · push_cast
    have := Nat.cast_add (R := R) m k ▸ hμ.prod_pow_sub_one_eq_order
    rw [← this, mul_assoc, mul_assoc]
    congr 1
    conv => enter [2, 2, 2]; rw [← card_range k]
    rw [← prod_range_mul_prod_Ico _ (Nat.le_add_left k m), mul_comm _ (_ ^ #_), ← mul_assoc,
      prod_mul_pow_card]
    conv => enter [2, 1, 2, j]; rw [← (Zdef _).2]

end IsPrimitiveRoot
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lemmas/Variant48f665d54557a7822a9a6146667b4bbe409171f8db2cd66b1e2b657535b61fd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lemmas/Variant48f665d54557a7822a9a6146667b4bbe409171f8db2cd66b1e2b657535b61fd9.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8be8a8878fde7a76a71914205a7f72599f39227a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
