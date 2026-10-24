import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment

/-!
Scratch only: the second exponential moment of the actual source correlation.
The square is the square of the FIRST weighted test moment, with its x factor.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondMoment

open MeasureTheory Set
open scoped Convolution
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationMoment

noncomputable section

theorem normalizedTest_even (A : ℝ) (hA : 1 ≤ A) :
    Function.Even (normalizedTest explicitSecondDerivative A) := by
  intro x
  rw [normalizedTest_eq_indicator A (by linarith)]
  have hm : -x ∈ Icc (-A) A ↔ x ∈ Icc (-A) A := by
    constructor <;> rintro ⟨hl, hr⟩ <;> constructor <;> linarith
  simp only [indicator_apply, hm]
  split_ifs
  · simp [normalizedInterior, secondInterior, bumpInterior, neg_div]
    ring
  · rfl

theorem secondMoment_convolution (f g : ℝ → ℝ)
    (hf : Continuous f) (hg : Continuous g) (hcf : HasCompactSupport f)
    (t : ℝ) :
    t ^ 2 * (f ⋆ g) t = ((fun x ↦ x ^ 2 * f x) ⋆ g) t +
      2 * ((fun x ↦ x * f x) ⋆ (fun x ↦ x * g x)) t +
      (f ⋆ (fun x ↦ x ^ 2 * g x)) t := by
  have h1 : Integrable (fun x ↦ (x ^ 2 * f x) * g (t - x)) :=
    (((continuous_id.pow 2).mul hf).mul
      (hg.comp (continuous_const.sub continuous_id))).integrable_of_hasCompactSupport
      hcf.mul_left.mul_right
  have h2 : Integrable (fun x ↦ (x * f x) * ((t - x) * g (t - x))) :=
    ((continuous_id.mul hf).mul ((continuous_const.sub continuous_id).mul
      (hg.comp (continuous_const.sub continuous_id)))).integrable_of_hasCompactSupport
      hcf.mul_left.mul_right
  have h3 : Integrable (fun x ↦ f x * ((t - x) ^ 2 * g (t - x))) :=
    (hf.mul (((continuous_const.sub continuous_id).pow 2).mul
      (hg.comp (continuous_const.sub continuous_id)))).integrable_of_hasCompactSupport hcf.mul_right
  have h12 : Integrable (fun x ↦ (x ^ 2 * f x) * g (t - x) +
      2 * ((x * f x) * ((t - x) * g (t - x)))) := h1.add (h2.const_mul 2)
  simp only [convolution_lsmul, smul_eq_mul]
  rw [← integral_const_mul, ← integral_const_mul, ← integral_add h1 (h2.const_mul 2),
    ← integral_add h12 h3]
  apply integral_congr_ae
  filter_upwards [] with x
  ring

theorem secondMoment_convolution_integral (f g : ℝ → ℝ)
    (hf : Continuous f) (hg : Continuous g)
    (hcf : HasCompactSupport f) (hcg : HasCompactSupport g) :
    (∫ t, t ^ 2 * (f ⋆ g) t) =
      (∫ x, x ^ 2 * f x) * (∫ x, g x) +
      2 * ((∫ x, x * f x) * (∫ x, x * g x)) +
      (∫ x, f x) * (∫ x, x ^ 2 * g x) := by
  have hif : Integrable f := hf.integrable_of_hasCompactSupport hcf
  have hig : Integrable g := hg.integrable_of_hasCompactSupport hcg
  have hixf : Integrable (fun x ↦ x * f x) :=
    (continuous_id.mul hf).integrable_of_hasCompactSupport hcf.mul_left
  have hixg : Integrable (fun x ↦ x * g x) :=
    (continuous_id.mul hg).integrable_of_hasCompactSupport hcg.mul_left
  have hixxf : Integrable (fun x ↦ x ^ 2 * f x) :=
    ((continuous_id.pow 2).mul hf).integrable_of_hasCompactSupport hcf.mul_left
  have hixxg : Integrable (fun x ↦ x ^ 2 * g x) :=
    ((continuous_id.pow 2).mul hg).integrable_of_hasCompactSupport hcg.mul_left
  have hi1 := hixxf.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hig
  have hi2 := hixf.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hixg
  have hi3 := hif.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hixxg
  have hi12 : Integrable (fun t ↦ ((fun x ↦ x ^ 2 * f x) ⋆ g) t +
      2 * ((fun x ↦ x * f x) ⋆ (fun x ↦ x * g x)) t) := hi1.add (hi2.const_mul 2)
  simp_rw [secondMoment_convolution f g hf hg hcf]
  rw [integral_add hi12 hi3,
    integral_add hi1 (hi2.const_mul 2), integral_const_mul,
    integral_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hixxf hig,
    integral_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hixf hixg,
    integral_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hif hixxg]
  rfl

theorem weighted_normalizedTest_firstMoment_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x : ℝ ↦ x * Real.exp (x / 2) *
      normalizedTest explicitSecondDerivative A x) := by
  have hc := (normalizedTest_contDiff A (by linarith)).continuous
  have he : Continuous (fun x : ℝ ↦ x * Real.exp (x / 2)) := by fun_prop
  exact (he.mul hc).integrable_of_hasCompactSupport
    (normalizedTest_hasCompactSupport A (by linarith)).mul_left

theorem weighted_correlation_secondMoment_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun t : ℝ ↦ t ^ 2 * Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t) := by
  have hc := (sourceCorrelation_contDiff A (by linarith)).continuous
  have he : Continuous (fun t : ℝ ↦ t ^ 2 * Real.exp (t / 2)) := by fun_prop
  exact (he.mul hc).integrable_of_hasCompactSupport
    (sourceCorrelation_hasCompactSupport A (by linarith)).mul_left

theorem full_correlation_secondMoment_eq_square (A : ℝ) (hA : 1 ≤ A) :
    (1 / 2 : ℝ) * (∫ t : ℝ, t ^ 2 * Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t) =
        (∫ x : ℝ, x * Real.exp (x / 2) *
          normalizedTest explicitSecondDerivative A x) ^ 2 := by
  let v := normalizedTest explicitSecondDerivative A
  let f : ℝ → ℝ := fun x ↦ Real.exp (x / 2) * v x
  let g : ℝ → ℝ := fun x ↦ Real.exp (x / 2) * v (-x)
  have he : Continuous (fun x : ℝ ↦ Real.exp (x / 2)) := by fun_prop
  have hv : Continuous v := (normalizedTest_contDiff A (by linarith)).continuous
  have hf : Continuous f := he.mul hv
  have hg : Continuous g := he.mul (hv.comp continuous_neg)
  have hcf : HasCompactSupport f :=
    (normalizedTest_hasCompactSupport A (by linarith)).mul_left
  have hcg : HasCompactSupport g :=
    (reflectedTest_hasCompactSupport A (by linarith)).mul_left
  have hfi : (∫ x, f x) = 0 := positive_pole_zero A hA
  have hgi : (∫ x, g x) = 0 := by
    have hr := integral_neg_eq_self
      (fun x ↦ Real.exp (-x / 2) * normalizedTest explicitSecondDerivative A x) volume
    simpa only [neg_neg, negative_pole_zero A hA] using hr
  have hgf : g = f := by
    funext x
    exact congrArg (Real.exp (x / 2) * ·) (normalizedTest_even A hA x)
  have hm : (∫ t : ℝ, t ^ 2 * Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t) = ∫ t, t ^ 2 * (f ⋆ g) t := by
    apply integral_congr_ae
    filter_upwards [] with t
    rw [mul_assoc]
    have h := weighted_correlation_eq_convolution v (1 / 2) t
    simpa only [one_div, inv_mul_eq_div, correlation, sourceCorrelation, f, g, v] using
      congrArg (t ^ 2 * ·) h
  rw [hm, secondMoment_convolution_integral f g hf hg hcf hcg, hfi, hgi, hgf]
  simp only [mul_zero, zero_mul, zero_add, add_zero]
  have hfirst : (∫ x, x * f x) = ∫ x : ℝ, x * Real.exp (x / 2) * v x := by
    apply integral_congr_ae
    filter_upwards [] with x
    dsimp [f]
    ring
  rw [hfirst]
  ring

end
end FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondMoment

#check FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondMoment.full_correlation_secondMoment_eq_square

#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondMoment.normalizedTest_even
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondMoment.secondMoment_convolution
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondMoment.secondMoment_convolution_integral
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondMoment.weighted_normalizedTest_firstMoment_integrable
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondMoment.weighted_correlation_secondMoment_integrable
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondMoment.full_correlation_secondMoment_eq_square
