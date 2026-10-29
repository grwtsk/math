import FormalResearch.RiemannHypothesis.SourceBoundaryLayer
import FormalResearch.RiemannHypothesis.FullQuadraticObstruction

namespace FormalResearch.RiemannHypothesis.SourceBoundaryLayer
open MeasureTheory Filter Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceScaledKernel
open FormalResearch.RiemannHypothesis.PhaseKernelBoundary
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization JointPhaseScaling

noncomputable section

def bulkSourceContinuum (A : ℝ) : ℝ :=
  ∫ t in (0 : ℝ)..(2 * A), Real.exp (t / 2) * fixedKernel 0 (t / A) /
    (16 * sourceNormalization A)

theorem pzero_window_bound :
    ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A → ∀ y ∈ Icc (1 : ℝ) 2,
      (64 / 315 : ℝ) ≤ endpointPolynomialZero (y / A) := by
  have hc : Continuous endpointPolynomialZero := by unfold endpointPolynomialZero; fun_prop
  have he : ∀ᶠ s : ℝ in nhds 0, (64 / 315 : ℝ) < endpointPolynomialZero s :=
    hc.continuousAt.tendsto.eventually (eventually_gt_nhds (by norm_num [endpointPolynomialZero]))
  rcases Metric.eventually_nhds_iff.mp he with ⟨δ, hδ, hnear⟩
  refine ⟨max 1 (4 / δ), le_max_left _ _, ?_⟩
  intro A hA y hy
  have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA1
  have hAL : 4 / δ ≤ A := (le_max_right _ _).trans hA
  have hmul : 4 ≤ A * δ := (div_le_iff₀ hδ).mp hAL
  have hs0 : 0 ≤ y / A := div_nonneg (by linarith [hy.1]) (le_of_lt hpos)
  have hsδ : y / A < δ := (div_lt_iff₀ hpos).2 (by nlinarith [hy.2])
  apply le_of_lt
  apply hnear
  simpa only [Real.dist_eq, sub_zero, abs_of_nonneg hs0] using hsδ

theorem bulk_source_continuum_growth :
    ∃ c R : ℝ, 0 < c ∧ 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      c * Real.exp A / A ^ 9 ≤ bulkSourceContinuum A := by
  rcases pzero_window_bound with ⟨R, hR, hp⟩
  let c : ℝ := (64 / 315 : ℝ) / (16 * sourceNormalization 1 * Real.exp 1)
  have hZ1 : 0 < sourceNormalization 1 := source_normalization_pos 1 (by norm_num)
  have hc : 0 < c := by unfold c; positivity
  refine ⟨c, R, hc, hR, ?_⟩
  intro A hA
  have hA1 : 1 ≤ A := hR.trans hA
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA1
  have hne : A ≠ 0 := ne_of_gt hpos
  have hAp : 0 < A ^ 9 := pow_pos hpos _
  have hZ := source_normalization_pos A hA1
  have hZle := FullQuadraticObstruction.source_normalization_le_radius_one A hA1
  let f : ℝ → ℝ := fun t ↦ Real.exp (t / 2) * fixedKernel 0 (t / A) /
    (16 * sourceNormalization A)
  have hfc : Continuous f := by
    unfold f
    exact ((Real.continuous_exp.comp (continuous_id.div_const 2)).mul
      ((fixed_kernel_continuous 0 (by norm_num)).comp
        (continuous_id.div_const A))).div_const _
  have hfn (t : ℝ) : 0 ≤ f t := by
    unfold f
    exact div_nonneg (mul_nonneg (Real.exp_nonneg _)
      (GeneralizedPoleMoments.fixed_kernel_zero_nonneg _)) (by positivity)
  have hpt (t : ℝ) (ht : t ∈ Icc (2 * A - 2) (2 * A - 1)) :
      c * Real.exp A / A ^ 9 ≤ f t := by
    have hy : 2 * A - t ∈ Icc (1 : ℝ) 2 := ⟨by linarith [ht.2], by linarith [ht.1]⟩
    have hpoly := hp A hA (2 * A - t) hy
    have hy9 : 1 ≤ (2 * A - t) ^ 9 := one_le_pow₀ hy.1
    have hprod : (64 / 315 : ℝ) ≤ (2 * A - t) ^ 9 *
        endpointPolynomialZero ((2 * A - t) / A) := by
      nlinarith
    have heq : fixedKernel 0 (t / A) = ((2 * A - t) ^ 9 *
        endpointPolynomialZero ((2 * A - t) / A)) / A ^ 9 := by
      rw [show t / A = 2 - (2 * A - t) / A by field_simp; ring]
      rw [fixed_kernel_zero_endpoint _ (div_nonneg (by linarith [hy.1]) (le_of_lt hpos))
        ((div_le_iff₀ hpos).2 (by linarith [hy.2]))]
      field_simp
    have hk : (64 / 315 : ℝ) / A ^ 9 ≤ fixedKernel 0 (t / A) := by
      rw [heq]
      exact div_le_div_of_nonneg_right hprod (le_of_lt hAp)
    have hexp : Real.exp (A - 1) ≤ Real.exp (t / 2) :=
      Real.exp_le_exp.mpr (by linarith [ht.1])
    have hn : Real.exp (A - 1) * ((64 / 315 : ℝ) / A ^ 9) ≤
        Real.exp (t / 2) * fixedKernel 0 (t / A) :=
      mul_le_mul hexp hk (by positivity) (Real.exp_nonneg _)
    have hd : Real.exp (A - 1) * ((64 / 315 : ℝ) / A ^ 9) /
        (16 * sourceNormalization 1) ≤ f t := by
      calc
        _ ≤ Real.exp (A - 1) * ((64 / 315 : ℝ) / A ^ 9) /
            (16 * sourceNormalization A) :=
          div_le_div_of_nonneg_left (by positivity) (by positivity) (by nlinarith)
        _ ≤ f t := div_le_div_of_nonneg_right hn (by positivity)
    convert hd using 1
    unfold c
    rw [Real.exp_sub]
    ring
  have hwindow : c * Real.exp A / A ^ 9 ≤ ∫ t in (2 * A - 2)..(2 * A - 1), f t := by
    have hi := intervalIntegral.integral_mono_on (μ := volume) (by linarith : 2 * A - 2 ≤ 2 * A - 1)
      intervalIntegrable_const (hfc.intervalIntegrable _ _) hpt
    have he : (∫ _ in (2 * A - 2)..(2 * A - 1), c * Real.exp A / A ^ 9) =
        c * Real.exp A / A ^ 9 := by
      rw [intervalIntegral.integral_const]
      simp only [show (2 * A - 1) - (2 * A - 2) = 1 by ring, one_smul]
    rw [he] at hi
    exact hi
  have hwhole : (∫ t in (2 * A - 2)..(2 * A - 1), f t) ≤ ∫ t in (0 : ℝ)..(2 * A), f t :=
    intervalIntegral.integral_mono_interval (by linarith) (by linarith) (by linarith)
      (Eventually.of_forall hfn) (hfc.intervalIntegrable _ _)
  exact hwindow.trans hwhole

theorem bulk_source_continuum_tendsto_at_top : Tendsto bulkSourceContinuum atTop atTop := by
  rcases bulk_source_continuum_growth with ⟨c, R, hc, _, hbound⟩
  have hlim : Tendsto (fun A : ℝ ↦ c * Real.exp A / A ^ 9) atTop atTop := by
    simpa only [mul_div_assoc] using (Real.tendsto_exp_div_pow_atTop 9).const_mul_atTop hc
  apply tendsto_atTop_mono' atTop _ hlim
  filter_upwards [eventually_ge_atTop R] with A hA
  exact hbound A hA

end
end FormalResearch.RiemannHypothesis.SourceBoundaryLayer
