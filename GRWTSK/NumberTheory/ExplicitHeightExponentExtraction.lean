/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ExplicitLogarithmAbsorption

set_option autoImplicit false
noncomputable section

/-! Explicit analytic extraction only. No actual arithmetic defect budget
is supplied. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.ExplicitHeightExponentExtraction
open ExplicitLogarithmAbsorption

theorem height_exponent_extraction (x K α : ℝ) (hx : 0<x) (hK : 0≤K)
    (hα : 0<α) (hα1 : α<1) (hheight : x≤K*Real.log x/Real.log 2) :
    x≤(K*Real.exp (-1)/(α*Real.log 2))^((1-α)⁻¹) := by
  have hh := height_log_absorption x K α hx hK hα hheight
  have hp : 0<1-α := by linarith
  have he := Real.rpow_le_rpow (Real.rpow_nonneg hx.le (1-α)) hh
    (inv_nonneg.mpr hp.le)
  simpa only [Real.rpow_rpow_inv hx.le (ne_of_gt hp)] using he

theorem epsilon_slack_choice (ε : ℝ) (hε : 0<ε) :
    0<ε/(2*(1+ε)) ∧ ε/(2*(1+ε))<1 ∧
      (1+ε/2)/(1-ε/(2*(1+ε)))=1+ε := by
  have hp : 0<2*(1+ε) := by positivity
  have ha : ε/(2*(1+ε))<1 := (div_lt_one hp).mpr (by linarith)
  refine ⟨div_pos hε hp,ha,?_⟩
  have hn : 1-ε/(2*(1+ε))≠0 := ne_of_gt (by linarith)
  field_simp
  <;> ring

/- After factoring K=exp(A)*R^(1+epsilon/2), the exponent is exactly
1+epsilon by epsilon_slack_choice. Constants retain their dependence on
A and epsilon. The source weighted log-radical estimate and W=0 height
branch remain unsupplied; no ABC conclusion is asserted. -/
end GRWTSK.NumberTheory.ABC.ExplicitHeightExponentExtraction
