# lambda_eq_sum_sq_dvd_mu

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c16c416971c366503f7f5ff829e7c163fa4c9df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1975,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38e940bec270581aa23b550f24173226c865cc9f8befdaac159a8c5acd510558.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8629d8c7-a798-6814-7a6e-d38aa19c596b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:deec3a8e-1be9-9301-4140-11c7aa2cddce",
  "kind": "lemma",
  "lexical_name": "lambda_eq_sum_sq_dvd_mu",
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
  "slug": "lambda-eq-sum-sq-dvd-mu--2f8aa9355abffdfba9798de6",
  "source": {
    "blob": "0c16c416971c366503f7f5ff829e7c163fa4c9df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2086,
    "line": 1975,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variant38e940bec270581aa23b550f24173226c865cc9f8befdaac159a8c5acd510558.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f8aa9355abffdfba9798de62acf0785b239604db666d82cb75acd1ec35cd0ec",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Consequences/Variant38e940bec270581aa23b550f24173226c865cc9f8befdaac159a8c5acd510558.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:deec3a8e-1be9-9301-4140-11c7aa2cddce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1975–2086.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lambda_eq_sum_sq_dvd_mu (n : ℕ) (hn : n ≠ 0) :
    ((-1 : ℝ) ^ (Ω n)) = ∑ d ∈ (Icc 1 n).filter (fun d => d^2 ∣ n), (μ (n / d^2) : ℝ) := by
      set a : ℕ → ℕ := fun p => Nat.factorization n p with ha
      have hn_factor : n = ∏ p ∈ Nat.primeFactors n, p ^ a p := by
        exact Eq.symm ( Nat.prod_factorization_pow_eq_self hn );
      have h_sum_factor : (∑ d ∈ Finset.filter (fun d => d^2 ∣ n) (Finset.Icc 1 n), (μ (n / d^2) : ℝ)) = (∏ p ∈ Nat.primeFactors n, (∑ d ∈ Finset.range (a p / 2 + 1), (μ (p^(a p - 2 * d)) : ℝ))) := by
        have h_mult : ∀ {m n : ℕ}, Nat.gcd m n = 1 → (∑ d ∈ Finset.filter (fun d => d^2 ∣ m * n) (Finset.Icc 1 (m * n)), (μ (m * n / d^2) : ℝ)) = (∑ d ∈ Finset.filter (fun d => d^2 ∣ m) (Finset.Icc 1 m), (μ (m / d^2) : ℝ)) * (∑ d ∈ Finset.filter (fun d => d^2 ∣ n) (Finset.Icc 1 n), (μ (n / d^2) : ℝ)) := by
          intros m n h_coprime
          have h_filter : Finset.filter (fun d => d^2 ∣ m * n) (Finset.Icc 1 (m * n)) = Finset.image (fun (d : ℕ × ℕ) => d.1 * d.2) (Finset.filter (fun d => d^2 ∣ m) (Finset.Icc 1 m) ×ˢ Finset.filter (fun d => d^2 ∣ n) (Finset.Icc 1 n)) := by
            ext d
            simp only [mem_filter, mem_Icc, mem_image, mem_product, Prod.exists]
            constructor
            · intro h
              obtain ⟨d1, d2, hd1, hd2, hd⟩ : ∃ d1 d2 : ℕ, d1^2 ∣ m ∧ d2^2 ∣ n ∧ d = d1 * d2 := by
                have h_factor : d^2 ∣ m * n → ∃ d1 d2 : ℕ, d1^2 ∣ m ∧ d2^2 ∣ n ∧ d = d1 * d2 := by
                  intro h_div
                  obtain ⟨d1, d2, hd1, hd2, hd⟩ : ∃ d1 d2 : ℕ, d1 ∣ m ∧ d2 ∣ n ∧ d = d1 * d2 := by
                    exact Exists.imp ( by tauto ) ( Nat.dvd_mul.mp ( dvd_of_mul_left_dvd h_div ) );
                  refine ⟨ d1, d2, ?_, ?_, hd ⟩
                  · apply Nat.Coprime.dvd_of_dvd_mul_right
                    · exact Nat.Coprime.pow_left 2 (Nat.Coprime.coprime_dvd_left hd1 h_coprime)
                    · exact dvd_trans (pow_dvd_pow_of_dvd (hd.symm ▸ dvd_mul_right _ _) 2) h_div
                  · subst hd
                    apply Nat.Coprime.dvd_of_dvd_mul_left
                    · exact Nat.Coprime.pow_left _ (Nat.Coprime.symm <| Nat.Coprime.coprime_dvd_right hd2 h_coprime)
                    · exact dvd_trans ⟨d1 ^ 2, by ring⟩ h_div
                exact h_factor h.2;
              refine ⟨ d1, d2, ?_, ?_ ⟩ <;> norm_num [ hd ]
              exact ⟨ ⟨ ⟨ Nat.pos_of_ne_zero ( by rintro rfl; linarith ), Nat.le_of_dvd ( Nat.pos_of_ne_zero ( by rintro rfl; linarith ) ) ( dvd_of_mul_left_dvd hd1 ) ⟩, hd1 ⟩, ⟨ Nat.pos_of_ne_zero ( by rintro rfl; linarith ), Nat.le_of_dvd ( Nat.pos_of_ne_zero ( by rintro rfl; linarith ) ) ( dvd_of_mul_left_dvd hd2 ) ⟩, hd2 ⟩;
            · intro h
              rcases h with ⟨ a, b, ⟨ ⟨ ⟨ ha₁, ha₂ ⟩, ha₃ ⟩, ⟨ ⟨ hb₁, hb₂ ⟩, hb₃ ⟩ ⟩, rfl ⟩ ; exact ⟨ ⟨ by nlinarith, by nlinarith ⟩, by convert Nat.mul_dvd_mul ha₃ hb₃ using 1 ; ring ⟩ ;
          rw [ h_filter, Finset.sum_image ];
          · rw [ Finset.sum_product, Finset.sum_mul ];
            simp +decide only [Finset.mul_sum _ _ _];
            refine Finset.sum_congr rfl fun x hx => Finset.sum_congr rfl fun y hy => ?_
            rw [show m * n / (x * y) ^ 2 = (m / x ^ 2) * (n / y ^ 2) by
              have hx' : x ^ 2 ∣ m := by
                simpa only [sq] using (Finset.mem_filter.mp hx).2
              have hy' : y ^ 2 ∣ n := by
                simpa only [sq] using (Finset.mem_filter.mp hy).2
              simpa [mul_pow, mul_assoc, mul_left_comm, mul_comm] using
                (Nat.div_mul_div_comm (a := m) (b := x ^ 2) (c := n) (d := y ^ 2) hx' hy').symm]
            norm_cast
            apply ArithmeticFunction.IsMultiplicative.map_mul_of_coprime;
            · exact ArithmeticFunction.isMultiplicative_moebius;
            · exact Nat.Coprime.coprime_dvd_left ( Nat.div_dvd_of_dvd <| Finset.mem_filter.mp hx |>.2 ) <| Nat.Coprime.coprime_dvd_right ( Nat.div_dvd_of_dvd <| Finset.mem_filter.mp hy |>.2 ) h_coprime;
          · intros x hx y hy; simp +contextual only [ne_eq, coe_product, coe_filter, mem_Icc, Set.mem_prod, Set.mem_setOf_eq] at *;
            intro hxy
            have h_eq1 : x.1 = y.1 := by
              exact Nat.dvd_antisymm ( by exact Nat.Coprime.dvd_of_dvd_mul_right ( show Nat.Coprime ( x.1 ) ( y.2 ) from Nat.Coprime.coprime_dvd_left ( dvd_of_mul_left_dvd hx.1.2 ) <| Nat.Coprime.coprime_dvd_right ( dvd_of_mul_left_dvd hy.2.2 ) h_coprime ) <| hxy.symm ▸ dvd_mul_right _ _ ) ( by exact Nat.Coprime.dvd_of_dvd_mul_right ( show Nat.Coprime ( y.1 ) ( x.2 ) from Nat.Coprime.coprime_dvd_left ( dvd_of_mul_left_dvd hy.1.2 ) <| Nat.Coprime.coprime_dvd_right ( dvd_of_mul_left_dvd hx.2.2 ) h_coprime ) <| hxy.symm ▸ dvd_mul_right _ _ )
            have h_eq2 : x.2 = y.2 := by
              nlinarith
            exact Prod.ext h_eq1 h_eq2;
        have h_prod : (∑ d ∈ Finset.filter (fun d => d^2 ∣ n) (Finset.Icc 1 n), (μ (n / d^2) : ℝ)) = (∏ p ∈ Nat.primeFactors n, (∑ d ∈ Finset.filter (fun d => d^2 ∣ p^(a p)) (Finset.Icc 1 (p^(a p))), (μ (p^(a p) / d^2) : ℝ))) := by
          have h_prod : ∀ {S : Finset ℕ}, (∀ p ∈ S, Nat.Prime p) → (∑ d ∈ Finset.filter (fun d => d^2 ∣ ∏ p ∈ S, p^(a p)) (Finset.Icc 1 (∏ p ∈ S, p^(a p))), (μ ((∏ p ∈ S, p^(a p)) / d^2) : ℝ)) = (∏ p ∈ S, (∑ d ∈ Finset.filter (fun d => d^2 ∣ p^(a p)) (Finset.Icc 1 (p^(a p))), (μ (p^(a p) / d^2) : ℝ))) := by
            intro S hS; induction S using Finset.induction <;> norm_num at *;
            · norm_num [ Finset.sum_filter ];
            · rw [ Finset.prod_insert ‹_›, h_mult ];
              · rw [ Finset.prod_insert ‹_›, ‹ ( ∀ p ∈ _, Nat.Prime p ) → ∑ d ∈ Finset.Icc 1 ( ∏ p ∈ _, p ^ a p ) with d ^ 2 ∣ ∏ p ∈ _, p ^ a p, ( μ ( ( ∏ p ∈ _, p ^ a p ) / d ^ 2 ) : ℝ ) = ∏ p ∈ _, ∑ d ∈ Finset.Icc 1 ( p ^ a p ) with d ^ 2 ∣ p ^ a p, ( μ ( p ^ a p / d ^ 2 ) : ℝ ) › hS.2 ];
              · exact Nat.Coprime.prod_right fun p hp => Nat.coprime_pow_primes _ _ hS.1 ( hS.2 p hp ) <| by rintro rfl; exact ‹¬_› hp;
          convert h_prod fun p hp => Nat.prime_of_mem_primeFactors hp;
        have h_divisors : ∀ p ∈ Nat.primeFactors n, Finset.filter (fun d => d^2 ∣ p^(a p)) (Finset.Icc 1 (p^(a p))) = Finset.image (fun k => p^k) (Finset.Icc 0 (a p / 2)) := by
          intro p hp
          ext d
          simp only [mem_filter, mem_Icc, mem_image, _root_.zero_le, true_and]
          constructor;
          · intro hd;
            have : d ∣ p ^ a p := dvd_of_mul_left_dvd hd.2; ( rw [ Nat.dvd_prime_pow ( Nat.prime_of_mem_primeFactors hp ) ] at this; obtain ⟨ k, hk ⟩ := this; use k; simp +decide only [ hk, and_true ] at hd ⊢; );
            rw [ Nat.le_div_iff_mul_le zero_lt_two ] ; rw [ ← pow_mul ] at hd ; exact Nat.le_of_not_lt fun h => absurd ( Nat.le_of_dvd ( pow_pos ( Nat.pos_of_mem_primeFactors hp ) _ ) hd.2 ) ( by exact not_le_of_gt ( pow_lt_pow_right₀ ( Nat.Prime.one_lt ( Nat.prime_of_mem_primeFactors hp ) ) ( by linarith ) ) ) ;
          · rintro ⟨ k, hk₁, rfl ⟩ ; exact ⟨ ⟨ Nat.one_le_pow _ _ ( Nat.pos_of_mem_primeFactors hp ), Nat.pow_le_pow_right ( Nat.pos_of_mem_primeFactors hp ) ( by omega ) ⟩, by rw [ ← pow_mul ] ; exact pow_dvd_pow _ ( by omega ) ⟩ ;
        rw [ h_prod, Finset.prod_congr rfl ];
        intro p hp; rw [ show ( Finset.filter ( fun d => d ^ 2 ∣ p ^ a p ) ( Finset.Icc 1 ( p ^ a p ) ) ) = Finset.image ( fun k => p ^ k ) ( Finset.Icc 0 ( a p / 2 ) ) from h_divisors p hp ] ; rw [ Finset.sum_image ] <;> norm_num [ pow_mul', Nat.div_eq_of_lt ] ;
        · rw [Finset.range_eq_Ico, ← Order.succ_eq_add_one, Finset.Ico_succ_right_eq_Icc]
          refine Finset.sum_congr rfl ?_
          intro x hx
          rw [← pow_mul', Nat.mul_comm]
          have hx_pos : 0 < p ^ (x * 2) := pow_pos (Nat.pos_of_mem_primeFactors hp) _
          have hx_eq : p ^ a p = p ^ (a p - x * 2) * p ^ (x * 2) := by
            rw [← pow_add, Nat.sub_add_cancel (by linarith [Finset.mem_Icc.mp hx, Nat.div_mul_le_self (a p) 2])]
          rw [Nat.div_eq_of_eq_mul_left hx_pos hx_eq]
        · exact fun x hx y hy hxy => Nat.pow_right_injective ( Nat.Prime.one_lt ( Nat.prime_of_mem_primeFactors hp ) ) hxy;
      have h_inner_sum : ∀ p ∈ Nat.primeFactors n, (∑ d ∈ Finset.range (a p / 2 + 1), (μ (p^(a p - 2 * d)) : ℝ)) = (-1 : ℝ) ^ (a p) := by
        intro p hp
        have h_inner_sum_cases : ∀ d ∈ Finset.range (a p / 2 + 1), (μ (p^(a p - 2 * d)) : ℝ) = if a p - 2 * d = 0 then 1 else if a p - 2 * d = 1 then -1 else 0 := by
          simp +zetaDelta only [ne_eq, mem_primeFactors, mem_range] at *
          intro d hd
          rcases k : (n.factorization p - 2 * d) with (_ | _ | k)
          · simp +decide only [pow_zero, isUnit_iff_eq_one, IsUnit.squarefree, moebius_apply_of_squarefree, Int.reduceNeg,
              cardFactors_one, Int.cast_one, ↓reduceIte]
          · simp +decide only [zero_add, pow_one, ↓reduceIte]
            norm_num [hp.1, ArithmeticFunction.moebius]
            exact hp.1.squarefree
          · simp +decide only [Nat.add_eq_zero_iff, and_false, and_self, ↓reduceIte, Nat.add_eq_right, Int.cast_eq_zero]
            exact
              ArithmeticFunction.moebius_eq_zero_of_not_squarefree
                (by rw [Nat.squarefree_pow_iff] <;> norm_num [hp.1.ne_one, hp.1.ne_zero])
        rw [ Finset.sum_congr rfl h_inner_sum_cases ] ; norm_num [ Finset.sum_ite ] ; rcases Nat.even_or_odd' ( a p ) with ⟨ k, hk | hk ⟩ <;> norm_num [ hk, pow_add, pow_mul ]
        · ring_nf
          norm_num [ show ∀ x : ℕ, k * 2 - x * 2 = 0 ↔ x ≥ k by intro x; exact ⟨ fun hx => by contrapose! hx; exact Nat.ne_of_gt <| Nat.sub_pos_of_lt <| by linarith, fun hx => Nat.sub_eq_zero_of_le <| by linarith ⟩ ];
          rw [ show Finset.filter ( fun x => k ≤ x ) ( Finset.range ( 1 + k ) ) = { k } from Finset.eq_singleton_iff_unique_mem.mpr ⟨ Finset.mem_filter.mpr ⟨ Finset.mem_range.mpr <| by linarith, by linarith ⟩, fun x hx => by linarith [ Finset.mem_filter.mp hx, Finset.mem_range.mp ( Finset.mem_filter.mp hx |>.1 ) ] ⟩ ] ; norm_num;
          intros; omega;
        · ring_nf
          norm_num [ Nat.add_div ];
          rw [ Finset.card_eq_zero.mpr ] <;> norm_num;
          · rw [ Finset.card_eq_one ] ; use k ; ext x ; norm_num ; omega;
          · intros; omega;
      rw [ h_sum_factor, Finset.prod_congr rfl h_inner_sum ];
      rw [ Finset.prod_pow_eq_pow_sum ];
      rw [ ArithmeticFunction.cardFactors_apply ];
      rw [ ← Multiset.coe_card, ← Multiset.toFinset_sum_count_eq ];
      norm_num +zetaDelta

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Consequences/Variant38e940bec270581aa23b550f24173226c865cc9f8befdaac159a8c5acd510558.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variant38e940bec270581aa23b550f24173226c865cc9f8befdaac159a8c5acd510558.lean#L1975).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c16c416971c366503f7f5ff829e7c163fa4c9df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
