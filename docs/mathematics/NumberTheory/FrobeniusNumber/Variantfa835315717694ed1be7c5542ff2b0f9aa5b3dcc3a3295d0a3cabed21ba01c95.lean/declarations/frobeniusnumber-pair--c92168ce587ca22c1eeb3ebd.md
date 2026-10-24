# frobeniusNumber_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "333e457154c528d910040538b3b8327e2cf2cd5d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fa835315717694ed1be7c5542ff2b0f9aa5b3dcc3a3295d0a3cabed21ba01c95.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5a986ce-a89d-0bd8-f365-925cfe3c8074",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92f37d97-08a0-65dc-dbd4-05b7446f9a55",
  "kind": "theorem",
  "lexical_name": "frobeniusNumber_pair",
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
  "slug": "frobeniusnumber-pair--c92168ce587ca22c1eeb3ebd",
  "source": {
    "blob": "333e457154c528d910040538b3b8327e2cf2cd5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 56,
    "path": "GRWTSK/NumberTheory/FrobeniusNumber/Variantfa835315717694ed1be7c5542ff2b0f9aa5b3dcc3a3295d0a3cabed21ba01c95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c92168ce587ca22c1eeb3ebd30f10568f4bee36bcdb3463a3a9189e1e6d8eabc",
  "verification": {
    "reference": "docs/verification/NumberTheory/FrobeniusNumber/Variantfa835315717694ed1be7c5542ff2b0f9aa5b3dcc3a3295d0a3cabed21ba01c95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92f37d97-08a0-65dc-dbd4-05b7446f9a55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frobeniusNumber_pair (cop : coprime m n) (hm : 1 < m) (hn : 1 < n) :
    FrobeniusNumber (m * n - m - n) {m, n} := by
  simp_rw [FrobeniusNumber, AddSubmonoid.mem_closure_pair]
  have hmn : m + n ≤ m * n := add_le_mul hm hn
  constructor
  · push_neg
    intro a b h
    apply cop.mul_add_mul_ne_mul (add_one_ne_zero a) (add_one_ne_zero b)
    simp only [Nat.sub_sub, smul_eq_mul] at h
    zify [hmn] at h ⊢
    rw [← sub_eq_zero] at h ⊢
    rw [← h]
    ring
  · intro k hk
    dsimp at hk
    contrapose! hk
    let x := chineseRemainder cop 0 k
    have hx : x.val < m * n := chineseRemainder_lt_mul cop 0 k (ne_bot_of_gt hm) (ne_bot_of_gt hn)
    suffices key : x.1 ≤ k
    · obtain ⟨a, ha⟩ := modEq_zero_iff_dvd.mp x.2.1
      obtain ⟨b, hb⟩ := (modEq_iff_dvd' key).mp x.2.2
      exact ⟨a, b, by rw [mul_comm, ← ha, mul_comm, ← hb, Nat.add_sub_of_le key]⟩
    refine' ModEq.le_of_lt_add x.2.2 (lt_of_le_of_lt _ (add_lt_add_right hk n))
    rw [Nat.sub_add_cancel (le_tsub_of_add_le_left hmn)]
    exact
      ModEq.le_of_lt_add
        (x.2.1.trans (modEq_zero_iff_dvd.mpr (Nat.dvd_sub' (dvd_mul_right m n) dvd_rfl)).symm)
        (lt_of_lt_of_le hx le_tsub_add)
#align is_frobenius_number_pair frobeniusNumber_pair
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FrobeniusNumber/Variantfa835315717694ed1be7c5542ff2b0f9aa5b3dcc3a3295d0a3cabed21ba01c95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FrobeniusNumber/Variantfa835315717694ed1be7c5542ff2b0f9aa5b3dcc3a3295d0a3cabed21ba01c95.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `333e457154c528d910040538b3b8327e2cf2cd5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
