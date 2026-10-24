# Params.initial.score_bound_aux_imbalanced

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
      "line": 1977,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1104a72a-9090-1bd3-cff6-742cfaea6c0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:035b9a67-a773-55c0-a608-56dee1ec74b3",
  "kind": "lemma",
  "lexical_name": "Params.initial.score_bound_aux_imbalanced",
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
  "slug": "params-initial-score-bound-aux-imbalanced--f0babe526e88829e53bcab77",
  "source": {
    "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2349,
    "line": 1977,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0babe526e88829e53bcab77b898307cdfe9368f9adc92f67478708e0dd33dde",
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

Occurrence: `result:035b9a67-a773-55c0-a608-56dee1ec74b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1977–2349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma Params.initial.score_bound_aux_imbalanced (P : Params)
    (hImb : P.initial.total_imbalance > 0) :
    (if P.initial.total_imbalance > 0 then Real.log P.n else 0) +
    ∑ p ∈ (P.n + 1).primesBelow,
      (if P.initial.balance p > 0 then (P.initial.balance p : ℝ) * Real.log p
       else if p ≤ P.L then -(P.initial.balance p : ℝ) * Real.log P.L
       else -(P.initial.balance p : ℝ) * Real.log (P.n / p)) ≤
    ∑ _ ∈ Finset.filter (·.Prime) (Finset.Iic (P.n / P.L)), P.M * Real.log P.n +
    (∑ _ ∈ Finset.filter (·.Prime) (Finset.Iic ⌊(Real.sqrt P.n)⌋₊),
        P.M * Real.log P.n * Real.log P.n / Real.log 2 +
    (∑ p ∈ Finset.filter (·.Prime) (Finset.Icc (P.n / P.L) P.n),
        (P.n / p) * Real.log (P.n / p) +
    ∑ _ ∈ Finset.filter (·.Prime) (Finset.Iic P.L),
        (P.M * Real.log P.n + P.M * P.L^2 * primeCounting P.n) * Real.log P.L)) := by
  classical
  set L := P.L with hL_def
  set n := P.n with hn_def
  set M := P.M with hM_def
  have Mbnd : 1 < M := by simp [P.hM, M]
  have hL_pos : 0 < L := by simp [P.hL_pos, L]
  have hLbnd : L * L < n := by simp [P.hL, L, n]
  have h2 := @Params.initial.balance_large_prime_le P
  have h3 := @Params.initial.balance_large_prime_ge P
  have h4 := @Params.initial.balance_medium_prime_le P
  have h5 := @Params.initial.balance_medium_prime_ge P
  have h6 := @Params.initial.balance_small_prime_le P
  have h7 := @Params.initial.balance_small_prime_ge P
  have h8 := @Params.initial.balance_tiny_prime_ge P
  change ∀ {p : ℕ}, n / L ≤ p → P.initial.balance p ≤ 0 at h2
  change ∀ {p : ℕ}, n / L ≤ p → -(↑n / ↑p) ≤ P.initial.balance p at h3
  change ∀ {p : ℕ}, √n < p → P.initial.balance p ≤ M at h4
  change ∀ {p : ℕ}, p < n / L → √n < p → -M ≤ P.initial.balance p at h5
  change ∀ {p : ℕ}, P.initial.balance p ≤ M * Real.log n / Real.log 2 at h6
  change ∀ {p : ℕ}, ↑p ≤ √n → L < p →
    -M * Real.log n / Real.log 2 ≤ (P.initial.balance p) at h7
  change ∀ {p : ℕ}, p ≤ L → -M * Real.log n - M * L ^ 2 * n.primeCounting
    ≤ (P.initial.balance p) at h8
  have hL' : Real.sqrt n < (n / L : ℕ) := by simp [P.hL', L, n]
  have hL_lt_NL : L < n / L := by
    have hL_lt_sqrt : (L : ℝ) < Real.sqrt n := by
      rw [Real.lt_sqrt (by positivity)]
      ring_nf at hLbnd
      exact_mod_cast hLbnd
    exact_mod_cast hL_lt_sqrt.trans hL'
  simp only [gt_iff_lt, hImb, ↓reduceIte, neg_mul, sum_const, nsmul_eq_mul, ge_iff_le]
  set g : ℕ → ℝ := fun x =>
    if 0 < P.initial.balance x then (P.initial.balance x : ℝ) * Real.log (x : ℝ)
    else if x ≤ L then -((P.initial.balance x : ℝ) * Real.log (L : ℝ))
    else -((P.initial.balance x : ℝ) * Real.log ((n : ℝ) / (x : ℝ)))
  have split_sum {f : ℕ → ℝ} :
      ∑ p ∈ (n + 1).primesBelow, f p =
        ∑ p ∈ (n + 1).primesBelow with p ≤ L, f p +
        ∑ p ∈ (n + 1).primesBelow with L < p ∧ (p : ℝ) ≤ Real.sqrt n, f p +
        ∑ p ∈ (n + 1).primesBelow with Real.sqrt n < ((p : ℕ) : ℝ) ∧ p < n / L, f p +
        ∑ p ∈ (n + 1).primesBelow with n / L ≤ p, f p := by
    have step1 : ∑ p ∈ (n + 1).primesBelow, f p =
        ∑ p ∈ (n + 1).primesBelow with p ≤ L, f p +
        ∑ p ∈ (n + 1).primesBelow with L < p, f p := by
      rw [← Finset.sum_filter_add_sum_filter_not _ (· ≤ L) f]
      congr 1
      apply Finset.sum_congr _ (fun _ _ => rfl)
      ext p; simp
    have step2 : ∑ p ∈ (n + 1).primesBelow with L < p, f p =
        ∑ p ∈ (n + 1).primesBelow with L < p ∧ (p : ℝ) ≤ Real.sqrt n, f p +
        ∑ p ∈ (n + 1).primesBelow with L < p ∧ Real.sqrt n < (p : ℝ), f p := by
      rw [← Finset.sum_filter_add_sum_filter_not
        (((n + 1).primesBelow).filter (L < ·)) (fun p => (p : ℝ) ≤ Real.sqrt n) f]
      simp only [Finset.filter_filter]
      congr 1
      apply Finset.sum_congr _ (fun _ _ => rfl)
      ext p; simp only [Finset.mem_filter, not_le]
    have step3 : ∑ p ∈ (n + 1).primesBelow with L < p ∧ Real.sqrt n < (p : ℝ), f p =
        ∑ p ∈ (n + 1).primesBelow with Real.sqrt n < ((p : ℕ) : ℝ) ∧ p < n / L, f p +
        ∑ p ∈ (n + 1).primesBelow with n / L ≤ p, f p := by
      rw [← Finset.sum_filter_add_sum_filter_not
        (((n + 1).primesBelow).filter (fun p => L < p ∧ Real.sqrt n < (p : ℝ)))
        (fun p => p < n / L) f]
      simp only [Finset.filter_filter]
      congr 1
      · apply Finset.sum_congr _ (fun _ _ => rfl)
        ext p; simp only [Finset.mem_filter]
        constructor
        · rintro ⟨hmem, ⟨-, hsq⟩, hle⟩; exact ⟨hmem, hsq, hle⟩
        · rintro ⟨hmem, hsq, hle⟩
          exact ⟨hmem, ⟨by
            have hL_lt_sqrt : (L : ℝ) < √↑n := by
              rw [Real.lt_sqrt (by positivity)]
              ring_nf at hLbnd
              exact_mod_cast hLbnd
            exact_mod_cast hL_lt_sqrt.trans hsq, hsq⟩, hle⟩
      · apply Finset.sum_congr _ (fun _ _ => rfl)
        ext p
        simp only [Finset.mem_filter]
        constructor
        · rintro ⟨hmem, ⟨-, -⟩, hnot_lt⟩
          exact ⟨hmem, by
            push Not at hnot_lt
            exact hnot_lt⟩
        · rintro ⟨hmem, hge⟩
          refine ⟨hmem, ⟨?_, ?_⟩, ?_⟩
          · exact lt_of_lt_of_le hL_lt_NL hge
          · calc √↑n < ↑(n / L) := by exact hL'
                  _ ≤ ↑p := by exact_mod_cast hge
          · exact not_lt.mpr hge
    rw [step1, step2, step3]
    ring
  rw [split_sum (f := g)]
  simp only [ge_iff_le]
  set A1 : ℝ := ∑ x ∈ (n + 1).primesBelow with x ≤ L, g x
  set A2 : ℝ :=
    ∑ x ∈ (n + 1).primesBelow with L < x ∧ (x : ℝ) ≤ Real.sqrt (n : ℝ), g x
  let A3prop : ℕ → Prop := fun x ↦ ((Real.sqrt (n : ℝ) < (x : ℝ)) ∧ (x < n / L))
  set A3 : ℝ := ∑ x ∈ (n + 1).primesBelow with A3prop x, g x
  set A4 : ℝ := ∑ x ∈ (n + 1).primesBelow with n / L ≤ x, g x
  set NoverL_primes : ℕ := #({x ∈ Finset.Iic (n / L) | Nat.Prime x}) with hNoverL_primes
  set sqrtN_primes : ℕ :=
    #({x ∈ Finset.Iic ⌊Real.sqrt ↑n⌋₊ | Nat.Prime x}) with hsqrtN_primes
  set L_primes      : ℕ := #({x ∈ Finset.Iic L | Nat.Prime x}) with hL_primes
  set RHS1 : ℝ := (↑NoverL_primes) * (↑M * Real.log ↑n) with hRHS1
  set RHS2 : ℝ :=
    (↑sqrtN_primes) * (↑M * Real.log ↑n * Real.log ↑n / Real.log 2) with hRHS2
  set RHS3 : ℝ :=
      (∑ p ∈ Finset.Icc (n / L) n with Nat.Prime p,
        ↑n / ↑p * Real.log (↑n / ↑p)) with hRHS3
  set RHS4 : ℝ :=
      (↑L_primes) *
        ((↑M * Real.log ↑n + ↑M * ↑L ^ 2 * ↑n.primeCounting) * Real.log ↑L) with hRHS4
  have hn_pos : (0 : ℝ) < n := by
    exact_mod_cast Nat.lt_of_lt_of_le (Nat.mul_pos hL_pos hL_pos) hLbnd.le
  have hn1 : (1 : ℝ) ≤ n := by
    exact_mod_cast Nat.one_le_of_lt (lt_trans (Nat.mul_pos hL_pos hL_pos) hLbnd)
  have hM_ge1 : (1 : ℝ) ≤ M := by exact_mod_cast Mbnd.le
  have hM_nn : (0 : ℝ) ≤ M := by linarith
  have hlogn_nn : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg hn1
  have hL1 : (1 : ℝ) ≤ L := by exact_mod_cast hL_pos
  have hlogL_nn : 0 ≤ Real.log (L : ℝ) := Real.log_nonneg hL1
  have hL_le_NL : L ≤ n / L := Nat.le_div_iff_mul_le hL_pos |>.mpr (by linarith)
  have h3_real : ∀ x : ℕ, 0 < x → n / L ≤ x → -(n : ℝ) / x ≤ P.initial.balance x := by
    intro x xpos hx
    have := h3 hx
    rw [show -(n : ℝ) / ↑x = -(↑n / ↑x) by ring]
    rw [neg_le] at this ⊢
    rw [le_div_iff₀ (by exact_mod_cast xpos)]
    rw [Int.le_ediv_iff_mul_le (by exact_mod_cast xpos)] at this
    exact_mod_cast this
  have hA1 : A1 ≤ RHS4 := by
    apply le_trans _ (le_refl RHS4)
    rw [hRHS4]
    apply le_trans (Finset.sum_le_card_nsmul _ _ ((M * Real.log n +
        M * L^2 * n.primeCounting) * Real.log L) _)
    · simp only [nsmul_eq_mul, L_primes]
      gcongr
      intro q hq
      simp only [Finset.mem_filter, Finset.mem_Iic] at hq ⊢
      have := hq.1
      simp only [primesBelow, Finset.mem_filter, Finset.mem_range, Order.lt_add_one_iff] at this
      refine ⟨hq.2, this.2⟩
    · intro x hx
      simp only [Finset.mem_filter, primesBelow, Finset.mem_range] at hx
      simp only [g]
      split_ifs with hpos hle
      · have hbal_le : (P.initial.balance x : ℝ) ≤ M * Real.log n / Real.log 2 :=
          by exact_mod_cast h6
        have hlogx_le : Real.log x ≤ Real.log L := by
          apply Real.log_le_log
          · norm_cast; exact Nat.Prime.pos hx.1.2
          · exact_mod_cast hx.2
        calc (P.initial.balance x : ℝ) * Real.log x
            ≤ (M * Real.log n / Real.log 2) * Real.log L :=
              mul_le_mul hbal_le hlogx_le (by positivity) (by positivity)
          _ ≤ (M * Real.log n + M * L^2 * n.primeCounting) * Real.log L := by
              refine mul_le_mul ?_ (by simp) (by positivity) (by positivity)
              have haux := balance_inequality_aux P 2 Nat.prime_two
              have hlog2 : Real.log 2 ≤ 1 := Real.log_le_sub_one_of_pos two_pos |>.trans
                (by norm_num)
              rw [show ↑M * Real.log ↑n + ↑M * ↑L ^ 2 * ↑n.primeCounting =
                ↑M * (Real.log ↑n + ↑L ^ 2 * ↑n.primeCounting) by ring]
              rw [show M * Real.log ↑n / Real.log 2 = M * (Real.log ↑n / Real.log 2)
                by ring]
              apply mul_le_mul (by simp) ?_ (by positivity) (by positivity)
              calc _ = Real.log ↑n * (1 / Real.log 2 - 1) + Real.log n := by ring
                   _ ≤ ↑n.primeCounting * ↑L * (↑L - ↑(Nat.log 2 L)) + Real.log n := by
                    gcongr
                   _ ≤ Real.log ↑n + ↑L ^ 2 * ↑n.primeCounting := by
                    ring_nf
                    gcongr
                    conv =>
                      enter [2]
                      equals (0 : ℝ) + n.primeCounting * L^2 => ring
                    gcongr
                    simp only [Left.neg_nonpos_iff]
                    positivity
      · have hbal_ge : -(M * Real.log n + M * L^2 * n.primeCounting) ≤
            (P.initial.balance x : ℝ) := by
              linarith [h8 (p := x) hx.2]
        rw [show -((P.initial.balance x) * Real.log L) =
          (-(P.initial.balance x)) * Real.log L by ring]
        apply mul_le_mul (by linarith) (by simp) (by positivity) (by positivity)
      · omega
  have hA2 : A2 ≤ RHS2 := by
    rw [hRHS2]
    apply le_trans (Finset.sum_le_card_nsmul _ _
      (↑M * Real.log ↑n * Real.log ↑n / Real.log 2) _)
    · simp only [nsmul_eq_mul, sqrtN_primes]
      gcongr
      intro x hx
      simp only [Finset.mem_filter, Finset.mem_Iic, Finset.mem_filter] at hx ⊢
      have := hx.1
      simp only [primesBelow, Finset.mem_filter, Finset.mem_range, Order.lt_add_one_iff] at this
      exact ⟨Nat.le_floor hx.2.2, this.2⟩
    · intro x hx
      simp only [primesBelow, Finset.mem_filter, Finset.mem_range, Order.lt_add_one_iff] at hx
      dsimp [g]
      split_ifs with hpos
      · have hlogx : Real.log x ≤ Real.log n := Real.log_le_log (by exact_mod_cast hx.1.2.pos)
          (by exact_mod_cast hx.1.1)
        calc (P.initial.balance x : ℝ) * Real.log x
            ≤ (M * Real.log n / Real.log 2) * Real.log n :=
              mul_le_mul h6 hlogx (by positivity) (by positivity)
          _ = M * Real.log n * Real.log n / Real.log 2 := by ring
      · have := hx.2.1
        linarith
      · have hbal_ge := h7 hx.2.2 (by exact_mod_cast hx.2.1)
        have hneg_bal : -(P.initial.balance x : ℝ) ≤ M * Real.log n / Real.log 2 := by
          have : -M * Real.log n / Real.log 2 = -(M * Real.log n / Real.log 2) := by ring
          linarith
        have hx_pos : (0 : ℝ) < x := by exact_mod_cast hx.1.2.pos
        have hx_le_n : (x : ℝ) ≤ n := by exact_mod_cast hx.1.1
        have hnp_ge1 : 1 ≤ (n : ℝ) / x := by rw [le_div_iff₀ hx_pos]; linarith
        have hlog_np_nn : 0 ≤ Real.log (n / x) := Real.log_nonneg hnp_ge1
        have hlog_np : Real.log ((n : ℝ) / x) ≤ Real.log n :=
          Real.log_le_log (by linarith) (div_le_self (by linarith) (by norm_cast; omega))
        calc -(↑(P.initial.balance x) * Real.log (↑n / ↑x))
            ≤ (M * Real.log n / Real.log 2) * Real.log n := by
                      convert mul_le_mul hneg_bal hlog_np hlog_np_nn (by positivity) using 1
                      ring
          _ = M * Real.log n * Real.log n / Real.log 2 := by ring
  have hA4 : A4 ≤ RHS3 := by
    rw [hRHS3]
    have hA4_pointwise : ∀ x ∈ (n + 1).primesBelow.filter (fun x => n / L ≤ x),
        g x ≤ (↑n / ↑x) * Real.log (↑n / ↑x) := by
      intro x hx
      simp only [Finset.mem_filter, primesBelow, Finset.mem_range, Order.lt_add_one_iff] at hx
      have hx_ge_NL : n / L ≤ x := hx.2
      have hx_le_n : x ≤ n := hx.1.1
      have hx_prime : x.Prime := hx.1.2
      have hx_pos : 0 < x := hx_prime.pos
      have hx_pos' : (0 : ℝ) < x := by exact_mod_cast hx_pos
      have hbal_le : P.initial.balance x ≤ 0 := h2 hx_ge_NL
      have hbal_not_pos : ¬ 0 < P.initial.balance x := by exact not_lt.mpr hbal_le
      have hx_gt_L : L < x := lt_of_lt_of_le hL_lt_NL hx_ge_NL
      have hx_not_le_L : ¬ x ≤ L := by exact not_le.mpr hx_gt_L
      simp only [g, hbal_not_pos, hx_not_le_L, ↓reduceIte, ge_iff_le]
      have hneg_bal : -(P.initial.balance x : ℝ) ≤ (n : ℝ) / x := by
        simpa [neg_div] using neg_le_neg (h3_real x hx_pos hx_ge_NL)
      have hlog_np_nn : 0 ≤ Real.log ((n : ℝ) / x) := by
        apply Real.log_nonneg
        rw [le_div_iff₀ hx_pos']
        simpa [one_mul] using (show (x : ℝ) ≤ n by exact_mod_cast hx_le_n)
      have hmul := mul_le_mul_of_nonneg_right hneg_bal hlog_np_nn
      simpa [mul_comm, mul_left_comm, mul_assoc] using hmul
    have hA4_le' :
        A4 ≤ ∑ x ∈ (n + 1).primesBelow.filter (fun x => n / L ≤ x),
          (↑n / ↑x) * Real.log (↑n / ↑x) := by
      simpa [A4] using Finset.sum_le_sum hA4_pointwise
    have hset :
        (n + 1).primesBelow.filter (fun x => n / L ≤ x) =
          Finset.filter Nat.Prime (Finset.Icc (n / L) n) := by
      ext x
      simp [primesBelow, and_assoc, and_left_comm, and_comm]
    simpa [hset] using hA4_le'
  have hA3log : Real.log ↑n + A3 ≤ RHS1 := by
    have hgA3 : ∀ x ∈ (n + 1).primesBelow.filter (fun x => A3prop x),
        g x ≤ ↑M * Real.log ↑n := by
      intro x hx
      simp only [Finset.mem_filter, primesBelow, Finset.mem_filter,
        Finset.mem_range, Order.lt_add_one_iff, A3prop] at hx
      have hx_le_n : x ≤ n := hx.1.1
      have hx_prime : x.Prime := hx.1.2
      have hx_sqrt : Real.sqrt n < x := hx.2.1
      have hx_lt : x < n / L := hx.2.2
      have hbal_le : (P.initial.balance x : ℝ) ≤ M := by exact_mod_cast h4 hx_sqrt
      have hbal_ge : -(↑M : ℝ) ≤ P.initial.balance x := by exact_mod_cast h5 hx_lt hx_sqrt
      have hneg_bal : -(P.initial.balance x : ℝ) ≤ M := by linarith
      have hx_ge1 : (1 : ℝ) ≤ x := by exact_mod_cast hx_prime.one_le
      have hlog_div_nn : 0 ≤ Real.log (↑n / ↑x) := by
        apply Real.log_nonneg
        rw [le_div_iff₀ (by positivity)]
        simpa [one_mul] using (show (x : ℝ) ≤ n by exact_mod_cast hx_le_n)
      have hlog_div : Real.log (↑n / ↑x) ≤ Real.log ↑n :=
        Real.log_le_log (by positivity) (div_le_self (by linarith) hx_ge1)
      have hlogx : Real.log x ≤ Real.log n :=
        Real.log_le_log (by linarith) (by exact_mod_cast hx_le_n)
      simp only [g]
      split_ifs with hpos hle
      · exact mul_le_mul hbal_le hlogx (by positivity) (by positivity)
      · exfalso
        have hL_lt_sqrt : (L : ℝ) < Real.sqrt n := by
          rw [Real.lt_sqrt (by positivity)]
          ring_nf at hLbnd
          exact_mod_cast hLbnd
        exact absurd (by exact_mod_cast hle : (x : ℝ) ≤ L)
          (not_le.mpr (hL_lt_sqrt.trans hx_sqrt))
      · rw [show  -(↑(P.initial.balance x) * Real.log (↑n / ↑x))
          = (-↑(P.initial.balance x)) * Real.log (↑n / ↑x) by ring]
        apply mul_le_mul (by linarith) hlog_div hlog_div_nn (by positivity)
    have hA3_sum : A3 ≤ ((n + 1).primesBelow.filter (fun x => A3prop x)).card *
        (↑M * Real.log ↑n) := by
      simp only [A3]
      calc ∑ x ∈ (n + 1).primesBelow.filter (fun x => A3prop x), g x
          ≤ ∑ _ ∈ (n + 1).primesBelow.filter (fun x => A3prop x), ↑M * Real.log ↑n :=
            Finset.sum_le_sum hgA3
        _ = _ := by simp [Finset.sum_const, nsmul_eq_mul]
    have hlogn : Real.log ↑n ≤ ↑M * Real.log ↑n := by
      nlinarith [hlogn_nn, hM_ge1]
    have hL2 : 2 ≤ L := P.hL''
    have h2_le_NL : 2 ≤ n / L := le_trans hL2 hL_le_NL
    have h2_not_A3 : ¬ A3prop 2 := by
      simp only [A3prop, not_and, not_lt]
      intro h
      rw [Real.sqrt_lt (by positivity) (by positivity)] at h
      norm_num at h
      rw [Nat.div_le_iff_le_mul (by positivity)]
      omega
    have h2_in_NoverL : 2 ∈ ({x ∈ Finset.Iic (n / L) | Nat.Prime x} : Finset ℕ) := by
      simp [Finset.mem_filter, Finset.mem_Iic, h2_le_NL, Nat.prime_two]
    have hcard : ((n + 1).primesBelow.filter (fun x => A3prop x)).card + 1 ≤ NoverL_primes := by
      have hA3_sub : (n + 1).primesBelow.filter (fun x => A3prop x) ⊆
          {x ∈ Finset.Iic (n / L) | Nat.Prime x} \ {2} := by
        intro x hx
        simp only [Finset.mem_filter, primesBelow, Finset.mem_filter,
          Finset.mem_range, Order.lt_add_one_iff, A3prop] at hx
        simp only [Finset.mem_sdiff, Finset.mem_filter, Finset.mem_Iic, Finset.mem_singleton]
        exact ⟨⟨Nat.le_of_lt hx.2.2, hx.1.2⟩, by
          intro hx2
          exact h2_not_A3 (hx2 ▸ hx.2)⟩
      have hsub2 : ({2} : Finset ℕ) ⊆ {x ∈ Finset.Iic (n / L) | Nat.Prime x} := by
        simp [h2_in_NoverL]
      have hcard_sdiff : ({x ∈ Finset.Iic (n / L) | Nat.Prime x} \ {2}).card + 1 ≤
          NoverL_primes := by
        dsimp only [NoverL_primes]
        rw [← Finset.card_sdiff_add_card_eq_card hsub2]
        simp only [Finset.card_singleton, le_refl]
      linarith [Finset.card_le_card hA3_sub, hcard_sdiff]
    calc Real.log ↑n + A3
        ≤ ↑M * Real.log ↑n +
          ((n + 1).primesBelow.filter (fun x => A3prop x)).card * (↑M * Real.log ↑n) := by
            linarith [hA3_sum, hlogn]
      _ = (((n + 1).primesBelow.filter (fun x => A3prop x)).card + 1 : ℕ) *
          (↑M * Real.log ↑n) := by push_cast; ring
      _ ≤ ↑NoverL_primes * (↑M * Real.log ↑n) := by
          apply mul_le_mul_of_nonneg_right _ (by positivity)
          exact_mod_cast hcard
      _ = RHS1 := by simp [RHS1]
  linarith [hA1, hA2, hA3log, hA4]

@[blueprint
  "initial-score-bound"
  (statement := /-- The initial score is bounded by
  $$ n \log(1-1/M)^{-1} + \sum_{p \leq n/L} M \log n + \sum_{p \leq \sqrt{n}} M \log^2 n / \log 2
  + \sum_{n/L < p \leq n} \frac{n}{p} \log \frac{n}{p}
  + \sum_{p \leq L} (M \log n + M L \pi(n)) \log L.$$ -/)
  (latexEnv := "proposition")
  (proof := /-- Combine Lemma \ref{initial-factorization-waste},
  Sublemma \ref{initial-factorization-large-prime-le},
  Sublemma \ref{initial-factorization-large-prime-ge},
  Sublemma \ref{initial-factorization-medium-prime-le},
  Sublemma \ref{initial-factorization-medium-prime-ge},
  Sublemma \ref{initial-factorization-small-prime-le},
  Sublemma \ref{initial-factorization-small-prime-ge}, and
  Sublemma \ref{initial-factorization-tiny-prime-ge}, and combine
  $\log p$ and $\log (n/p)$ to $\log n$.-/)
  (discussion := 665)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean#L1977).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f920001904e0a69cdcc5a1042bc956cb81fd55a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
