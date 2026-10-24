# Complete source: GRWTSK.Analysis.ActualWeightedNormBarrier.Variantb22af272cd17b74daa8648eb6bfddb9ff3f568234dcb42e4df0b1c73609d5548

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0fa3f06e6d9ded5b84614605f59a0a510297e5b` · SHA-256 `b22af272cd17b74daa8648eb6bfddb9ff3f568234dcb42e4df0b1c73609d5548`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.ActualCorrelationEdgeShell
import FormalResearch.RiemannHypothesis.Conversation.PolynomialMertensReduction
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

/-!
# Quantitative weighted-budget obstruction for the unchanged source kernel

The actual overlap shell yields an explicit exp(theta*(2A-2))/(512*A^9)
lower bound on the full absolute weighted norm for A>=8 and theta>=0.
For every fixed theta>0 this norm has no eventual polynomial upper bound.
The real matching-sign input supplies the next transform-budget consumer.
The arithmetic input is not replaced and its signed cancellation stays open.
Human exact-kernel and magnitude-method direction: grwtsk contributors. Local
shell integration and asymptotic consumer: OpenAI Codex. Mathlib limits and
the existing normalized correlation retain their own qualified identities.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualWeightedNormBarrier
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ActualCorrelationEdgeShell ActualWeightedTransformNorm PolynomialMertensReduction
open MeasureTheory Set Filter
noncomputable section
local notation "C" => sourceCorrelation Realization.explicitSecondDerivative

theorem full_actual_weighted_norm_lower {A θ : ℝ} (hA : 8 ≤ A) (hθ : 0 ≤ θ) :
    Real.exp (θ * (2 * A - 2)) / (512 * A ^ 9) ≤ normPrice A θ := by
  have hA1 : 1 ≤ A := by linarith
  let f := fun u ↦ |C A u| * Real.exp (θ * u)
  have hcont : Continuous f := by
    exact (CorrelationRegularity.sourceCorrelation_contDiff A (by linarith)).continuous.abs.mul
      (Real.continuous_exp.comp (continuous_const.mul continuous_id))
  have hsub : (∫ u in (2 * A - 2)..(2 * A - 1), f u) ≤ normPrice A θ := by
    exact intervalIntegral.integral_mono_interval (by linarith) (by linarith) (by linarith)
      (Filter.Eventually.of_forall (fun u ↦ mul_nonneg (abs_nonneg _) (Real.exp_pos _).le))
      (full_weighted_norm_integrand_intervalIntegrable hA1 θ)
  have hmono : (∫ _ in (2 * A - 2)..(2 * A - 1),
      (1 / (512 * A ^ 9)) * Real.exp (θ * (2 * A - 2))) ≤
      ∫ u in (2 * A - 2)..(2 * A - 1), f u := by
    apply intervalIntegral.integral_mono_on (by linarith)
      (continuous_const.intervalIntegrable _ _) (hcont.intervalIntegrable _ _)
    intro u hu
    have hy1 : 1 ≤ 2 * A - u := by linarith [hu.2]
    have hy2 : 2 * A - u ≤ 2 := by linarith [hu.1]
    have hk := actual_correlation_edge_shell_lower hA hy1 hy2
    have huEq : 2 * A - (2 * A - u) = u := by ring
    rw [huEq] at hk
    have h_abs := hk.trans (le_abs_self (C A u))
    have h_exp : Real.exp (θ * (2 * A - 2)) ≤ Real.exp (θ * u) :=
      Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left hu.1 hθ)
    exact mul_le_mul h_abs h_exp (Real.exp_pos _).le (abs_nonneg _)
  have hval : (∫ _ in (2 * A - 2)..(2 * A - 1),
      (1 / (512 * A ^ 9)) * Real.exp (θ * (2 * A - 2))) =
      Real.exp (θ * (2 * A - 2)) / (512 * A ^ 9) := by
    rw [intervalIntegral.integral_const]
    simp only [smul_eq_mul]
    ring
  rw [hval] at hmono
  exact hmono.trans hsub

theorem actual_weighted_norm_has_no_eventual_polynomial_upper {θ : ℝ} (hθ : 0 < θ) :
    ¬ EventuallyPolynomialUpper (fun A ↦ normPrice A θ) := by
  rintro ⟨m, D, R, _hD, _hR, hcap⟩
  have hevent : ∀ᶠ A : ℝ in atTop,
      512 * D * Real.exp (2 * θ) + 1 < Real.exp ((2 * θ) * A) / A ^ (m + 9) := by
    simpa only [Real.rpow_natCast] using
      (tendsto_exp_mul_div_rpow_atTop (m + 9 : ℕ) (2 * θ) (by positivity)).eventually
        (eventually_gt_atTop (512 * D * Real.exp (2 * θ) + 1))
  obtain ⟨S, hS⟩ := eventually_atTop.mp hevent
  let A := max S (max R 8)
  have hA8 : 8 ≤ A := (le_max_right R 8).trans (le_max_right S _)
  have hApos : 0 < A := by linarith
  have hAR : R ≤ A := (le_max_left R 8).trans (le_max_right S _)
  have hbig := (lt_div_iff₀ (pow_pos hApos (m + 9))).mp (hS A (le_max_left _ _))
  have hlower := full_actual_weighted_norm_lower hA8 hθ.le
  have hsmall := hlower.trans (hcap A hAR)
  have hpaid := (div_le_iff₀ (by positivity : 0 < 512 * A ^ 9)).mp hsmall
  have heq : Real.exp ((2 * θ) * A) =
      Real.exp (θ * (2 * A - 2)) * Real.exp (2 * θ) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hmult := mul_le_mul_of_nonneg_right hpaid (Real.exp_pos (2 * θ)).le
  rw [heq, pow_add] at hbig
  nlinarith [mul_pos (pow_pos hApos m) (pow_pos hApos 9)]

theorem every_polynomial_complete_real_input_budget_fails {a : ℝ}
    (ha : 0 < a + 3 / 16) :
    ¬ ∃ m : ℕ, ∃ D R : ℝ, 0 ≤ D ∧ 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A → ∀ J : ℝ → ℝ,
        (∀ x : ℝ, 0 < x → |J x| ≤ x ^ a) → |transform A J| ≤ D * A ^ m := by
  rintro ⟨m, D, R, hD, hR, hcap⟩
  apply actual_weighted_norm_has_no_eventual_polynomial_upper ha
  refine ⟨m, D, R, hD, hR, ?_⟩
  intro A hAR
  exact (exact_complete_input_class_budget (hR.trans hAR)).mp (hcap A hAR)

end
end GRWTSK.RiemannHypothesis.Conversation.ActualWeightedNormBarrier
```
