import FormalResearch.RiemannHypothesis.Conversation.SubexponentialCountermodel
import FormalResearch.RiemannHypothesis.Conversation.PolynomialComposition

/-!
# Pointwise favorable choices retain the unpaid selection cost

AC05-07 and B17-L5 distinguish an estimator coordinate chosen after the scale
from a proved all-real supplier. The exact comparison estimator exp(sqrt(A))-U
can be made zero at every scale by a positive adaptive U; every fixed U still
fails polynomial control. Its adaptive offset is the entire unchanged source
and has no polynomial upper bound. A separate actual-source consumer accepts
an arbitrary selector only with estimates uniform in its full estimator and
cost family. No arithmetic cutoff selection or uniform cost is constructed.

Human quantifier and payment requirement: grwtsk contributors. Local exact
countermodel and actual-source consumer: OpenAI Codex. The comparison profile
is named separately from the prime source.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.SelectorUniformity
open PolynomialMertensReduction SubexponentialCountermodel PolynomialComposition
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect
noncomputable section

/-- The estimator in this module, with the following exact parameterization.

def estimator (U A : ℝ) : ℝ := comparisonProfile A - U
-/
def estimator (U A : ℝ) : ℝ := comparisonProfile A - U

theorem every_scale_has_positive_zero_choice (A : ℝ) :
    ∃ U : ℝ, 0 < U ∧ estimator U A = 0 :=
  ⟨comparisonProfile A, Real.exp_pos _, by simp [estimator]⟩

theorem complete_selection_cost (U A : ℝ) : estimator U A + U = comparisonProfile A := by
  simp [estimator]

theorem every_fixed_choice_fails (U : ℝ) : ¬ EventuallyPolynomialUpper (estimator U) := by
  intro h
  apply no_eventual_polynomial_upper
  apply polynomial_upper_transfer (C := |U|) (abs_nonneg U) _ h
  intro A hA
  have hu : U ≤ |U| * A := (le_abs_self U).trans (by
    simpa only [mul_one] using mul_le_mul_of_nonneg_left hA (abs_nonneg U))
  dsimp only [estimator]
  linarith

theorem adaptive_zero_choice_has_unbounded_cost :
    (∀ A : ℝ, estimator (comparisonProfile A) A = 0) ∧
      ¬ EventuallyPolynomialUpper comparisonProfile :=
  ⟨fun _ ↦ by simp [estimator], no_eventual_polynomial_upper⟩

/-- Uniformity is retained before inserting an arbitrary scale-dependent selector. -/
theorem actual_source_consumer_of_uniform_selected_costs {Theta : Type*}
    (select : ℝ → Theta) (estimate cost : Theta → ℝ → ℝ)
    (hdecode : ∀ A : ℝ, 1 ≤ A →
      closedPrimeMoment A = estimate (select A) A + cost (select A) A)
    {m n : ℕ} {D E R : ℝ} (hD : 0 ≤ D) (hE : 0 ≤ E) (hR : 1 ≤ R)
    (hestimate : ∀ theta : Theta, ∀ A : ℝ, R ≤ A → estimate theta A ≤ D * A ^ m)
    (hcost : ∀ theta : Theta, ∀ A : ℝ, R ≤ A → cost theta A ≤ E * A ^ n) :
    OpenArithmeticSuppliers.ProblemP := by
  have hp : EventuallyPolynomialUpper (fun A ↦ estimate (select A) A) :=
    ⟨m, D, R, hD, hR, fun A hA ↦ hestimate (select A) A hA⟩
  have hc : EventuallyPolynomialUpper (fun A ↦ cost (select A) A) :=
    ⟨n, E, R, hE, hR, fun A hA ↦ hcost (select A) A hA⟩
  have h := polynomial_upper_add hp hc
  obtain ⟨k, C, T, hC, hT, hb⟩ := h
  refine ⟨k, C, T, hC, hT, ?_⟩
  intro A hA
  rw [hdecode A (hT.trans hA)]
  exact hb A hA

end
end GRWTSK.RiemannHypothesis.Conversation.SelectorUniformity
