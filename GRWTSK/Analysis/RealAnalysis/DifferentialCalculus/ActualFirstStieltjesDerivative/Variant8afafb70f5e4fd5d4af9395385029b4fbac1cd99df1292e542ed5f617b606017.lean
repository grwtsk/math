import ActualStieltjesParameter
import ActualStieltjesBoundary

/-! Unconditional identification of the actual P17 first Stieltjes sequence limit
with the derivative of Mathlib's actual entire zeta regularization.
Research direction grwtsk contributors; focused scratch construction OpenAI Codex.
No RH, PNT, Ramaré estimate, signed bound, or target derivative premise. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualFirstStieltjesDerivative
open ContinuousResearch.ActualFirstStieltjes

/-- The exact child #328 proposition, with its independent sequence constant. -/
theorem actual_firstStieltjes_deriv :
    deriv riemannZeta₀ (1 : ℂ) = -(firstStieltjesConstant : ℂ) :=
  ActualStieltjesBoundary.actual_regular_zeta_derivative_of_termTSum
    ActualStieltjesParameter.termTSum_hasDerivAt_one

/-- Genuine complex derivative, stronger than a totalized `deriv` equality. -/
theorem actual_firstStieltjes_hasDerivAt :
    HasDerivAt riemannZeta₀ (-(firstStieltjesConstant : ℂ)) (1 : ℂ) :=
  ActualStieltjesBoundary.actual_regular_zeta_hasDerivAt_of_termTSum
    ActualStieltjesParameter.termTSum_hasDerivAt_one

end ContinuousResearch.ActualFirstStieltjesDerivative

#print ContinuousResearch.ActualFirstStieltjesDerivative.actual_firstStieltjes_deriv
#print axioms ContinuousResearch.ActualFirstStieltjesDerivative.actual_firstStieltjes_deriv
#print ContinuousResearch.ActualFirstStieltjesDerivative.actual_firstStieltjes_hasDerivAt
#print axioms ContinuousResearch.ActualFirstStieltjesDerivative.actual_firstStieltjes_hasDerivAt
