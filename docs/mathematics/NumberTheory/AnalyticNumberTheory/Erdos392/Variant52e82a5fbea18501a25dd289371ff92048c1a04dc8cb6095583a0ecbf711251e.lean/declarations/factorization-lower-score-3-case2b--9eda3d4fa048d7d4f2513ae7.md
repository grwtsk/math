# Factorization.lower_score_3_case2b

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93182aba-3d79-4cd4-4534-d8543bc0ec79",
  "kind": "lemma",
  "lexical_name": "Factorization.lower_score_3_case2b",
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
  "slug": "factorization-lower-score-3-case2b--9eda3d4fa048d7d4f2513ae7",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 830,
    "line": 807,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9eda3d4fa048d7d4f2513ae7d790bd1ff688cd9a03bd5db5642b5a4280a37211",
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

Occurrence: `result:93182aba-3d79-4cd4-4534-d8543bc0ec79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 807–830.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Factorization.lower_score_3_case2b {n : ℕ} (f : Factorization n) (L : ℕ)
    (h_surplus : ∀ p, f.balance p ≤ 0)
    (hf : ∃ p ∈ (n + 1).primesBelow, p ≤ L ∧ f.balance p < 0)
    (h_prod : n < (deficitMultiset f L).prod)
    (hL_le_n : L ≤ n) :
    ∃ f' : Factorization n,
      f'.total_imbalance < f.total_imbalance ∧ f'.score L ≤ f.score L := by
  obtain ⟨p₀, hp₀_mem, hp₀_le, hp₀_bal⟩ := hf
  have hp₀ := prime_of_mem_primesBelow hp₀_mem
  obtain ⟨M, hM_sub, hM_lb, hM_ub⟩ := exists_submultiset_prod_between (deficitMultiset f L)
    (hp₀.pos.trans_le hp₀_le) ((hp₀.pos.trans_le hp₀_le).trans_le hL_le_n)
      (fun p hp ↦ (mem_deficitMultiset f L p hp).2) h_prod
  refine ⟨addFactor f M.prod hM_ub (pos_of_ne_zero fun h ↦ by grind), ?_, ?_⟩
  · have h_imb := addFactor_submultiset_total_imbalance f L h_surplus M hM_sub
      M.prod hM_ub (pos_of_ne_zero fun h ↦ by grind) rfl
    refine h_imb ▸ sub_lt ?_ <| card_pos.mpr (by grind)
    exact pos_of_ne_zero fun h ↦
      hp₀_bal.ne <| by
        have := sum_eq_zero_iff.mp h _ hp₀_mem
        grind
  · exact score_le_of_add_submultiset f L M hM_sub M.prod hM_ub (by grind) rfl hM_lb
      (card_pos.mpr (by grind)) <| hp₀.two_le.trans hp₀_le

/-- The clean case of `lower_score_3`, combining the three subcases. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L807).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
