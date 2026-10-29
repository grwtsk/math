import FormalResearch.RiemannHypothesis.Conversation.CriticalTwoModeRecords
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

/-!
# Literal two-frequency deficit defeats a finite native tail-energy cap

The complete actual prefix maximum has a polynomial lower deficit. Its
native tail price, with remaining width 2*exp(-T/2), tends to infinity for
every fixed real p>1. Every energy that proves the source's exact tail-price
inequality therefore diverges. The inequality is an explicit premise, not
an axiom or an invented discrete record enumeration. Constructing the
source's record partition and deriving that inequality for its complete
energy remain separate. Human unchanged-prefix and native-width direction:
grwtsk contributors. Local conditional asymptotic consumer: OpenAI Codex.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeEnergyBarrier
open CriticalTwoModeDiophantine CriticalTwoModeRecords Filter
noncomputable section

def nativeTailPrice (α t₀ p T : ℝ) : ℝ :=
  (2-prefixMaximum α t₀ T)^p / (2*Real.exp (-T/2))^(p-1)

def lowerNativePrice (k p T : ℝ) : ℝ :=
  (k/T^2)^p / (2*Real.exp (-T/2))^(p-1)

theorem literal_lower_native_price_formula {k T : ℝ} (hk : 0 < k) (hT : 0 < T) (p : ℝ) :
    lowerNativePrice k p T =
      (k^p / (2 : ℝ)^(p-1)) * (Real.exp (((p-1)/2)*T) / T^(2*p)) := by
  have ht2 : (T^2 : ℝ)^p = T^(2*p) := by
    rw [← Real.rpow_two,← Real.rpow_mul hT.le]
  unfold lowerNativePrice
  rw [Real.div_rpow hk.le (sq_nonneg T),ht2,
    Real.mul_rpow (by norm_num : (0 : ℝ) ≤ 2) (Real.exp_pos _).le,← Real.exp_mul]
  have he : (-T/2)*(p-1) = -(((p-1)/2)*T) := by ring
  rw [he,Real.exp_neg]
  field_simp

theorem literal_lower_native_price_tends_to_infinity {k p : ℝ} (hk : 0 < k) (hp : 1 < p) :
    Tendsto (lowerNativePrice k p) atTop atTop := by
  have h := tendsto_exp_mul_div_rpow_atTop (2*p) ((p-1)/2) (by linarith)
  have hc : 0 < k^p / (2 : ℝ)^(p-1) :=
    div_pos (Real.rpow_pos_of_pos hk _) (Real.rpow_pos_of_pos (by norm_num) _)
  have hscaled := h.const_mul_atTop hc
  apply hscaled.congr'
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with T hT
  exact (literal_lower_native_price_formula hk hT p).symm

theorem literal_native_tail_price_tends_to_infinity {α t₀ p : ℝ}
    (hα : BadlyApproximable α) (ht₀ : 0 < t₀) (hp : 1 < p) :
    Tendsto (nativeTailPrice α t₀ p) atTop atTop := by
  obtain ⟨k,hk,hbound⟩ := literal_prefix_maximum_uniform_deficit hα ht₀
  apply tendsto_atTop_mono' atTop _ (literal_lower_native_price_tends_to_infinity hk hp)
  filter_upwards [eventually_ge_atTop (1 : ℝ),eventually_ge_atTop t₀] with T hT1 hT
  unfold lowerNativePrice nativeTailPrice
  apply div_le_div_of_nonneg_right _ (by positivity)
  exact Real.rpow_le_rpow (by positivity) (hbound T hT1 hT) (by linarith)

theorem literal_energy_with_exact_tail_price_diverges {α t₀ p : ℝ}
    (hα : BadlyApproximable α) (ht₀ : 0 < t₀) (hp : 1 < p) (E : ℝ → ℝ)
    (hE : ∀ T : ℝ, 1 ≤ T → t₀ ≤ T → nativeTailPrice α t₀ p T ≤ E T) :
    Tendsto E atTop atTop := by
  apply tendsto_atTop_mono' atTop _ (literal_native_tail_price_tends_to_infinity hα ht₀ hp)
  filter_upwards [eventually_ge_atTop (1 : ℝ),eventually_ge_atTop t₀] with T hT1 hT
  exact hE T hT1 hT

theorem literal_energy_with_exact_tail_price_has_no_finite_cap {α t₀ p : ℝ}
    (hα : BadlyApproximable α) (ht₀ : 0 < t₀) (hp : 1 < p) (E : ℝ → ℝ)
    (hE : ∀ T : ℝ, 1 ≤ T → t₀ ≤ T → nativeTailPrice α t₀ p T ≤ E T) :
    ¬ ∃ B R : ℝ, ∀ T : ℝ, R ≤ T → E T ≤ B := by
  rintro ⟨B,R,hcap⟩
  have hlarge := (literal_energy_with_exact_tail_price_diverges hα ht₀ hp E hE).eventually
    (eventually_gt_atTop B)
  obtain ⟨S,hS⟩ := eventually_atTop.mp hlarge
  exact (not_lt_of_ge (hcap (max S R) (le_max_right _ _)))
    (hS (max S R) (le_max_left _ _))

end
end GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeEnergyBarrier
