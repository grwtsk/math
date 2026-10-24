# first_vote_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "191f8eb2e7a15edeb01132ced3fb80dc448d2187",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82781e11-db31-06e4-1559-9dbd27c6ad97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9ef2d3a-496b-e3ff-4831-c57d1728160c",
  "kind": "theorem",
  "lexical_name": "first_vote_pos",
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
  "slug": "first-vote-pos--32e370bef5734162c09be5f5",
  "source": {
    "blob": "191f8eb2e7a15edeb01132ced3fb80dc448d2187",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 216,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32e370bef5734162c09be5f5d8c3fd583ee7c76b67c035f54ccfb24a4104ff2a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9ef2d3a-496b-e3ff-4831-c57d1728160c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_vote_pos :
    ∀ p q,
      0 < p + q → condCount (countedSequence p q : Set (List ℤ)) {l | l.headI = 1} = p / (p + q)
  | p + 1, 0, _ => by
    rw [counted_right_zero, condCount_singleton]
    simp [ENNReal.div_self _ _]
  | 0, q + 1, _ => by
    rw [counted_left_zero, condCount_singleton]
    simp
  | p + 1, q + 1, _ => by
    simp_rw [counted_succ_succ]
    rw [← condCount_disjoint_union ((countedSequence_finite _ _).image _)
        ((countedSequence_finite _ _).image _) (disjoint_bits _ _),
      ← counted_succ_succ,
      condCount_eq_one_of ((countedSequence_finite p (q + 1)).image _)
        (nonempty_image_iff.2 (countedSequence_nonempty _ _))]
    · have : List.cons (-1) '' countedSequence (p + 1) q ∩ {l : List ℤ | l.headI = 1} = ∅ := by
        ext
        simp only [mem_inter_iff, mem_image, mem_setOf_eq, mem_empty_iff_false, iff_false_iff,
          not_and, forall_exists_index, and_imp]
        rintro l _ rfl
        norm_num
      have hint :
        countedSequence (p + 1) (q + 1) ∩ List.cons 1 '' countedSequence p (q + 1) =
          List.cons 1 '' countedSequence p (q + 1) := by
        rw [inter_eq_right_iff_subset, counted_succ_succ]
        exact subset_union_left _ _
      rw [(condCount_eq_zero_iff <| (countedSequence_finite _ _).image _).2 this, condCount,
        cond_apply _ list_int_measurableSet, hint, count_injective_image List.cons_injective,
        count_countedSequence, count_countedSequence, one_mul, zero_mul, add_zero,
        Nat.cast_add, Nat.cast_one]
      · rw [mul_comm, ← div_eq_mul_inv, ENNReal.div_eq_div_iff]
        · norm_cast
          rw [mul_comm _ (p + 1), ← Nat.succ_eq_add_one p, Nat.succ_add, Nat.succ_mul_choose_eq,
            mul_comm]
        all_goals simp [(Nat.choose_pos <| (le_add_iff_nonneg_right _).2 zero_le').ne.symm]
    · simp
#align ballot.first_vote_pos Ballot.first_vote_pos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `191f8eb2e7a15edeb01132ced3fb80dc448d2187` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
