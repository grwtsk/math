/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ActualDefectLogHeightConsumer

set_option autoImplicit false
noncomputable section

/-! Explicit exponential tangent bound pays for logarithmic absorption.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.ExplicitLogarithmAbsorption

theorem log_le_exp_neg_one_rpow (x α : ℝ) (hx : 0<x) (hα : 0<α) :
    Real.log x ≤ (Real.exp (-1)/α)*x^α := by
  have h := Real.add_one_le_exp (α*Real.log x-1)
  have he : Real.exp (α*Real.log x-1)=x^α*Real.exp (-1) := by
    rw [show α*Real.log x-1=Real.log x*α+(-1) by ring,
      Real.exp_add,Real.rpow_def_of_pos hx]
  rw [he] at h
  apply (mul_le_mul_left hα).mp
  have hn : α≠0 := ne_of_gt hα
  field_simp
  nlinarith

theorem height_log_absorption (x K α : ℝ) (hx : 0<x) (hK : 0≤K) (hα : 0<α)
    (hheight : x≤K*Real.log x/Real.log 2) :
    x^(1-α) ≤ K*Real.exp (-1)/(α*Real.log 2) := by
  have htwo : 0<Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  have hp : 0<x^α := Real.rpow_pos_of_pos hx α
  have hl := log_le_exp_neg_one_rpow x α hx hα
  have hh : x≤(K*Real.exp (-1)/(α*Real.log 2))*x^α := by
    apply hheight.trans
    calc
      _ ≤ K*((Real.exp (-1)/α)*x^α)/Real.log 2 :=
        div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hl hK) htwo.le
      _ = _ := by ring
  have hd : x/x^α≤K*Real.exp (-1)/(α*Real.log 2) :=
    (div_le_iff₀ hp).mpr hh
  simpa [Real.rpow_sub hx,Real.rpow_one] using hd

/- With K=exp(A)*R^(1+delta), 0<alpha<1 yields
c <= (exp(A-1)/(alpha*log 2))^(1/(1-alpha))*R^((1+delta)/(1-alpha)).
Choosing delta=epsilon/2 and alpha=epsilon/(2*(1+epsilon)) gives exactly
1+epsilon. The actual defect log budget and W=0 height remain missing;
this analytic absorption does not supply either arithmetic premise. -/
end GRWTSK.NumberTheory.ABC.ExplicitLogarithmAbsorption
