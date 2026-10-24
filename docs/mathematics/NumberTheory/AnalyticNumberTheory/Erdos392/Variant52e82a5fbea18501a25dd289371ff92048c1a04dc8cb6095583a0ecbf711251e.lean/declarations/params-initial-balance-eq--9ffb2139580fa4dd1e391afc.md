# Params.initial_balance_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2719b76c-decb-7d7c-1943-91c2b360348e",
  "kind": "lemma",
  "lexical_name": "Params.initial_balance_eq",
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
  "slug": "params-initial-balance-eq--9ffb2139580fa4dd1e391afc",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1695,
    "line": 1667,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ffb2139580fa4dd1e391afc54dd76e5a49806c85458e5358b4bd76bee3eb65b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2719b76c-decb-7d7c-1943-91c2b360348e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1667–1695.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Params.initial_balance_eq (P : Params) (p : ℕ) :
    P.initial.balance p = (initial_full P).balance p -
      (P.M : ℤ) * ∑ m ∈ rough_set P, (m.factorization p : ℤ) := by
  unfold Factorization.balance rough_set
  simp only [initial, initial_full]
  unfold Factorization.sum
  simp only [cast_multiset_sum, Multiset.map_map, Function.comp_apply, map_join, map_replicate,
    sum_join, sum_map_val, sum_replicate, smul_eq_mul, cast_mul, cast_sum, sum_filter, ite_not]
  induction P.M with
  | zero => simp_all only [Nat.div_zero, tsub_zero, le_refl, Ico_eq_zero_of_le, replicate_zero,
    join_zero, filter_zero, Multiset.map_zero, sum_zero, zero_sub, CharP.cast_eq_zero,
    Ico_eq_empty_of_le, sum_empty, mul_zero]
  | succ M ih =>
    simp_all only [replicate_succ, join_cons, filter_add, Multiset.map_add, sum_add, cast_add,
      cast_one, add_mul, one_mul]
    rw [show (Multiset.filter (· ∈ (P.n / P.L).smoothNumbers)
        (Multiset.replicate M (Multiset.Ico (P.n - P.n / (M + 1)) P.n)).join) =
        Multiset.join (Multiset.replicate M (Multiset.filter (· ∈ (P.n / P.L).smoothNumbers)
        (Multiset.Ico (P.n - P.n / (M + 1)) P.n))) from ?_]
    · simp_all only [mul_sum, sum_ite, sum_const_zero, zero_add, sub_eq_iff_eq_add, map_join,
      map_replicate, sum_join, sum_replicate, Int.nsmul_eq_mul]
      simp only [add_comm, sub_eq_add_neg, filter_not, Finset.filter_subset, sum_sdiff_eq_sub,
        add_assoc, neg_add_rev, neg_neg, add_left_comm, add_neg_cancel, zero_add,
        add_neg_cancel_left]
      rw [← Finset.mul_sum]
      congr
    · rw [Multiset.filter_join, Multiset.map_replicate]

/-- If `m` is in the rough set, it has a prime factor `q ≥ n / L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L1667).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
