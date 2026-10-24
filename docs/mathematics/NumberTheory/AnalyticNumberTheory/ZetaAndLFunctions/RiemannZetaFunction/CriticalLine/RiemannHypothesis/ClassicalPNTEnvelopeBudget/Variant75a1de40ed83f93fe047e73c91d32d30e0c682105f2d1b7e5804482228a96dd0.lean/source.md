# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ClassicalPNTEnvelopeBudget.Variant75a1de40ed83f93fe047e73c91d32d30e0c682105f2d1b7e5804482228a96dd0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2804f684d1d9a8833e61e1e99f48caa15e10022d` · SHA-256 `75a1de40ed83f93fe047e73c91d32d30e0c682105f2d1b7e5804482228a96dd0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.AbsoluteEnvelopeFiniteBudget
import FormalResearch.RiemannHypothesis.Conversation.ClassicalPNTEnvelopeDominance

/-!
# A concrete classical PNT envelope fails the polynomial finite-budget target

The exact exponential-log envelope exp(-c*sqrt(log x)), for any c>=0,
pays at least the quarter-power comparison on the full unchanged source
cutoffs. Neither its integrated absolute budget nor the proposed scaled cost
(8+20/A) times that budget has an eventual polynomial upper bound. These are
costs of an absolute-envelope method, not lower bounds for the actual signed
Mertens residual. The required signed cancellation theorem remains open.
Human actual-cutoff and signed-source direction: grwtsk contributors. Local
concrete envelope consumer: OpenAI Codex. Existing qualified envelope results
and Mathlib calculus retain their identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ClassicalPNTEnvelopeBudget
open AbsoluteEnvelopeFiniteBudget ClassicalPNTEnvelopeDominance PolynomialMertensReduction
noncomputable section

def proposedSourceCost (c A : ℝ) : ℝ := (8 + 20 / A) * paidBudget (envelope c) A

theorem classical_pnt_absolute_budget_not_eventually_polynomial {c : ℝ} (hc : 0 ≤ c) :
    ¬ EventuallyPolynomialUpper (paidBudget (envelope c)) := by
  apply proposed_absolute_payment_has_no_eventual_polynomial_upper (envelope c)
    (R := entrance c) (le_max_left _ _)
  · intro A hA
    exact classical_source_window_payment_integrable ((le_max_left _ _).trans hA)
  · intro A hA
    exact full_source_window_has_quarter_envelope hc hA

theorem proposed_scaled_source_cost_not_eventually_polynomial {c : ℝ} (hc : 0 ≤ c) :
    ¬ EventuallyPolynomialUpper (proposedSourceCost c) := by
  rintro ⟨m, C, R, hC, hR, hcap⟩
  apply classical_pnt_absolute_budget_not_eventually_polynomial hc
  let S : ℝ := max R (max (entrance c) 16)
  refine ⟨m, C, S, hC, hR.trans (le_max_left _ _), ?_⟩
  intro A hA
  have hRA : R ≤ A := (le_max_left _ _).trans hA
  have heA : entrance c ≤ A :=
    ((le_max_left _ _).trans (le_max_right _ _)).trans hA
  have h16 : 16 ≤ A := ((le_max_right _ _).trans (le_max_right _ _)).trans hA
  have hA1 : 1 ≤ A := by linarith
  have hbudget := source_quarter_budget_le_proposed_absolute_payment hA1 (envelope c)
    (classical_source_window_payment_integrable hA1)
    (full_source_window_has_quarter_envelope hc heA)
  have hquarter := exact_quarter_budget_dominates_subexponential_profile h16
  have hpaid : 0 ≤ paidBudget (envelope c) A := by
    have hp : 0 < SubexponentialCountermodel.comparisonProfile A := by
      unfold SubexponentialCountermodel.comparisonProfile
      positivity
    linarith
  have hfactor : 1 ≤ 8 + 20 / A := by
    have hp : 0 ≤ 20 / A := by positivity
    linarith
  have hle : paidBudget (envelope c) A ≤ proposedSourceCost c A := by
    unfold proposedSourceCost
    nlinarith
  exact hle.trans (hcap A hRA)

end
end GRWTSK.RiemannHypothesis.Conversation.ClassicalPNTEnvelopeBudget
```
