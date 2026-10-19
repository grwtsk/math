import SourceSignedSamplingExplicitBudget

/-!
Finite reciprocal bounds for an actual square-divisor sieve. These scalar
inequalities will retain genuine Moebius squarefree coefficients; they do not
assert any cancellation in the signed source.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace RH16IndependentChallengeNext

open scoped BigOperators

noncomputable section

private theorem reciprocalSqrt_upper_step (n : ℕ) :
    1 / Real.sqrt ((n + 1 : ℕ) : ℝ) ≤
      2 * (Real.sqrt ((n + 1 : ℕ) : ℝ) - Real.sqrt (n : ℝ)) := by
  have hp : 0 < ((n + 1 : ℕ) : ℝ) := by positivity
  apply (div_le_iff₀ (Real.sqrt_pos.2 hp)).mpr
  have hn := Real.sq_sqrt (Nat.cast_nonneg n)
  have hn' := Real.sq_sqrt hp.le
  have hs := sq_nonneg (Real.sqrt ((n + 1 : ℕ) : ℝ) - Real.sqrt (n : ℝ))
  push_cast at hn' hs ⊢
  nlinarith

/-- The first reciprocal term improves the complete finite upper sum by one. -/
theorem reciprocalSqrt_sum_upper {N : ℕ} (hN : 1 ≤ N) :
    (∑ n ∈ Finset.Icc 1 N, 1 / Real.sqrt (n : ℝ)) ≤ 2 * Real.sqrt (N : ℝ) - 1 := by
  induction N, hN using Nat.le_induction with
  | base => norm_num
  | succ n hn ih =>
    rw [Finset.sum_Icc_succ_top (by omega)]
    have hs := reciprocalSqrt_upper_step n
    linarith only [ih, hs]

/-- The same actual finite sum has a total bound including the empty zero cutoff. -/
theorem reciprocalSqrt_sum_upper_total (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, 1 / Real.sqrt (n : ℝ)) ≤ 2 * Real.sqrt (N : ℝ) := by
  by_cases hN : N = 0
  · subst N
    simp
  · have hs := reciprocalSqrt_sum_upper (by omega : 1 ≤ N)
    linarith

private theorem reciprocalSqrt_lower_step (n : ℕ) :
    2 * (Real.sqrt ((n + 2 : ℕ) : ℝ) - Real.sqrt ((n + 1 : ℕ) : ℝ)) ≤
      1 / Real.sqrt ((n + 1 : ℕ) : ℝ) := by
  have hp : 0 < ((n + 1 : ℕ) : ℝ) := by positivity
  apply (le_div_iff₀ (Real.sqrt_pos.2 hp)).mpr
  have hn := Real.sq_sqrt hp.le
  have hn' := Real.sq_sqrt (show (0 : ℝ) ≤ ((n + 2 : ℕ) : ℝ) by positivity)
  have hs := sq_nonneg
    (Real.sqrt ((n + 2 : ℕ) : ℝ) - Real.sqrt ((n + 1 : ℕ) : ℝ))
  push_cast at hn hn' hs ⊢
  nlinarith

/-- Complete positive integer weights have a square-root lower mass. -/
theorem reciprocalSqrt_sum_lower (N : ℕ) :
    2 * Real.sqrt (N : ℝ) - 2 ≤ ∑ n ∈ Finset.Icc 1 N, 1 / Real.sqrt (n : ℝ) := by
  have hs : 2 * Real.sqrt ((N + 1 : ℕ) : ℝ) - 2 ≤
      ∑ n ∈ Finset.Icc 1 N, 1 / Real.sqrt (n : ℝ) := by
    induction N with
    | zero => norm_num
    | succ n ih =>
      rw [Finset.sum_Icc_succ_top (by omega)]
      have he := reciprocalSqrt_lower_step n
      push_cast at ih he ⊢
      rw [show (n : ℝ) + 1 + 1 = (n : ℝ) + 2 by ring]
      linarith only [ih, he]
  have hm := Real.sqrt_le_sqrt (show (N : ℝ) ≤ ((N + 1 : ℕ) : ℝ) by exact_mod_cast Nat.le_succ N)
  linarith

/-- An exact finite square-divisor reciprocal sieve bound isolates the two leading terms. -/
theorem reciprocalSquare_sum_upper (N : ℕ) :
    (∑ k ∈ Finset.Icc 2 N, 1 / (k : ℝ) ^ 2) ≤ 25 / 36 := by
  have haux {n : ℕ} (hn : 3 ≤ n) :
      (∑ k ∈ Finset.Icc 2 n, 1 / (k : ℝ) ^ 2) ≤ 25 / 36 - 1 / (n : ℝ) := by
    induction n, hn using Nat.le_induction with
    | base => norm_num [Finset.sum_Icc_succ_top]
    | succ n hn ih =>
      rw [Finset.sum_Icc_succ_top (by omega)]
      have hp : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
      have hp' : (0 : ℝ) < ((n + 1 : ℕ) : ℝ) := by positivity
      have he : 1 / (((n + 1 : ℕ) : ℝ)) ^ 2 ≤
          1 / (n : ℝ) - 1 / ((n + 1 : ℕ) : ℝ) := by
        push_cast
        field_simp
        nlinarith
      linarith
  by_cases hN : 3 ≤ N
  · have hs := haux hN
    have hi : 0 ≤ 1 / (N : ℝ) := by positivity
    linarith
  · have hN2 : N = 0 ∨ N = 1 ∨ N = 2 := by omega
    rcases hN2 with hN | hN | hN <;> subst N <;> norm_num

/-- Six actual square-divisor indices already supply enough of the saved first-term budget. -/
theorem reciprocal_small_square_divisor_bonus :
    (25 / 18 : ℝ) ≤ ∑ k ∈ Finset.Icc (2 : ℕ) 6, 1 / (k : ℝ) := by
  norm_num [Finset.sum_Icc_succ_top]

end
end RH16IndependentChallengeNext
