# reduce_mem_reps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "846b9f3b06d9e8ca42d90022eb1b906431451de3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7994883f-62b6-29b2-dfb8-6c7d0e4ae8fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7b49ddc-2b88-395e-9796-6453ca712fa0",
  "kind": "lemma",
  "lexical_name": "reduce_mem_reps",
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
  "slug": "reduce-mem-reps--e8844c8ba0e25f2ec30b2dcf",
  "source": {
    "blob": "846b9f3b06d9e8ca42d90022eb1b906431451de3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 172,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8844c8ba0e25f2ec30b2dcf389dd8ee7a08a3653abbee72eb8cb561d6f5d1ab",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7b49ddc-2b88-395e-9796-6453ca712fa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma reduce_mem_reps {m : ℤ} (hm : m ≠ 0) (A : Δ m) : reduce A ∈ reps m := by
  induction A using reduce_rec with
  | step A h1 h2 => simpa only [reduce_reduceStep h1] using h2
  | base A h =>
    have hd := A_d_ne_zero h hm
    by_cases h1 : 0 < A.1 0 0
    · simp only [reduce_of_pos h h1]
      have h2 := Int.emod_def (A.1 0 1) (A.1 1 1)
      have h4 := Int.ediv_mul_le (A.1 0 1) hd
      set n : ℤ := A.1 0 1 / A.1 1 1
      have h3 := Int.emod_lt_abs (A.1 0 1) hd
      rw [← abs_eq_self.mpr <| Int.emod_nonneg _ hd] at h3
      simp only [smul_def, Fin.isValue, coe_T_zpow]
      suffices A.1 1 0 = 0 ∧ n * A.1 1 0 < A.1 0 0 ∧
          n * A.1 1 1 ≤ A.1 0 1 ∧ |A.1 0 1 + -(n * A.1 1 1)| < |A.1 1 1| by
        simpa only [reps, Fin.isValue, cons_mul, Nat.succ_eq_add_one, Nat.reduceAdd, empty_mul,
          Equiv.symm_apply_apply, Set.mem_setOf_eq, of_apply, cons_val', vecMul, cons_dotProduct,
          vecHead, one_mul, vecTail, Function.comp_apply, Fin.succ_zero_eq_one, neg_mul,
          dotProduct_empty, add_zero, zero_mul, zero_add, empty_val', cons_val_fin_one,
          cons_val_one, cons_val_zero, lt_add_neg_iff_add_lt, le_add_neg_iff_add_le]
      simp_all only [h, mul_comm n, zero_mul, ← sub_eq_add_neg, ← h2,
        Fin.isValue, h1, h3, and_true, true_and]
    · simp only [reps, Fin.isValue, reduce_of_not_pos h h1, Int.ediv_neg, neg_neg, smul_def, ←
        mul_assoc, S_mul_S_eq, neg_mul, one_mul, coe_T_zpow, mul_neg, cons_mul, Nat.succ_eq_add_one,
        Nat.reduceAdd, empty_mul, Equiv.symm_apply_apply, neg_of, neg_cons, neg_empty,
        Set.mem_setOf_eq, of_apply, cons_val', Pi.neg_apply, vecMul, cons_dotProduct, vecHead,
        vecTail, Function.comp_apply, Fin.succ_zero_eq_one, h, mul_zero, dotProduct_empty, add_zero,
        zero_mul, neg_zero, empty_val', cons_val_fin_one, cons_val_one, cons_val_zero, lt_neg,
        neg_add_rev, zero_add, le_add_neg_iff_add_le, ← le_neg, abs_neg, true_and]
      refine ⟨?_, Int.ediv_mul_le _ hd, ?_⟩
      · simp only [Int.lt_iff_le_and_ne]
        exact ⟨not_lt.mp h1, A_a_ne_zero h hm⟩
      · rw [mul_comm, add_comm, ← Int.sub_eq_add_neg, ← Int.emod_def,
         abs_eq_self.mpr <| Int.emod_nonneg _ hd]
        exact Int.emod_lt_abs _ hd

variable {C : Δ m → Prop}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `846b9f3b06d9e8ca42d90022eb1b906431451de3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
