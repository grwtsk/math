import FormalResearch.RiemannHypothesis.Conversation.FiniteObstructions

/-!
# Separation mass and mode savings must both pay the retained residual

The bounded B21-L05 interface has a complete finite separated mode bank and
an explicit residual. Splitting epsilon between transform mass and mode
bounds gives the minimum of the two supplied gains. The actual six-port
Eisenstein decomposition, all profile seminorms, infinite tails and uniform
arithmetic estimates remain separate; none is inferred from factorization.

Human profile/separation fidelity: grwtsk contributors. Local complete finite
packet budget and exact bottleneck consumer: OpenAI Codex. Mathlib norm and
real-power inequalities retain upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.SeparationGainConsumer
open scoped BigOperators
noncomputable section

theorem full_finite_packet_budget {ι : Type*} (s : Finset ι)
    (coefficient mode : ι → ℂ) (residual : ℂ) {T epsilon deltaSep deltaIII Cm Cb Cr : ℝ}
    (hT : 1 ≤ T) (hCm : 0 ≤ Cm) (hCb : 0 ≤ Cb) (hCr : 0 ≤ Cr)
    (hmass : ∑ i ∈ s, ‖coefficient i‖ ≤ Cm * T ^ (epsilon / 2))
    (hmode : ∀ i ∈ s, ‖mode i‖ ≤ Cb * T ^ (1 - deltaIII + epsilon / 2))
    (hresidual : ‖residual‖ ≤ Cr * T ^ (1 - deltaSep + epsilon)) :
    ‖(∑ i ∈ s, coefficient i * mode i) + residual‖ ≤
      (Cm * Cb + Cr) * T ^ (1 - min deltaSep deltaIII + epsilon) := by
  have hT0 : 0 < T := by linarith
  have hm : ‖∑ i ∈ s, coefficient i * mode i‖ ≤
      (∑ i ∈ s, ‖coefficient i‖) * (Cb * T ^ (1 - deltaIII + epsilon / 2)) := by
    calc
      _ ≤ ∑ i ∈ s, ‖coefficient i * mode i‖ := norm_sum_le _ _
      _ ≤ ∑ i ∈ s, ‖coefficient i‖ * (Cb * T ^ (1 - deltaIII + epsilon / 2)) := by
        apply Finset.sum_le_sum
        intro i hi
        rw [norm_mul]
        exact mul_le_mul_of_nonneg_left (hmode i hi) (norm_nonneg _)
      _ = _ := (Finset.sum_mul _ _ _).symm
  have hbank : ‖∑ i ∈ s, coefficient i * mode i‖ ≤
      Cm * Cb * T ^ (1 - deltaIII + epsilon) := by
    have hp := mul_le_mul_of_nonneg_right hmass
      (mul_nonneg hCb (Real.rpow_nonneg hT0.le (1 - deltaIII + epsilon / 2)))
    have he : (Cm * T ^ (epsilon / 2)) * (Cb * T ^ (1 - deltaIII + epsilon / 2)) =
        Cm * Cb * T ^ (1 - deltaIII + epsilon) := by
      calc
        _ = Cm * Cb * (T ^ (epsilon / 2) * T ^ (1 - deltaIII + epsilon / 2)) := by ring
        _ = _ := by rw [← Real.rpow_add hT0]; congr 2; ring
    exact hm.trans (he ▸ hp)
  have hbpow : T ^ (1 - deltaIII + epsilon) ≤ T ^ (1 - min deltaSep deltaIII + epsilon) :=
    Real.rpow_le_rpow_of_exponent_le hT (by linarith [min_le_right deltaSep deltaIII])
  have hrpow : T ^ (1 - deltaSep + epsilon) ≤ T ^ (1 - min deltaSep deltaIII + epsilon) :=
    Real.rpow_le_rpow_of_exponent_le hT (by linarith [min_le_left deltaSep deltaIII])
  have hb := hbank.trans (mul_le_mul_of_nonneg_left hbpow (mul_nonneg hCm hCb))
  have hr := hresidual.trans (mul_le_mul_of_nonneg_left hrpow hCr)
  calc
    _ ≤ ‖∑ i ∈ s, coefficient i * mode i‖ + ‖residual‖ := norm_add_le _ _
    _ ≤ _ := by nlinarith

theorem both_gains_reach_high_certificate {deltaSep deltaIII : ℝ}
    (hs : 49 / 4590 ≤ deltaSep) (hm : 49 / 4590 ≤ deltaIII) :
    (7 / 8 : ℝ) - min deltaSep deltaIII / 96 ≤ 385511 / 440640 :=
  FiniteObstructions.exceptional_gain_bottleneck (le_min hs hm)

theorem positive_joint_gain_improves_low_exponent {deltaSep deltaIII : ℝ}
    (hs : 0 < deltaSep) (hm : 0 < deltaIII) :
    (7 / 8 : ℝ) - min deltaSep deltaIII / 96 < 7 / 8 := by
  have h := lt_min hs hm
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.SeparationGainConsumer
