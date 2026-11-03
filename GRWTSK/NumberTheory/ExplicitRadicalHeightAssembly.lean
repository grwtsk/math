/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ExplicitHeightExponentExtraction

set_option autoImplicit false
noncomputable section

/-! Final analytic exponent assembly with all constants retained.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.ExplicitRadicalHeightAssembly
open ExplicitHeightExponentExtraction

theorem explicit_radical_height (x R K δ α : ℝ)
    (hx : 0<x) (hR : 0<R) (hK : 0≤K) (hα : 0<α) (hα1 : α<1)
    (hheight : x≤(K*R^(1+δ))*Real.log x/Real.log 2) :
    x≤(K*Real.exp (-1)/(α*Real.log 2))^((1-α)⁻¹)*R^((1+δ)/(1-α)) := by
  have hh := height_exponent_extraction x (K*R^(1+δ)) α hx
    (mul_nonneg hK (Real.rpow_nonneg hR.le _)) hα hα1 hheight
  have htwo : 0<Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  have hc : 0≤K*Real.exp (-1)/(α*Real.log 2) := by positivity
  have he : (K*R^(1+δ))*Real.exp (-1)/(α*Real.log 2)=
      (K*Real.exp (-1)/(α*Real.log 2))*R^(1+δ) := by ring
  rw [he,Real.mul_rpow hc (Real.rpow_nonneg hR.le _),← Real.rpow_mul hR.le] at hh
  simpa only [div_eq_mul_inv] using hh

theorem explicit_epsilon_height (x R K ε : ℝ)
    (hx : 0<x) (hR : 0<R) (hK : 0≤K) (hε : 0<ε)
    (hheight : x≤(K*R^(1+ε/2))*Real.log x/Real.log 2) :
    x≤(K*Real.exp (-1)/((ε/(2*(1+ε)))*Real.log 2))^
      ((1-ε/(2*(1+ε)))⁻¹)*R^(1+ε) := by
  obtain ⟨ha,ha1,he⟩ := epsilon_slack_choice ε hε
  have hh := explicit_radical_height x R K (ε/2) (ε/(2*(1+ε)))
    hx hR hK ha ha1 hheight
  simpa only [he] using hh

/- For the actual source take x=c, R=rad(abc), K=exp(A), and obtain
hheight from actual_log_radical_budget_height after literal R-power
reassociation. That arithmetic budget is UNSUPPLIED; W≠0 and defect≠0
remain its explicit hypotheses. W=0 cannot be added by this real analysis. -/
end GRWTSK.NumberTheory.ABC.ExplicitRadicalHeightAssembly
