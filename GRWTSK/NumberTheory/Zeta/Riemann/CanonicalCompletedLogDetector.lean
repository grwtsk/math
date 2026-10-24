import GRWTSK.Analysis.ComplexAnalysis.AnalyticZeroOrderDetector
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor
import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.Analysis.SpecialFunctions.Gamma.Deligne

/-! Actual completed Riemann-zeta specialization of the B3/E5 local-order fragments.
Uses the canonical nontrivial-zero predicate and its positive finite multiplicity.
Both completion poles and zeros of the inverse Gamma factor are explicitly excluded.
This is an assistant-proposed Riemann specialization, not identification of the
unpublished manuscripts' unspecified automorphic sources or geometric classes. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector
open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.Analysis.ComplexAnalysis.LogarithmicPrincipalPart
open Filter
open scoped Topology

/-- Completion is analytic at the same canonical nontrivial zero, away from 0 and 1. -/
theorem completed_analytic (z : ZeroPoint) : AnalyticAt ℂ completedRiemannZeta z.1 := by
  have hleft : AnalyticAt ℂ (fun s : ℂ => 1 / s) z.1 :=
    analyticAt_const.div analyticAt_id z.2.ne_zero
  have hright : AnalyticAt ℂ (fun s : ℂ => 1 / (1 - s)) z.1 :=
    analyticAt_const.div (analyticAt_const.sub analyticAt_id)
      (sub_ne_zero.mpr (Ne.symm z.2.2.2))
  have h := ((differentiable_completedZeta₀.analyticAt z.1).sub hleft).sub hright
  exact h.congr (Eventually.of_forall (fun s => (completedRiemannZeta_eq s).symm))

/-- The canonical zeta zero is a zero of the actual completion, not just of a model. -/
theorem completed_zero (z : ZeroPoint) : completedRiemannZeta z.1 = 0 := by
  have h : completedRiemannZeta z.1 / Complex.Gammaℝ z.1 = 0 :=
    (riemannZeta_def_of_ne_zero z.2.ne_zero).symm.trans z.2.1
  simpa [div_eq_zero_iff, z.2.gamma_real_ne_zero] using h

/-- The Gamma inverse is an actual analytic unit here, so completion preserves order. -/
theorem completed_order_eq_zeta (z : ZeroPoint) :
    analyticOrderAt completedRiemannZeta z.1 = analyticOrderAt riemannZeta z.1 := by
  have hgamma : AnalyticAt ℂ (fun s => (Complex.Gammaℝ s)⁻¹) z.1 :=
    Complex.differentiable_Gammaℝ_inv.analyticAt z.1
  have hunit : (Complex.Gammaℝ z.1)⁻¹ ≠ 0 := inv_ne_zero z.2.gamma_real_ne_zero
  have hlocal : riemannZeta =ᶠ[𝓝 z.1]
      (completedRiemannZeta * fun s => (Complex.Gammaℝ s)⁻¹) := by
    filter_upwards [compl_singleton_mem_nhds z.2.ne_zero] with s hs
    simpa only [Pi.mul_apply, div_eq_mul_inv] using
      riemannZeta_def_of_ne_zero (by simpa using hs)
  have heq := analyticOrderAt_congr hlocal
  rw [analyticOrderAt_mul (completed_analytic z) hgamma,
    hgamma.analyticOrderAt_eq_zero.mpr hunit, add_zero] at heq
  exact heq.symm

/-- Completion has finite order, using the actual canonical zeta supplier. -/
theorem completed_order_finite (z : ZeroPoint) :
    analyticOrderAt completedRiemannZeta z.1 ≠ ⊤ := by
  rw [completed_order_eq_zeta]
  exact order_ne_top z

/-- Natural completion order equals the already proved positive canonical multiplicity. -/
theorem completed_natural_order (z : ZeroPoint) :
    analyticOrderNatAt completedRiemannZeta z.1 = multiplicity z := by
  exact congrArg (fun n : ℕ∞ => n.toNat) (completed_order_eq_zeta z)

/-- The actual completed logarithmic coefficient has the negative canonical multiplicity. -/
theorem completed_scaled_coefficient (z : ZeroPoint) :
    Tendsto (fun s => (s - z.1) * (-logDeriv completedRiemannZeta s))
      (𝓝[≠] z.1) (𝓝 (-(multiplicity z : ℂ))) := by
  simpa only [completed_natural_order] using
    analytic_finite_order_scaled_coefficient completedRiemannZeta z.1
      (completed_analytic z) (completed_order_finite z)

/-- No continuous logDeriv extension exists at any actual canonical nontrivial zero. -/
theorem completed_no_continuous_logDeriv_extension (z : ZeroPoint) :
    ¬ ∃ H : ℂ → ℂ, ContinuousAt H z.1 ∧ H =ᶠ[𝓝[≠] z.1] logDeriv completedRiemannZeta :=
  analytic_zero_no_continuous_logDeriv_extension completedRiemannZeta z.1
    (completed_analytic z) (completed_order_finite z) (completed_zero z)

/-- The uncompleted zeta detector has the identical signed scaled coefficient. -/
theorem zeta_scaled_coefficient (z : ZeroPoint) :
    Tendsto (fun s => (s - z.1) * (-logDeriv riemannZeta s))
      (𝓝[≠] z.1) (𝓝 (-(multiplicity z : ℂ))) :=
  analytic_finite_order_scaled_coefficient riemannZeta z.1 (analyticAt_point z) (order_ne_top z)
end GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector
