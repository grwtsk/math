import FormalResearch.RiemannHypothesis.ZeroSide.Assembly
import FormalResearch.RiemannHypothesis.Landau.Bridge
import FormalResearch.RiemannHypothesis.SourceBoundaryFrontierAudit

namespace FormalResearch.RiemannHypothesis.EstimateConverse
open MeasureTheory
open scoped ComplexConjugate
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroObject ZeroSideTargets
noncomputable section

theorem actual_transform_conjugate (A : ℝ) (z : ℂ) :
    conj (bilateralTransform A z) = bilateralTransform A (conj z) := by
  unfold bilateralTransform
  rw [← integral_conj]
  apply integral_congr_ae
  filter_upwards [] with x
  simp [map_mul, ← Complex.exp_conj]

theorem actual_transform_even (A : ℝ) (hA : 1 ≤ A) (z : ℂ) :
    bilateralTransform A (-z) = bilateralTransform A z := by
  unfold bilateralTransform
  rw [← integral_neg_eq_self (fun x : ℝ ↦
    (actualTest A x : ℂ) * Complex.exp (z * (x : ℂ))) volume]
  apply integral_congr_ae
  filter_upwards [] with x
  rw [ZeroTestRegularity.actualTest_even A hA x]
  simp [neg_mul, mul_neg]

theorem actual_transform_im_zero (A : ℝ) (hA : 1 ≤ A) (z : ℂ) (hz : z.re = 0) :
    (bilateralTransform A z).im = 0 := by
  apply Complex.conj_eq_iff_im.mp
  rw [actual_transform_conjugate]
  have hc : conj z = -z := by
    apply Complex.ext <;> simp [hz]
  rw [hc, actual_transform_even A hA]

theorem shifted_value_re_zero_of_rh (hRH : _root_.RiemannHypothesis)
    (o : ZeroOccurrence) : (shiftedValue o).re = 0 := by
  have hp := point_nontrivial o.1
  have hr := hRH o.1.val hp.1 hp.2.1 hp.2.2
  simp [shiftedValue, hr]

theorem source_quadratic_nonneg_of_rh (hRH : _root_.RiemannHypothesis)
    (A : ℝ) (hA : 1 ≤ A) :
    0 ≤ sourceQuadraticValue Realization.explicitSecondDerivative A := by
  obtain ⟨_, _, hs, hscale, hform⟩ := ZeroSide.Assembly.zero_side_identity A hA
  have hi (o : ZeroOccurrence) : (bilateralTransform A (shiftedValue o)).im = 0 :=
    actual_transform_im_zero A hA _ (shifted_value_re_zero_of_rh hRH o)
  have hn : 0 ≤ (∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2).re := by
    rw [Complex.re_tsum hs]
    apply tsum_nonneg
    intro o
    simp only [pow_two, Complex.mul_re, hi o, mul_zero, sub_zero]
    exact mul_self_nonneg _
  have he := congrArg Complex.re (hscale.trans hform)
  simp only [Complex.ofReal_re] at he
  rw [← he] at hn
  exact (mul_nonneg_iff_of_pos_left (source_normalization_pos A hA)).mp hn

theorem estimate_of_riemann_hypothesis (hRH : _root_.RiemannHypothesis) :
    CorrelationAssembly.EstimateObligation :=
  ⟨0, fun A hA ↦ source_quadratic_nonneg_of_rh hRH A hA⟩

theorem estimate_iff_riemann_hypothesis :
    CorrelationAssembly.EstimateObligation ↔ _root_.RiemannHypothesis :=
  ⟨Landau.Bridge.riemann_hypothesis_of_uniform_lower_bound, estimate_of_riemann_hypothesis⟩

end
end FormalResearch.RiemannHypothesis.EstimateConverse
