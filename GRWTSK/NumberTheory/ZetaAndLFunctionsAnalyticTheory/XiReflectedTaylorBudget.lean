/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Tactic

/-! The two exterior Poisson probes and a reflected fourth reciprocal power. -/
namespace GRWTSK.XiReflectedTaylorBudget

/-- Denominator of the reflected Poisson sum. -/
theorem pair_denominator (r d σ : ℝ) :
    ((r-σ)^2+d^2)*((r+σ)^2+d^2) =
      (r^2+d^2+σ^2)^2-4*r^2*σ^2 := by ring

/-- Numerator of the Poisson sum at either exterior radius. -/
theorem pair_poisson_numerator (r d σ : ℝ) :
    (r-σ)*((r+σ)^2+d^2)+(r+σ)*((r-σ)^2+d^2) =
      2*r*(r^2+d^2-σ^2) := by ring

/-- The sum of the absolute fourth-order pole costs has this numerator
after clearing the common squared denominator. -/
theorem pair_fourth_numerator (d σ : ℝ) :
    ((1-σ)^2+d^2)^2+((1+σ)^2+d^2)^2 =
      2*((1+d^2+σ^2)^2+4*σ^2) := by ring

/-- Exact positive slack on the real (critical-line) divisor. -/
theorem real_pair_slack {x : ℝ} (hx : 0 ≤ x) :
    (4/3)*(2/(1+x))-(2/3)*(4/(4+x))-2/(1+x)^2 =
        6*x/((1+x)^2*(4+x)) := by
  have h1 : 0 < 1+x := by linarith
  have h4 : 0 < 4+x := by linarith
  field_simp
  <;> ring

/-- Turning a local excess envelope into a necessary transverse energy. -/
theorem energy_of_violation {A P Q E k a b : ℝ} (hk : 0 < k)
    (h : A ≤ a*P-b*Q+k*E) (hfail : P < A) :
    (b*Q-(a-1)*P)/k < E := by
  apply (div_lt_iff₀ hk).2
  nlinarith

end GRWTSK.XiReflectedTaylorBudget
