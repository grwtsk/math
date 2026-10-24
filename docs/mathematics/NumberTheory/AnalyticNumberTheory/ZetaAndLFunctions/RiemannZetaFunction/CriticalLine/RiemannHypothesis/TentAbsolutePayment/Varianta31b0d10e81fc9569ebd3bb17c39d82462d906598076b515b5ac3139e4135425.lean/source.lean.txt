import FormalResearch.RiemannHypothesis.Conversation.FiniteTentAbsoluteMass
import FormalResearch.RiemannHypothesis.Conversation.PolynomialMertensReduction

/-!
# The actual finite tent's absolute payment has no logarithmic polynomial cap

The checked multiples-of-six lower bound is consumed at x=exp(t), giving
exp(t/2)/24. That actual absolute payment exceeds every fixed polynomial in
t. The signed tent is a different object: this proof forbids only the
termwise-absolute payment route to its logarithmic polynomial target.

Source: audited RH conversation Batch 3, FA05 and LT03-14. Human arithmetic
direction: grwtsk contributors. Local consumer: OpenAI Codex. Mathlib's
exponential limit and the existing repository source identities are retained.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.TentAbsolutePayment

open FiniteTentAbsoluteMass PolynomialMertensReduction Filter
noncomputable section

def logarithmicAbsoluteMass (t : ℝ) : ℝ := absoluteTentMass (Real.exp t)

def signedTent (x : ℝ) : ℝ :=
  (∑ n ∈ Finset.Icc 2 ⌊16 * x⌋₊,
    (ArithmeticFunction.vonMangoldt n - 1) * tentWeight (n / x)) / Real.sqrt x

theorem exact_termwise_absolute_upper {x : ℝ} (hx : 0 < x) :
    |signedTent x| ≤ absoluteTentMass x := by
  unfold signedTent absoluteTentMass
  rw [abs_div, abs_of_pos (Real.sqrt_pos.mpr hx)]
  apply div_le_div_of_nonneg_right _ (Real.sqrt_nonneg x)
  have h := Finset.abs_sum_le_sum_abs (s := Finset.Icc 2 ⌊16 * x⌋₊)
    (f := fun n ↦ (ArithmeticFunction.vonMangoldt n - 1) * tentWeight (n / x))
  simpa only [abs_mul, abs_of_nonneg (tent_weight_nonnegative _)] using h

theorem literal_logarithmic_lower {t : ℝ} (ht : Real.log 6 ≤ t) :
    Real.exp (t / 2) / 24 ≤ logarithmicAbsoluteMass t := by
  have h6 : (6 : ℝ) ≤ Real.exp t := by
    calc
      6 = Real.exp (Real.log 6) := (Real.exp_log (by norm_num)).symm
      _ ≤ _ := Real.exp_le_exp.mpr ht
  have hs := Real.sq_sqrt (Real.exp_pos t).le
  have he : Real.exp (t / 2) ^ 2 = Real.exp t := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have hroot : Real.sqrt (Real.exp t) = Real.exp (t / 2) := by
    nlinarith [Real.sqrt_nonneg (Real.exp t), Real.exp_pos (t / 2)]
  have h := actual_absolute_tent_mass_lower h6
  rw [hroot] at h
  exact h

theorem actual_absolute_payment_exceeds_every_polynomial (C : ℝ) (m : ℕ)
    {R : ℝ} (hR : 1 ≤ R) :
    ∃ t : ℝ, R ≤ t ∧ C * t ^ m < logarithmicAbsoluteMass t := by
  have hevent : ∀ᶠ u : ℝ in atTop,
      24 * C * (2 : ℝ) ^ m + 1 < Real.exp u / u ^ m :=
    (Real.tendsto_exp_div_pow_atTop m).eventually
      (eventually_gt_atTop (24 * C * (2 : ℝ) ^ m + 1))
  obtain ⟨U, hU⟩ := eventually_atTop.mp hevent
  let u := max U (max R (max (Real.log 6) 1))
  have huU : U ≤ u := le_max_left _ _
  have huR : R ≤ u := (le_max_left _ _).trans (le_max_right _ _)
  have huL : Real.log 6 ≤ u :=
    (le_max_left _ _).trans ((le_max_right _ _).trans (le_max_right _ _))
  have hu1 : 1 ≤ u := hR.trans huR
  have hu0 : 0 < u := by linarith
  have hp : 0 < u ^ m := pow_pos hu0 _
  have hbig := (lt_div_iff₀ hp).mp (hU u huU)
  have hlow := literal_logarithmic_lower (by linarith : Real.log 6 ≤ 2 * u)
  rw [show 2 * u / 2 = u by ring] at hlow
  refine ⟨2 * u, by linarith, ?_⟩
  rw [mul_pow]
  nlinarith

theorem no_logarithmic_polynomial_absolute_payment :
    ¬ EventuallyPolynomialUpper logarithmicAbsoluteMass := by
  rintro ⟨m, C, hC, R, hR, hbound⟩
  obtain ⟨t, ht, hbig⟩ := actual_absolute_payment_exceeds_every_polynomial C m hR
  exact (not_lt_of_ge (hbound t ht)) hbig

end
end GRWTSK.RiemannHypothesis.Conversation.TentAbsolutePayment
