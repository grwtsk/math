import FormalResearch.RiemannHypothesis.Conversation.FixedTranslationFilter

/-!
# Fixed detector margins and complete ten-probe payments

The exact fixed multiplier has a quantitative positive right-half-plane margin,
not only a nonzero test. The ninth difference retains the absolute payment of
all ten source samples. A uniform absolute cap on those samples pays 512 times
that cap. This does not derive a signed filter bound from a one-sided source
bound, nor establish any actual arithmetic sample cap or Landau return.

Human complete-source budget requirement: grwtsk contributors. Local next
consumer: OpenAI Codex. Mathlib exponential and norm inequalities retain their
upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.FixedFilterBudget
open FixedTranslationFilter
open scoped BigOperators
noncomputable section

theorem quantitative_detector_margin (k : ℕ) {h : ℝ} {s : ℂ}
    (hh : 0 < h) (hs : 0 < s.re) :
    (Real.exp (h * s.re) - 1) ^ k ≤ ‖multiplier k h s‖ := by
  have hn := norm_sub_norm_le (Complex.exp ((h : ℂ) * s)) (1 : ℂ)
  have hreal : ‖Complex.exp ((h : ℂ) * s)‖ = Real.exp (h * s.re) := by
    rw [Complex.norm_exp]; simp
  rw [hreal, norm_one] at hn
  have hpos : 0 ≤ Real.exp (h * s.re) - 1 := by
    have he := Real.one_lt_exp_iff.mpr (mul_pos hh hs)
    linarith
  rw [exact_binomial_multiplier, norm_pow]
  exact pow_le_pow_left₀ hpos hn k

theorem complete_ninth_absolute_payment (h A : ℝ) :
    |ninthDifference h A| ≤ ∑ j ∈ Finset.range 10,
      ((9 : ℕ).choose j : ℝ) * |weightedSource (A + (j : ℝ) * h)| := by
  unfold ninthDifference
  calc
    _ ≤ ∑ j ∈ Finset.range 10, |(-1 : ℝ) ^ (9 - j) *
      ((9 : ℕ).choose j : ℝ) * weightedSource (A + (j : ℝ) * h)| :=
        Finset.abs_sum_le_sum_abs _ _
    _ = _ := by
      apply Finset.sum_congr rfl
      intro j _hj
      simp [abs_mul, abs_pow]

theorem ten_probe_absolute_cap_payment {h A B : ℝ}
    (hcap : ∀ j ∈ Finset.range 10, |weightedSource (A + (j : ℝ) * h)| ≤ B) :
    |ninthDifference h A| ≤ 512 * B := by
  apply (complete_ninth_absolute_payment h A).trans
  calc
    _ ≤ ∑ j ∈ Finset.range 10, ((9 : ℕ).choose j : ℝ) * B := by
      apply Finset.sum_le_sum
      intro j hj
      exact mul_le_mul_of_nonneg_left (hcap j hj) (Nat.cast_nonneg _)
    _ = 512 * B := by
      rw [← Finset.sum_mul]
      norm_num [Finset.sum_range_succ, Nat.choose]

theorem margin_is_positive {k : ℕ} {h : ℝ} {s : ℂ}
    (hh : 0 < h) (hs : 0 < s.re) : 0 < (Real.exp (h * s.re) - 1) ^ k := by
  apply pow_pos
  exact sub_pos.mpr (Real.one_lt_exp_iff.mpr (mul_pos hh hs))

end
end GRWTSK.RiemannHypothesis.Conversation.FixedFilterBudget
