# snd_pow_of_smul_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4c0ee01d3d91aea12920afcfe1da7d915f87537",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 606,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/929cadcb45071832e99ca1e638cbb5d9befca9ecabf555a06c89b7a63abb6cc1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e11ed349-0a43-9779-d059-4a0cb9159372",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2e565db-b821-3661-5036-9d4a956df29a",
  "kind": "theorem",
  "lexical_name": "snd_pow_of_smul_comm",
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
  "slug": "snd-pow-of-smul-comm--fe67ce4be4cd06ca16c7a3c3",
  "source": {
    "blob": "b4c0ee01d3d91aea12920afcfe1da7d915f87537",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 628,
    "line": 606,
    "path": "GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variant929cadcb45071832e99ca1e638cbb5d9befca9ecabf555a06c89b7a63abb6cc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe67ce4be4cd06ca16c7a3c30d5711ac2a3ee2a909b1a3407e59e117f673ff01",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TrivSqZeroExt/Variant929cadcb45071832e99ca1e638cbb5d9befca9ecabf555a06c89b7a63abb6cc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2e565db-b821-3661-5036-9d4a956df29a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 606–628.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem snd_pow_of_smul_comm [Monoid R] [AddMonoid M] [DistribMulAction R M]
    [DistribMulAction Rᵐᵒᵖ M] [SMulCommClass R Rᵐᵒᵖ M] (x : tsze R M) (n : ℕ)
    (h : op x.fst • x.snd = x.fst • x.snd) : snd (x ^ n) = n • x.fst ^ n.pred • x.snd := by
  have : ∀ n : ℕ, op (x.fst ^ n) • x.snd = x.fst ^ n • x.snd := by
    intro n
    induction' n with n ih
    · simp
    · rw [pow_succ', MulOpposite.op_mul, mul_smul, mul_smul, ← h,
        smul_comm (_ : R) (op x.fst) x.snd, ih]
  simp_rw [snd_pow_eq_sum, this, smul_smul, ← pow_add]
  match n with
  | 0 => rw [Nat.pred_zero, pow_zero, List.range_zero, zero_smul, List.map_nil, List.sum_nil]
  | (Nat.succ n) =>
    simp_rw [Nat.pred_succ]
    refine' (List.sum_eq_card_nsmul _ (x.fst ^ n • x.snd) _).trans _
    · rintro m hm
      simp_rw [List.mem_map, List.mem_range] at hm
      obtain ⟨i, hi, rfl⟩ := hm
      rw [tsub_add_cancel_of_le (Nat.lt_succ_iff.mp hi)]
    · rw [List.length_map, List.length_range]
#align triv_sq_zero_ext.snd_pow_of_smul_comm TrivSqZeroExt.snd_pow_of_smul_comm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TrivSqZeroExt/Variant929cadcb45071832e99ca1e638cbb5d9befca9ecabf555a06c89b7a63abb6cc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variant929cadcb45071832e99ca1e638cbb5d9befca9ecabf555a06c89b7a63abb6cc1.lean#L606).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4c0ee01d3d91aea12920afcfe1da7d915f87537` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
