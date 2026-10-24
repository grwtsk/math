# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AbsoluteEnvelopeFiniteBudget.Variantd15e4e422100d4fa84380286a989d47826f31ae26fc72d55ec9f8c713ffa77d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9ee815428dde726b6e13fba65cfc8dba451a308` · SHA-256 `d15e4e422100d4fa84380286a989d47826f31ae26fc72d55ec9f8c713ffa77d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateAbsoluteMertensEnvelope
import FormalResearch.RiemannHypothesis.Conversation.SubexponentialCountermodel

/-!
# A proposed absolute-envelope budget grows on the unchanged source cutoffs

The existing quarter-power envelope lemma is consumed at A^2 and exp(2A).
Its exact finite budget is 4*(exp(A/2)-sqrt(A)), which has no eventual
polynomial upper bound. Any interval-integrable proposed delta/sqrt(x)
majorant that dominates that envelope pays at least the same amount.

This lower bound concerns the proposed absolute majorant, not the actual
Mertens function, actual signed source integral or a zero of zeta. The
source's signed cancellation obligation remains open. Human envelope/sign
and exact-cutoff direction: grwtsk contributors. Local finite-domain consumer:
OpenAI Codex. The imported project envelope lemmas and Mathlib integration
and exponential laws retain their qualified identities.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.AbsoluteEnvelopeFiniteBudget
open MeasureTheory Set Filter PolynomialMertensReduction SubexponentialCountermodel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateAbsoluteMertensEnvelope
noncomputable section

/-- The quarter budget in this module, with the following exact parameterization.

def quarterBudget (A : ℝ) : ℝ := ∫ x in A ^ 2..Real.exp (2 * A), x ^ (-3 / 4 : ℝ)
-/
def quarterBudget (A : ℝ) : ℝ := ∫ x in A ^ 2..Real.exp (2 * A), x ^ (-3 / 4 : ℝ)
/-- The paid budget in this module, with the following exact parameterization.

def paidBudget (delta : ℝ → ℝ) (A : ℝ) : ℝ := ∫ x in A ^ 2..Real.exp (2 * A), delta x /
Real.sqrt x
-/
def paidBudget (delta : ℝ → ℝ) (A : ℝ) : ℝ :=
  ∫ x in A ^ 2..Real.exp (2 * A), delta x / Real.sqrt x

theorem exact_source_quarter_budget {A : ℝ} (hA : 0 ≤ A) :
    quarterBudget A = 4 * (Real.exp (A / 2) - Real.sqrt A) := by
  rw [quarterBudget, three_quarter_power_integral]
  have hup : Real.exp (2 * A) ^ (1 / 4 : ℝ) = Real.exp (A / 2) := by
    rw [← Real.exp_mul]; congr 1; ring
  have hlo : (A ^ (2 : ℕ)) ^ (1 / 4 : ℝ) = Real.sqrt A := by
    rw [← Real.rpow_natCast A 2, ← Real.rpow_mul hA, Real.sqrt_eq_rpow]
    norm_num
  rw [hup, hlo]

theorem exact_quarter_budget_dominates_subexponential_profile {A : ℝ} (hA : 16 ≤ A) :
    comparisonProfile A ≤ quarterBudget A := by
  have hA0 : 0 ≤ A := by linarith
  have hs := Real.sq_sqrt hA0
  have hy : 4 ≤ Real.sqrt A := by nlinarith [Real.sqrt_nonneg A]
  have hhalf : Real.sqrt A + Real.sqrt A ≤ A / 2 := by nlinarith
  have he := Real.add_one_le_exp (Real.sqrt A)
  have he2 : Real.exp (Real.sqrt A) ^ 2 ≤ Real.exp (A / 2) := by
    simpa only [Real.exp_add, pow_two] using Real.exp_le_exp.mpr hhalf
  rw [exact_source_quarter_budget hA0, comparisonProfile]
  nlinarith

theorem quarter_budget_has_no_eventual_polynomial_upper :
    ¬ EventuallyPolynomialUpper quarterBudget := by
  rintro ⟨m, C, R, _hC, hR, hcap⟩
  obtain ⟨A, hA, hbig⟩ := exceeds_every_polynomial C m
    (R := max R 16) (by exact hR.trans (le_max_left _ _))
  have h16 := (le_max_right R 16).trans hA
  have hRA := (le_max_left R 16).trans hA
  exact (not_lt_of_ge ((exact_quarter_budget_dominates_subexponential_profile h16).trans
    (hcap A hRA))) hbig

theorem source_quarter_budget_le_proposed_absolute_payment {A : ℝ} (hA : 1 ≤ A)
    (delta : ℝ → ℝ)
    (hint : IntervalIntegrable (fun x ↦ delta x / Real.sqrt x) volume
      (A ^ 2) (Real.exp (2 * A)))
    (hdelta : ∀ x ∈ Icc (A ^ 2) (Real.exp (2 * A)), x ^ (-1 / 4 : ℝ) ≤ delta x) :
    quarterBudget A ≤ paidBudget delta A := by
  have hA0 : 0 ≤ A := by linarith
  have he : A ≤ Real.exp A := by linarith [Real.add_one_le_exp A]
  have horder : A ^ 2 ≤ Real.exp (2 * A) := by
    have hp := mul_self_le_mul_self hA0 he
    simpa only [show 2 * A = A + A by ring, Real.exp_add, pow_two] using hp
  have hcont : ContinuousOn (fun x : ℝ ↦ x ^ (-3 / 4 : ℝ))
      (uIcc (A ^ 2) (Real.exp (2 * A))) := by
    rw [uIcc_of_le horder]
    apply continuousOn_id.rpow_const
    intro x hx
    left
    change x ≠ 0
    have hxlow := hx.1
    nlinarith
  apply intervalIntegral.integral_mono_on horder hcont.intervalIntegrable hint
  intro x hx
  have hx0 : 0 < x := by have := hx.1; nlinarith
  rw [← quarter_power_div_sqrt x hx0]
  exact div_le_div_of_nonneg_right (hdelta x hx) (Real.sqrt_nonneg x)


theorem proposed_absolute_payment_has_no_eventual_polynomial_upper
    (delta : ℝ → ℝ) {R : ℝ} (hR : 1 ≤ R)
    (hint : ∀ A ≥ R, IntervalIntegrable (fun x ↦ delta x / Real.sqrt x) volume
      (A ^ 2) (Real.exp (2 * A)))
    (hdelta : ∀ A ≥ R, ∀ x ∈ Icc (A ^ 2) (Real.exp (2 * A)),
      x ^ (-1 / 4 : ℝ) ≤ delta x) :
    ¬ EventuallyPolynomialUpper (paidBudget delta) := by
  rintro ⟨m, C, S, hC, hS, hcap⟩
  apply quarter_budget_has_no_eventual_polynomial_upper
  refine ⟨m, C, max R S, hC, hS.trans (le_max_right _ _), ?_⟩
  intro A hA
  have hRA := (le_max_left R S).trans hA
  exact (source_quarter_budget_le_proposed_absolute_payment (hR.trans hRA)
    delta (hint A hRA) (hdelta A hRA)).trans
      (hcap A ((le_max_right R S).trans hA))

end
end GRWTSK.RiemannHypothesis.Conversation.AbsoluteEnvelopeFiniteBudget
```
