import FormalResearch.RiemannHypothesis.Conversation.PolynomialMertensReduction

/-!
# Every fixed exponential loss does not imply a fixed polynomial loss

Batch 03's quantifier guard is proved in the logarithmic variable. The positive
profile exp(sqrt(t)) lies eventually below exp(epsilon*t) for every fixed
epsilon>0, but has no eventual polynomial upper bound. Its thresholds may
depend on epsilon. This is a comparison-system countermodel, not the actual
prime source, a failure of Problem P or a counterexample to RH.

Human quantifier direction: grwtsk contributors. Local countermodel and Lean
proof: OpenAI Codex. Exponential limits retain their Mathlib identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.SubexponentialCountermodel

open PolynomialMertensReduction Filter
noncomputable section

/-- The comparison profile in this module, with the following exact parameterization.

def comparisonProfile (t : ℝ) : ℝ := Real.exp (Real.sqrt t)
-/
def comparisonProfile (t : ℝ) : ℝ := Real.exp (Real.sqrt t)

theorem explicit_exponential_loss {ε t : ℝ} (hε : 0 < ε) (ht : 0 ≤ t) :
    comparisonProfile t ≤ Real.exp (1 / (4 * ε)) * Real.exp (ε * t) := by
  have hi : ε * (Real.sqrt t - 1 / (2 * ε)) ^ 2 =
      ε * t - Real.sqrt t + 1 / (4 * ε) := by
    field_simp [hε.ne']
    nlinarith [congrArg (fun x : ℝ => ε ^ 2 * x) (Real.sq_sqrt ht)]
  have hn := mul_nonneg hε.le (sq_nonneg (Real.sqrt t - 1 / (2 * ε)))
  have hb : Real.sqrt t ≤ ε * t + 1 / (4 * ε) := by linarith
  calc
    _ ≤ Real.exp (ε * t + 1 / (4 * ε)) := Real.exp_le_exp.mpr hb
    _ = _ := by rw [Real.exp_add]; ring

theorem powered_profile_epsilon_bound (a : ℝ) {ε Z : ℝ} (hε : 0 < ε) (hZ : 1 ≤ Z) :
    Z ^ a * comparisonProfile (Real.log Z) ≤ Real.exp (1 / (4 * ε)) * Z ^ (a + ε) := by
  have hZ0 : 0 < Z := by linarith
  have hlog : 0 ≤ Real.log Z := Real.log_nonneg hZ
  have hp : Z ^ a * Real.exp (ε * Real.log Z) = Z ^ (a + ε) := by
    rw [Real.rpow_def_of_pos hZ0, Real.rpow_def_of_pos hZ0, ← Real.exp_add]
    congr 1
    ring
  calc
    _ ≤ Z ^ a * (Real.exp (1 / (4 * ε)) * Real.exp (ε * Real.log Z)) :=
      mul_le_mul_of_nonneg_left (explicit_exponential_loss hε hlog)
        (Real.rpow_nonneg hZ0.le a)
    _ = Real.exp (1 / (4 * ε)) * (Z ^ a * Real.exp (ε * Real.log Z)) := by ring
    _ = _ := by rw [hp]

theorem every_fixed_exponential_loss {ε : ℝ} (hε : 0 < ε) :
    ∃ T : ℝ, 1 ≤ T ∧ ∀ t : ℝ, T ≤ t → comparisonProfile t ≤ Real.exp (ε * t) := by
  refine ⟨max 1 ((1 / ε) ^ 2), le_max_left _ _, ?_⟩
  intro t ht
  have ht1 : 1 ≤ t := (le_max_left _ _).trans ht
  have ht0 : 0 ≤ t := by linarith
  have hsq : (1 / ε) ^ 2 ≤ t := (le_max_right _ _).trans ht
  have hs := Real.sqrt_le_sqrt hsq
  rw [Real.sqrt_sq_eq_abs, abs_of_pos (by positivity : 0 < (1 : ℝ) / ε)] at hs
  have hεs : 1 ≤ ε * Real.sqrt t := by
    have h := mul_le_mul_of_nonneg_left hs hε.le
    simpa only [mul_one_div_cancel hε.ne'] using h
  have h := mul_le_mul_of_nonneg_right hεs (Real.sqrt_nonneg t)
  rw [one_mul] at h
  have hsquare := Real.sq_sqrt ht0
  unfold comparisonProfile
  apply Real.exp_le_exp.mpr
  nlinarith

theorem exceeds_every_polynomial (C : ℝ) (m : ℕ) {R : ℝ} (hR : 1 ≤ R) :
    ∃ t : ℝ, R ≤ t ∧ C * t ^ m < comparisonProfile t := by
  have hevent : ∀ᶠ u : ℝ in atTop, C + 1 < Real.exp u / u ^ (2 * m) :=
    (Real.tendsto_exp_div_pow_atTop (2 * m)).eventually (eventually_gt_atTop (C + 1))
  obtain ⟨U, hU⟩ := eventually_atTop.mp hevent
  let u := max U (max (Real.sqrt R) 1)
  have huU : U ≤ u := le_max_left _ _
  have hu1 : 1 ≤ u := (le_max_right _ _).trans (le_max_right _ _)
  have hu0 : 0 < u := by linarith
  have huR : Real.sqrt R ≤ u := (le_max_left _ _).trans (le_max_right _ _)
  have hp : 0 < u ^ (2 * m) := pow_pos hu0 _
  have hbig := (lt_div_iff₀ hp).mp (hU u huU)
  refine ⟨u ^ 2, ?_, ?_⟩
  · have hs := Real.sq_sqrt (by linarith : 0 ≤ R)
    nlinarith [mul_self_le_mul_self (Real.sqrt_nonneg R) huR]
  · unfold comparisonProfile
    rw [Real.sqrt_sq_eq_abs, abs_of_pos hu0, ← pow_mul]
    nlinarith

theorem no_eventual_polynomial_upper : ¬ EventuallyPolynomialUpper comparisonProfile := by
  rintro ⟨m, C, _hC, R, hR, hbound⟩
  obtain ⟨t, ht, hbig⟩ := exceeds_every_polynomial C m hR
  exact (not_lt_of_ge (hbound t ht)) hbig

theorem exceeds_every_real_power (C B : ℝ) {R : ℝ} (hR : 1 ≤ R) :
    ∃ t : ℝ, R ≤ t ∧ C * t ^ B < comparisonProfile t := by
  by_cases hC : 0 ≤ C
  · obtain ⟨m, hm⟩ := exists_nat_gt B
    obtain ⟨t, ht, hbig⟩ := exceeds_every_polynomial C m hR
    have ht1 : 1 ≤ t := hR.trans ht
    have hp := Real.rpow_le_rpow_of_exponent_le ht1 hm.le
    rw [Real.rpow_natCast] at hp
    exact ⟨t, ht, (mul_le_mul_of_nonneg_left hp hC).trans_lt hbig⟩
  · refine ⟨R, le_rfl, ?_⟩
    have hp : 0 < comparisonProfile R := Real.exp_pos _
    have hleft : C * R ^ B ≤ 0 := mul_nonpos_of_nonpos_of_nonneg
      (lt_of_not_ge hC).le (Real.rpow_nonneg (by linarith : 0 ≤ R) B)
    exact hleft.trans_lt hp

end
end GRWTSK.RiemannHypothesis.Conversation.SubexponentialCountermodel
