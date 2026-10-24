# bklnw_corollary_9_1_explicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0bc2b0f-71c0-90e2-77ee-f5d460f23fce",
  "kind": "theorem",
  "lexical_name": "bklnw_corollary_9_1_explicit",
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
  "slug": "bklnw-corollary-9-1-explicit--a29a9c9357d148d2e12890f8",
  "source": {
    "blob": "e42498b7280215dd8b3febb10d2704958bab8a6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2060,
    "line": 1955,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a29a9c9357d148d2e12890f8f4991e211d096a310fb26f4fddc93bb00f99577c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0bc2b0f-71c0-90e2-77ee-f5d460f23fce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1955–2060.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bklnw_corollary_9_1_explicit (b c C M : ℝ) (Cb : ℕ → ℝ) (h : (b, Cb 1, Cb 2, Cb 3, Cb 4, Cb 5, c, C, M) ∈ BKLNW.table_12) :
  ∀ x ∈ Set.Ico (exp b) (10 ^ 19), ∀ k ∈ Finset.Icc 1 5, θ x - x ≥ - Cb k * x / (log x)^k := by
  obtain ⟨h_buthe, h_expb_le_M, h_10000_le_expb, h_ten_le_b, h_b_pos, h_M_vals⟩ :=
    mem_table_from_buthe_and_bounds_of_mem_table_12 b c C M Cb h
  have h_expb_lb : ∀ k : ℕ, k ∈ Finset.Icc 1 5 →
      max (10000 : ℝ) (exp (2 * (k : ℝ))) ≤ exp b := fun k hk =>
    max_le_iff.mpr ⟨h_10000_le_expb,
                    le_trans (exp_two_k_le_exp_ten k hk) (Real.exp_le_exp.mpr h_ten_le_b)⟩
  have h_cor_9_1 : ∀ k : ℕ, k ∈ Finset.Icc 1 5 →
      ∀ x ∈ Set.Icc (exp b) M,
      θ x ≥ x - C_bk b c C RS_prime.c₀ k * x / (log x) ^ k :=
    fun k hk => bklnw_corollary_9_1 k M c C b h_buthe ⟨h_expb_lb k hk, h_expb_le_M⟩
  have h_Cb_le : ∀ k ∈ Finset.Icc 1 5, C_bk b c C RS_prime.c₀ k ≤ Cb k :=
    bklnw_table_12_verification b c C M Cb h
  intro x hx k hk
  rcases le_or_gt x M with hx_le | hx_gt
  · have hx_in_Icc : x ∈ Set.Icc (exp b) M := ⟨hx.1, hx_le⟩
    have hx_pos : (0 : ℝ) < x := (exp_pos b).trans_le hx_in_Icc.1
    have h_log_pos : (0 : ℝ) < (log x) ^ k := by
      apply pow_pos
      calc 0 < b := h_b_pos
        _ = log (exp b) := (Real.log_exp b).symm
        _ ≤ log x := Real.log_le_log (exp_pos b) hx_in_Icc.1
    exact theta_sub_ge_of_cbk_le x _ _ k hx_pos h_log_pos
      (by linarith [h_cor_9_1 k hk x hx_in_Icc]) (h_Cb_le k hk)
  · by_cases hM : M = 10 ^ 19
    · subst hM; linarith [hx.2, hx_gt]
    · by_cases hM5 : M = 5 * 10 ^ 10
      · by_cases hx32 : x ≤ bklnw_M_row6
        · have hx_in_Icc6 : x ∈ Set.Icc (exp bklnw_b_row6) bklnw_M_row6 := by
            eval_table_12_at_all
            rw [Real.exp_log (by norm_num)]; exact ⟨by linarith, hx32⟩
          have h_cor_9_1_row6 := bklnw_corollary_9_1 k bklnw_M_row6 bklnw_c_row6 bklnw_C_row6 bklnw_b_row6
            (by eval_table_12; simp [table_from_buthe]; norm_num)
            (by eval_table_12
                rw [Real.exp_log (by norm_num)]
                try simp only [max_le_iff]
                refine ⟨⟨by norm_num, le_trans (exp_two_k_le_exp_ten k hk) ?_⟩, by norm_num⟩
                grw [← exp_one_rpow 10, Real.exp_one_lt_d9]; norm_num)
          have hx_pos : (0 : ℝ) < x := by linarith
          have h_log_pos : (0 : ℝ) < log x ^ k :=
            pow_pos (Real.log_pos (by linarith : (1 : ℝ) < x)) k
          exact theta_sub_ge_of_cbk_le x _ _ k hx_pos h_log_pos
            (by linarith [h_cor_9_1_row6 x hx_in_Icc6])
            (C_bk_le_Cb_of_M_eq_five_mul_ten_pow_ten b c C M Cb h k hk hM5)
        · have hx_in_Icc14 : x ∈ Set.Icc (exp bklnw_b_row14) bklnw_M_row14 := by
            eval_table_12_at_all
            rw [Real.exp_log (by norm_num)]
            exact ⟨(not_le.mp hx32).le, by linarith [hx.2]⟩
          have h_cor_9_1_row14 := bklnw_corollary_9_1 k bklnw_M_row14 bklnw_c_row14 bklnw_C_row14 bklnw_b_row14
            (by eval_table_12; simp [table_from_buthe]; norm_num)
            (by eval_table_12
                rw [Real.exp_log (by norm_num)]
                try simp only [max_le_iff]
                refine ⟨⟨by norm_num, le_trans (exp_two_k_le_exp_ten k hk) ?_⟩, by norm_num⟩
                grw [← exp_one_rpow 10, Real.exp_one_lt_d9]; norm_num)
          have hx_pos : (0 : ℝ) < x := by linarith
          have h_log_pos : (0 : ℝ) < log x ^ k :=
            pow_pos (Real.log_pos (by linarith : (1 : ℝ) < x)) k
          exact theta_sub_ge_of_cbk_le x _ _ k hx_pos h_log_pos
            (by linarith [h_cor_9_1_row14 x hx_in_Icc14])
            (C_bk_le_Cb_of_M_ne_ten_pow_nineteen b c C M Cb h k hk (by rw [hM5]; norm_num))
      · have h_M_eq : M = bklnw_M_row6 := by
          eval_table_12
          rcases h_M_vals with rfl | rfl | rfl
          · exact absurd rfl hM5
          · norm_num
          · exact absurd rfl hM
        have hx_gt32 : x > bklnw_M_row6 := h_M_eq ▸ hx_gt
        have hx_in_Icc14 : x ∈ Set.Icc (exp bklnw_b_row14) bklnw_M_row14 := by
          eval_table_12_at_all
          rw [Real.exp_log (by norm_num)]
          exact ⟨hx_gt32.le, by linarith [hx.2]⟩
        have h_cor_9_1_row14 := bklnw_corollary_9_1 k bklnw_M_row14 bklnw_c_row14 bklnw_C_row14 bklnw_b_row14
          (by eval_table_12; simp [table_from_buthe]; norm_num)
          (by eval_table_12
              rw [Real.exp_log (by norm_num)]
              try simp only [max_le_iff]
              refine ⟨⟨by norm_num, le_trans (exp_two_k_le_exp_ten k hk) ?_⟩, by norm_num⟩
              grw [← exp_one_rpow 10, Real.exp_one_lt_d9]; norm_num)
        have hx_pos : (0 : ℝ) < x := by linarith
        have h_log_pos : (0 : ℝ) < log x ^ k :=
          pow_pos (Real.log_pos (by linarith : (1 : ℝ) < x)) k
        exact theta_sub_ge_of_cbk_le x _ _ k hx_pos h_log_pos
          (by linarith [h_cor_9_1_row14 x hx_in_Icc14])
          (C_bk_le_Cb_of_M_ne_ten_pow_nineteen b c C M Cb h k hk hM)


blueprint_comment /--
\subsection{Bounding theta(x)-x with a logarithmic decay, IV: very small x}

In this section we tackle very small $x$.

TODO: Formalize Lemma 10
-/


blueprint_comment /--
\subsection{Final bound on Etheta(x)}

Now we put everything together.

TODO: Section 3.7.1; 3.7.2; 3.7.3; 3.7.4
-/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean#L1955).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e42498b7280215dd8b3febb10d2704958bab8a6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
