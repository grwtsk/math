# prod_slash_sum_weights

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c085f78c1b970786e5f3f922ec4673bcf35a026",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a622a92ba04e193ca4056b7a16c02077df1a44cc7192552454443163ea29ed4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b9592b4-42ef-6f9b-212b-19593aa891b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93b28808-4563-6084-234f-b639ea20467e",
  "kind": "lemma",
  "lexical_name": "prod_slash_sum_weights",
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
  "slug": "prod-slash-sum-weights--c640c9be212ee4d8004d50e9",
  "source": {
    "blob": "3c085f78c1b970786e5f3f922ec4673bcf35a026",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 223,
    "path": "GRWTSK/Algebra/LinearAlgebra/SlashActions/Variant3a622a92ba04e193ca4056b7a16c02077df1a44cc7192552454443163ea29ed4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c640c9be212ee4d8004d50e98fa0527c50aaa03fe558b3f75a82a65a855f89d7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SlashActions/Variant3a622a92ba04e193ca4056b7a16c02077df1a44cc7192552454443163ea29ed4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93b28808-4563-6084-234f-b639ea20467e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_slash_sum_weights {ι : Type*} {k : ι → ℤ} {g : GL (Fin 2) ℝ} {f : ι → ℍ → ℂ}
    {s : Finset ι} :
    (∏ i ∈ s, f i) ∣[∑ i ∈ s, k i] g = |g.det.val| ^ (#s - 1 : ℤ) • (∏ i ∈ s, f i ∣[k i] g) := by
  classical
  induction s using Finset.induction_on with
  | empty =>
    simp only [sum_empty, prod_empty, Matrix.GeneralLinearGroup.val_det_apply, card_empty,
      CharP.cast_eq_zero, zero_sub, Int.reduceNeg, zpow_neg, zpow_one]
    ext _
    simp [slash_apply]
  | insert i t hi IH =>
    rcases t.eq_empty_or_nonempty with rfl | ht
    · simp
    simp only [prod_insert hi, card_insert_of_notMem hi, Nat.cast_succ, add_sub_cancel_right,
    show ∑ i ∈ insert i t, k i = (k i) + ∑ i ∈ t, k i by grind, mul_slash, IH, mul_smul_comm,
      ← mul_smul]
    congr 1
    nth_rw 2 [show (#t : ℤ) = 1 + (#t - 1) by grind]
    rw [zpow_add', zpow_one]
    left
    exact abs_ne_zero.mpr (Matrix.GeneralLinearGroup.det_ne_zero g)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SlashActions/Variant3a622a92ba04e193ca4056b7a16c02077df1a44cc7192552454443163ea29ed4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SlashActions/Variant3a622a92ba04e193ca4056b7a16c02077df1a44cc7192552454443163ea29ed4.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c085f78c1b970786e5f3f922ec4673bcf35a026` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
