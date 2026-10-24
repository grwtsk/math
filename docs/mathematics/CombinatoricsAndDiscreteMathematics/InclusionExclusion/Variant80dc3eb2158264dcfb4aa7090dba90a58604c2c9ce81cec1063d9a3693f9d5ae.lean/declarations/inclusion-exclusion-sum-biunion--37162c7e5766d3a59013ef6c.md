# inclusion_exclusion_sum_biUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6df3e15edbf3524eacd37698e558c152b4bab98a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80dc3eb2158264dcfb4aa7090dba90a58604c2c9ce81cec1063d9a3693f9d5ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39f137a0-2f28-cddd-ed19-3ed9b61c0324",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1319cfaf-5f07-5603-08eb-55937cdf7e61",
  "kind": "theorem",
  "lexical_name": "inclusion_exclusion_sum_biUnion",
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
  "slug": "inclusion-exclusion-sum-biunion--37162c7e5766d3a59013ef6c",
  "source": {
    "blob": "6df3e15edbf3524eacd37698e558c152b4bab98a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 61,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant80dc3eb2158264dcfb4aa7090dba90a58604c2c9ce81cec1063d9a3693f9d5ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37162c7e5766d3a59013ef6cfe8a9903104d102bbd25cf82c8bd50be64b9192d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant80dc3eb2158264dcfb4aa7090dba90a58604c2c9ce81cec1063d9a3693f9d5ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1319cfaf-5f07-5603-08eb-55937cdf7e61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inclusion_exclusion_sum_biUnion (s : Finset ι) (S : ι → Finset α) (f : α → G) :
    ∑ a ∈ s.biUnion S, f a = ∑ t : s.powerset.filter (·.Nonempty),
      (-1) ^ (#t.1 + 1) • ∑ a ∈ t.1.inf' (mem_filter.1 t.2).2 S, f a := by
  classical
  rw [← sub_eq_zero]
  calc
    ∑ a ∈ s.biUnion S, f a - ∑ t : s.powerset.filter (·.Nonempty),
      (-1) ^ (#t.1 + 1) • ∑ a ∈ t.1.inf' (mem_filter.1 t.2).2 S, f a
      = ∑ t : s.powerset.filter (·.Nonempty),
          (-1) ^ #t.1 • ∑ a ∈ t.1.inf' (mem_filter.1 t.2).2 S, f a +
          ∑ t ∈ s.powerset.filter (¬ ·.Nonempty), (-1) ^ #t • ∑ a ∈ s.biUnion S, f a := by
      simp [sub_eq_neg_add, ← sum_neg_distrib, filter_eq', pow_succ]
    _ = ∑ t ∈ s.powerset, (-1) ^ #t •
          if ht : t.Nonempty then ∑ a ∈ t.inf' ht S, f a else ∑ a ∈ s.biUnion S, f a := by
      rw [← sum_attach (filter ..)]; simp [sum_dite, filter_eq', sum_attach]
    _ = ∑ a ∈ s.biUnion S, (∏ i ∈ s, (1 - Set.indicator (S i) 1 a : ℤ)) • f a := by
      simp only [Int.reduceNeg, mem_coe, prod_sub, sum_comm (s := s.biUnion S), sum_smul, mul_assoc]
      congr! with t
      split_ifs with ht
      · obtain ⟨i, hi⟩ := ht
        simp only [prod_const_one, mul_one, prod_indicator_apply]
        simp only [smul_sum, Set.indicator, Set.mem_iInter, mem_coe, Pi.one_apply, mul_ite, mul_one,
          mul_zero, ite_smul, zero_smul, sum_ite, not_forall, sum_const_zero, add_zero]
        congr
        aesop
      · obtain rfl := not_nonempty_iff_eq_empty.1 ht
        simp
    _ = ∑ a ∈ s.biUnion S, (∏ i ∈ s,
          (Set.indicator (s.biUnion S) 1 a - Set.indicator (S i) 1 a) : ℤ) • f a := by
      congr! with t; rw [Set.indicator_of_mem ‹_›, Pi.one_apply]
    _ = 0 := by
      obtain rfl | hs := s.eq_empty_or_nonempty <;>
        simp [-coe_biUnion, prod_indicator_biUnion_sub_indicator, *]

/-- **Inclusion-exclusion principle** for the cardinality of a union.

The cardinality of the union of the `S i` over `i ∈ s` is the alternating sum of the cardinalities
of the intersections of the `S i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant80dc3eb2158264dcfb4aa7090dba90a58604c2c9ce81cec1063d9a3693f9d5ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant80dc3eb2158264dcfb4aa7090dba90a58604c2c9ce81cec1063d9a3693f9d5ae.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6df3e15edbf3524eacd37698e558c152b4bab98a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
