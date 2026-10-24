# Params.initial.smooth_of_dvd_small_prime

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
      "line": 1429,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ebb04969-7dbb-5934-5f89-7ef28e74c2dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f792680b-88c7-fe41-b4d2-09ade51001e8",
  "kind": "lemma",
  "lexical_name": "Params.initial.smooth_of_dvd_small_prime",
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
  "slug": "params-initial-smooth-of-dvd-small-prime--46a20379f459c6d10da44482",
  "source": {
    "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1455,
    "line": 1429,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46a20379f459c6d10da44482a9517a562166d704c624aa3b9f0a175d08031709",
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

Occurrence: `result:f792680b-88c7-fe41-b4d2-09ade51001e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1429–1455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Params.initial.smooth_of_dvd_small_prime (P : Params) {p m : ℕ} (hp : p ≤ Real.sqrt P.n)
    (hpL : p > P.L) (hm : m ∈ Finset.Ico (P.n - P.n / P.M) P.n) (hpm : p ∣ m) :
    m ∈ (P.n / P.L).smoothNumbers := by
  by_contra h_not_smooth
  have hm_ne_zero : m ≠ 0 := by
    intro h
    rw [Finset.mem_Ico, h, nonpos_iff_eq_zero, Nat.sub_eq_zero_iff_le] at hm
    nlinarith [div_mul_le_self P.n P.M, P.hM, P.hL_pos, P.hL, P.hL']
  obtain ⟨q, hq_prime, hq_div, hq_ge⟩ : ∃ q, q.Prime ∧ q ∣ m ∧ q ≥ P.n / P.L := by
    simp only [smoothNumbers] at h_not_smooth
    simp_all
  have hp_div_mq : p ∣ m / q := by
    refine dvd_div_of_mul_dvd <| Coprime.mul_dvd_of_dvd_of_dvd
      (hq_prime.coprime_iff_not_dvd.mpr fun h ↦ ?_) hq_div hpm
    rw [le_sqrt (cast_nonneg _) (cast_nonneg _)] at hp
    norm_cast at hp
    nlinarith [le_of_dvd (lt_trans P.hL_pos hpL) h, div_add_mod P.n P.L, mod_lt P.n P.hL_pos]
  have hm_gt_n : P.n < m := by
    rw [(Nat.mul_div_cancel' hq_div).symm]
    refine lt_of_lt_of_le ?_ (Nat.mul_le_mul hq_ge <| lt_of_lt_of_le hpL <| le_of_dvd (div_pos
      (le_of_dvd (pos_of_ne_zero hm_ne_zero) hq_div) hq_prime.pos) hp_div_mq)
    nlinarith only [div_add_mod P.n P.L, mod_lt P.n (pos_of_ne_zero
      (by linarith [P.hL_pos] : P.L ≠ 0)), P.hL_pos, P.hL]
  linarith [Finset.mem_Ico.mp hm]

/-- For a small prime `p`, the sum of `p`-adic valuations in the initial factorization equals `M`
times the sum over `k` of the count of multiples of `p^k` in the interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean#L1429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f920001904e0a69cdcc5a1042bc956cb81fd55a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
