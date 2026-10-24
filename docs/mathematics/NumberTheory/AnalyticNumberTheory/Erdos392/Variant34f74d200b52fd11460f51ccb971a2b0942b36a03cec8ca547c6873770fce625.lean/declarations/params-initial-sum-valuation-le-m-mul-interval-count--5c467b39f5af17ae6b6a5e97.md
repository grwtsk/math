# Params.initial.sum_valuation_le_M_mul_interval_count

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
      "line": 1124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0e9dd46-0357-c61c-18d1-ef593feba58e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5bd230a-abed-e7f6-72e2-20f01b4b5ffc",
  "kind": "lemma",
  "lexical_name": "Params.initial.sum_valuation_le_M_mul_interval_count",
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
  "slug": "params-initial-sum-valuation-le-m-mul-interval-count--5c467b39f5af17ae6b6a5e97",
  "source": {
    "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1159,
    "line": 1124,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c467b39f5af17ae6b6a5e9734f2bf37fe6078d615a5c3b48a7be8f4ed422cf0",
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

Occurrence: `result:e5bd230a-abed-e7f6-72e2-20f01b4b5ffc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1124–1159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Params.initial.sum_valuation_le_M_mul_interval_count (P : Params) {p : ℕ}
    (hp' : (p : ℝ) > Real.sqrt P.n) : (P.initial.a.map (·.factorization p)).sum ≤
      P.M * (Finset.filter (p ∣ ·) (Finset.Ico (P.n - P.n / P.M) P.n)).card := by
  set S := Multiset.join (Multiset.replicate P.M (Multiset.Ico (P.n - P.n / P.M) P.n))
  have hle : P.initial.a ≤ S := by
    unfold initial
    aesop
  have hval : ∀ m ∈ S, m.factorization p ≤ if p ∣ m then 1 else 0 := fun m hm ↦ by
    have h1 : m.factorization p ≤ 1 := by
      by_cases hm_zero : m = 0
      · simp [hm_zero]
      · have hm_lt : (m : ℝ) < p ^ 2 := by
          have : (m : ℝ) < P.n := by
            simp only [S, Multiset.mem_join, Multiset.mem_replicate] at hm
            obtain ⟨_, ⟨_, rfl⟩, hs₂⟩ := hm
            aesop
          nlinarith [sqrt_nonneg P.n, mul_self_sqrt (cast_nonneg P.n)]
        norm_cast at hm_lt
        exact le_of_not_gt fun h ↦ hm_lt.not_ge <|
          le_of_dvd (pos_of_ne_zero hm_zero) <| dvd_trans (pow_dvd_pow _ h) (ordProj_dvd _ _)
    split_ifs <;> simp_all [factorization_eq_zero_iff]
  have hsub : (P.initial.a.map (·.factorization p)).sum ≤ (S.map (·.factorization p)).sum :=
    Multiset.le_iff_exists_add.mp hle |>.elim fun k hk ↦ by simp [hk]
  calc (P.initial.a.map (·.factorization p)).sum
      _ ≤ (S.map (·.factorization p)).sum := hsub
      _ ≤ (S.map fun m ↦ if p ∣ m then 1 else 0).sum :=
          Multiset.sum_map_le_sum_map _ _ hval
      _ = P.M * (Finset.filter (p ∣ ·) (.Ico (P.n - P.n / P.M) P.n)).card := by
          simp only [S, map_join, sum_join, map_replicate, Multiset.sum_replicate, smul_eq_mul,
            Multiset.Ico, card_filter, sum_eq_multiset_sum]

@[blueprint
  "initial-factorization-medium-prime-le"
  (statement := /-- A medium prime $\sqrt{n} < p ≤ n/L$ can be in surplus by at most $M$.-/)
  (proof := /-- Routine computation using Legendre's formula.-/)
  (latexEnv := "sublemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean#L1124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f920001904e0a69cdcc5a1042bc956cb81fd55a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
