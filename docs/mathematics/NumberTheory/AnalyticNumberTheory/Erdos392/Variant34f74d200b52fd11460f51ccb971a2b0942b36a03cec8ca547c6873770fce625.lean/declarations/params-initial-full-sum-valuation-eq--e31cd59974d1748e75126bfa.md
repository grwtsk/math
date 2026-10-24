# Params.initial_full_sum_valuation_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1603,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16977b6a-4235-fb2f-a51c-78f53ba4d996",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91cd022d-dd91-6387-ef42-60014d13c718",
  "kind": "lemma",
  "lexical_name": "Params.initial_full_sum_valuation_eq",
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
  "slug": "params-initial-full-sum-valuation-eq--e31cd59974d1748e75126bfa",
  "source": {
    "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1625,
    "line": 1603,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e31cd59974d1748e75126bfa7de17126777c5e71d3f9f4dee6416f0479b29f92",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91cd022d-dd91-6387-ef42-60014d13c718`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1603–1625.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Params.initial_full_sum_valuation_eq (P : Params) (p : ℕ) (hp : p.Prime) :
    ∑ m ∈ Finset.Ico (P.n - P.n / P.M) P.n, (m.factorization p : ℤ) =
    ∑ k ∈ Finset.Ico 1 (Nat.log p P.n + 1),
      ((filter (p ^ k ∣ ·) (Finset.Ico (P.n - P.n / P.M) P.n)).card : ℤ) := by
  by_cases hPn : P.n = 0
  · simp_all
  · have h_zero : ∀ k > log p P.n,
        (filter (p ^ k ∣ ·) (Finset.Ico (P.n - P.n / P.M) P.n)).card = 0 :=
      fun k hk ↦ card_eq_zero.mpr (filter_eq_empty_iff.mpr fun x hx hdiv ↦ by
        have hx_pos : 0 < x := pos_of_ne_zero fun h ↦ by
          rw [Finset.mem_Ico, h] at hx
          exact not_lt.mpr hx.1 (Nat.sub_pos_of_lt (div_lt_self hx.2 P.hM))
        exact not_lt.mpr (le_of_dvd hx_pos hdiv) <| (Finset.mem_Ico.mp hx).2.trans_le
          (lt_pow_of_log_lt hp.one_lt hk).le)
    rw_mod_cast [sum_factorization_eq_sum_multiples]
    · rw [← sum_subset (Ico_subset_Ico_right (succ_le_of_lt
        (log_lt_of_lt_pow hPn (show P.n < p ^ P.n from Nat.recOn P.n (by norm_num)
          fun n ihn ↦ by rw [_root_.pow_succ']; nlinarith [hp.one_lt, ihn]))))]
      aesop
    · assumption
    · exact Nat.sub_pos_of_lt (div_lt_self (pos_of_ne_zero hPn) P.hM)

/-- The balance of `initial_full` is at least `-M · log n / log 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean#L1603).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f920001904e0a69cdcc5a1042bc956cb81fd55a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
