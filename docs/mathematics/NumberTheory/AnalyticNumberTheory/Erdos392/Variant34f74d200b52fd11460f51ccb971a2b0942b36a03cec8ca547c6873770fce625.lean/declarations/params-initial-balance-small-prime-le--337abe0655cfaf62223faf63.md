# Params.initial.balance_small_prime_le

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
      "line": 1363,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4351306f-9a2e-efbd-8b7f-46b4fd954f37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:177a43eb-ad09-7d01-27f8-d1bc0dc5b7f2",
  "kind": "theorem",
  "lexical_name": "Params.initial.balance_small_prime_le",
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
  "slug": "params-initial-balance-small-prime-le--337abe0655cfaf62223faf63",
  "source": {
    "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1428,
    "line": 1363,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:337abe0655cfaf62223faf637244c5b1d697618a1a1e1ba0bf4a21719dbee071",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:177a43eb-ad09-7d01-27f8-d1bc0dc5b7f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1363–1428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Params.initial.balance_small_prime_le (P : Params) {p : ℕ} :
    P.initial.balance p ≤ P.M * (Real.log P.n) / (Real.log 2) := by
  have h_sum_valuation_le_M_sum_multiples :
      (initial P).sum (fun m ↦ m.factorization p) ≤
        P.M * (∑ m ∈ Finset.Ico (P.n - P.n / P.M) P.n, m.factorization p) := by
    exact sum_valuation_le P p
  by_cases hp_prime : Nat.Prime p
  · have h_sum_multiples : ∑ m ∈ Finset.Ico (P.n - P.n / P.M) P.n, m.factorization p =
        ∑ k ∈ .Ico 1 (Nat.log p P.n + 1),
          ((Finset.Ico (P.n - P.n / P.M) P.n).filter (p ^ k ∣ ·)).card := by
      have h_sum_multiples_aux : ∀ m ∈ Finset.Ico (P.n - P.n / P.M) P.n, m.factorization p =
          ∑ k ∈ .Ico 1 (Nat.log p P.n + 1), (if p ^ k ∣ m then 1 else 0) := by
        intro m hm
        have h_factorization_eq : m.factorization p =
            ∑ k ∈ .Ico 1 (m.factorization p + 1), 1 := by simp
        rw [h_factorization_eq, ← Finset.sum_filter]
        refine sum_bij (fun k hk ↦ k) ?_ ?_ ?_ ?_ <;> norm_num
        · refine fun a ha₁ ha₂ ↦
            ⟨⟨ha₁, Nat.le_log_of_pow_le (y := P.n) hp_prime.one_lt ?_⟩, ?_⟩
          · refine le_trans (Nat.pow_le_pow_right hp_prime.pos ha₂) ?_
            refine le_trans (le_of_dvd (pos_of_ne_zero (by aesop)) (ordProj_dvd ..)) ?_
            linarith [Finset.mem_Ico.mp hm]
          · exact dvd_trans (pow_dvd_pow _ ha₂) <| ordProj_dvd ..
        · refine fun b hb₁ hb₂ hb₃ ↦ ⟨hb₁, Nat.le_of_not_gt fun hb₄ ↦
            absurd (dvd_trans (pow_dvd_pow _ hb₄) hb₃) <|
              pow_succ_factorization_not_dvd ?_ hp_prime⟩
          linarith [Finset.mem_Ico.mp hm, Nat.sub_pos_of_lt (show P.n / P.M < P.n from
            div_lt_self (pos_of_ne_zero (by grind)) (by linarith [P.hM]))]
      rw [sum_congr rfl h_sum_multiples_aux, sum_comm]; simp_all
    have h_factorial_factorization : (P.n.factorial.factorization p : ℤ) =
        ∑ k ∈ Ico 1 (log p P.n + 1), (P.n / p ^ k : ℤ) := by
      rw [factorization_def]
      · have := Fact.mk hp_prime
        rw [padicValNat_factorial] <;> aesop
      · assumption
    have h_balance_bound : (P.initial.balance p : ℤ) ≤ ∑ k ∈ .Ico 1 (Nat.log p P.n + 1),
        (P.M * ((Finset.Ico (P.n - P.n / P.M) P.n).filter (p ^ k ∣ ·)).card -
          (P.n / p ^ k : ℤ)) := by
      simp_all only [Factorization.balance, sum_sub_distrib, ← mul_sum ..,
        tsub_le_iff_right, sub_add_cancel]
      exact_mod_cast h_sum_valuation_le_M_sum_multiples
    have h_term_bound : ∀ k ∈ Finset.Ico 1 (Nat.log p P.n + 1),
        (P.M * ((Finset.Ico (P.n - P.n / P.M) P.n).filter (p ^ k ∣ ·)).card -
          (P.n / p ^ k : ℤ)) ≤ P.M :=
      fun k hk ↦ sub_le_iff_le_add'.mpr (mod_cast initial.term_bound P hp_prime (k := k))
    have h_num_terms_bound : (Nat.log p P.n : ℤ) ≤ Real.log P.n / Real.log p := by
      rw [le_div_iff₀ (log_pos <| Nat.one_lt_cast.mpr hp_prime.one_lt)]
      simpa using log_le_log (by norm_cast; exact Nat.Prime.pos hp_prime |> fun h ↦ pow_pos h _)
        (show (p ^ Nat.log p P.n : ℝ) ≤ P.n from mod_cast pow_log_le_self p <| by
          linarith [show P.n > 0 from pos_of_ne_zero <| by rintro h; have := P.hL; grind])
    have : Real.log p ≥ Real.log 2 := log_le_log (by norm_num) (mod_cast hp_prime.two_le)
    refine le_trans (Int.cast_le.mpr h_balance_bound) <|
      le_trans (Int.cast_le.mpr <| sum_le_sum h_term_bound) ?_
    norm_num [mul_div_assoc, mul_comm] at *
    gcongr
    exact h_num_terms_bound.trans (div_le_div_of_nonneg_left (log_nonneg <|
      mod_cast Nat.one_le_iff_ne_zero.mpr <| by rintro h; have := P.hL; grind)
        (log_pos <| by norm_num) this)
  · field_simp
    rw [show P.initial.balance p = 0 from ?_] <;> norm_num
    · exact mul_nonneg (cast_nonneg _) <| log_natCast_nonneg _
    · simp_all [Factorization.balance]

/-- If `p` is a small prime (`L < p ≤ √n`) and `m` is in the
initial interval and divisible by `p`,
then `m` is `(n/L)`-smooth. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean#L1363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f920001904e0a69cdcc5a1042bc956cb81fd55a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
