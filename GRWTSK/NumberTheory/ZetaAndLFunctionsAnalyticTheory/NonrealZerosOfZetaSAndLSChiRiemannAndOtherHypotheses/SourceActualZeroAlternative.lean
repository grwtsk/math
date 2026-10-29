import ActualCriticalOrdinateBudget
import SourceActualArchimedeanUpper

/-!
Actual zero weights admit a source-exact exponential normalization. Strict
membership in the genuine zero strip and the true source endpoint budget are
used, without a critical-line hypothesis or an actual signed constant cap.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualZeroNormalizedCancellation
open Zeta23 MeasureTheory Set Finset Filter
open scoped Topology
open SourcePairing SourceBumpLaplace SourceActualBumpVerticalBudget
open SourceActualInitialPrimeContour SourceActualPrimeBumpDictionary
open SourceActualBumpMellinLineBudget SourceActualBumpMovingHeight
open SourceActualFullZeroContour SourceActualZeroTailBudget
open ActualCriticalOrdinateBudget
open SourceActualZeroArithmeticDictionary SourceActualArchimedeanUpper
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual
noncomputable section

private theorem bump_abs_re_norm_le (z : ℂ) (hz : 1 ≤ ‖z‖) :
    ‖bumpLaplace z‖ ≤ 204288 * Real.exp |z.re| / ‖z‖ ^ 5 := by
  by_cases hr : 0 ≤ z.re
  · simpa only [abs_of_nonneg hr] using actual_bump_vertical_norm_le z hr hz
  · have hn : 0 ≤ (-z).re := by simp only [Complex.neg_re]; linarith
    have hb := actual_bump_vertical_norm_le (-z) hn (by simpa only [norm_neg] using hz)
    simpa only [bump_laplace_even, norm_neg, Complex.neg_re,
      abs_of_neg (lt_of_not_ge hr)] using hb

/-- The genuine ordinary complex source weight has this exact fixed-point normalized budget. -/
theorem actualInitialPrimeMellin_scaled_norm_bound (s : ℂ) (hs : s ≠ 1 / 2) :
    ∃ K R : ℝ, 0 ≤ K ∧ 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) * actualInitialPrimeMellin A s‖ ≤
        K * Real.exp (-(1 - 2 * |s.re - 1 / 2|) * A) := by
  let q : ℝ := ‖s - 1 / 2‖
  have hq : 0 < q := norm_pos_iff.mpr (sub_ne_zero.mpr hs)
  let K : ℝ := (109395 / 4096 : ℝ) * (204288 : ℝ) ^ 2 *
    (‖s‖ ^ 2 * ‖s - 1‖ ^ 2) / q ^ 10
  refine ⟨K,max 1 q⁻¹,by dsimp [K]; positivity,le_max_left _ _,?_⟩
  intro A hA
  have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
  have hp : 0 < A := by linarith
  have hAq : q⁻¹ ≤ A := (le_max_right _ _).trans hA
  have hf : 1 ≤ A * q := by
    calc
      1 = q⁻¹ * q := (inv_mul_cancel₀ hq.ne').symm
      _ ≤ A * q := mul_le_mul_of_nonneg_right hAq hq.le
  have hn : ‖(A : ℂ) * (s - 1 / 2)‖ = A * q := by
    simp only [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hp]
    rfl
  have hr : |((A : ℂ) * (s - 1 / 2)).re| = A * |s.re - 1 / 2| := by
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul,
      sub_zero, Complex.sub_re, Complex.div_ofNat_re, Complex.one_re]
    rw [abs_mul, abs_of_pos hp]
  have hb := bump_abs_re_norm_le ((A : ℂ) * (s - 1 / 2)) (by rw [hn]; exact hf)
  rw [hn, hr, mul_pow] at hb
  have hZ := source_normalization_pos A hA1
  have hZl := actualBumpNormalization_lower A hA1
  have hweight : ‖actualInitialPrimeMellin A s‖ =
      (A / sourceNormalization A) * (‖s‖ ^ 2 * ‖s - 1‖ ^ 2) *
        ‖bumpLaplace ((A : ℂ) * (s - 1 / 2))‖ ^ 2 := by
    rw [actualInitialPrimeMellin_eq_bumpMellinWeight hA1]
    unfold bumpMellinWeight
    simp only [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs]
    rw [abs_of_nonneg (by positivity : 0 ≤ A / sourceNormalization A)]
    ring
  have hu : ‖actualInitialPrimeMellin A s‖ ≤
      (A / (4096 / 109395 : ℝ)) * (‖s‖ ^ 2 * ‖s - 1‖ ^ 2) *
        (204288 * Real.exp (A * |s.re - 1 / 2|) / (A ^ 5 * q ^ 5)) ^ 2 := by
    rw [hweight]
    gcongr
  have he : Real.exp (A * |s.re - 1 / 2|) ^ 2 =
      Real.exp (2 * (A * |s.re - 1 / 2|)) := by
    rw [← Real.exp_nat_mul]
    congr 1
  have hscl : ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ)‖ = A ^ 9 * Real.exp (-A) := by
    simp only [Complex.norm_real, Real.norm_eq_abs]
    exact abs_of_nonneg (by positivity)
  rw [norm_mul, hscl]
  apply (mul_le_mul_of_nonneg_left hu (by positivity)).trans_eq
  rw [div_pow, mul_pow, he]
  dsimp only [K]
  have heq : -(1 - 2 * |s.re - 1 / 2|) * A =
      -A + 2 * (A * |s.re - 1 / 2|) := by ring
  rw [heq, Real.exp_add]
  field_simp

/-- Every fixed point strictly inside the true strip has a vanishing normalized source weight. -/
theorem actualInitialPrimeMellin_scaled_tendsto_zero (s : ℂ)
    (hs0 : 0 < s.re) (hs1 : s.re < 1) (hs : s ≠ 1 / 2) :
    Tendsto (fun A : ℝ => ((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
      actualInitialPrimeMellin A s) atTop (𝓝 0) := by
  obtain ⟨K,R,hK,hR,hbound⟩ := actualInitialPrimeMellin_scaled_norm_bound s hs
  have hx : |s.re - 1 / 2| < 1 / 2 := abs_lt.mpr ⟨by linarith,by linarith⟩
  have hd : 0 < 1 - 2 * |s.re - 1 / 2| := by linarith
  have he : Tendsto (fun A : ℝ => Real.exp (-(1 - 2 * |s.re - 1 / 2|) * A))
      atTop (𝓝 0) := by
    simpa only [Real.rpow_zero, one_mul] using
      tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero 0 (1 - 2 * |s.re - 1 / 2|) hd
  have hlim : Tendsto (fun A : ℝ => K *
      Real.exp (-(1 - 2 * |s.re - 1 / 2|) * A)) atTop (𝓝 0) := by
    simpa only [mul_zero] using he.const_mul K
  apply squeeze_zero_norm' _ hlim
  filter_upwards [eventually_ge_atTop R] with A hA
  exact hbound A hA

/-- Genuine actual zero membership excludes the sole degenerate fixed point. -/
theorem actualCarrierMellin_scaled_tendsto_zero (rho : (zetaZeros zetaSeam).carrier) :
    Tendsto (fun A : ℝ => ((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
      actualInitialPrimeMellin A rho) atTop (𝓝 0) := by
  have hn : (rho : ℂ) ≠ 1 / 2 := by
    intro h
    have hz : riemannZeta (rho : ℂ) = 0 := rho.2.1
    exact actual_zeta_half_ne_zero (h ▸ hz)
  exact actualInitialPrimeMellin_scaled_tendsto_zero rho rho.2.2.1 rho.2.2.2 hn

/-- Every fixed complete finite head retains all actual multiplicities under this normalization. -/
theorem actualZeroHeightHead_scaled_tendsto_zero (R : ℝ) :
    Tendsto (fun A : ℝ => ((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
      actualZeroHeightHead A R) atTop (𝓝 0) := by
  classical
  have hh := tendsto_finsetSum (actualZeroHeightHead_finite R).toFinset
    (a := fun _ => (0 : ℂ)) (fun rho _ =>
      by simpa only [mul_zero] using
        (actualCarrierMellin_scaled_tendsto_zero rho).const_mul
          ((zetaZeros zetaSeam).mult rho : ℂ))
  simpa only [actualZeroHeightHead, Finset.mul_sum, mul_left_comm, mul_zero,
    Finset.sum_const_zero] using hh

private theorem scaled_tail_uniform_bound :
    ∃ B : ℝ, 0 ≤ B ∧ ∀ A R : ℝ, 1 ≤ A → 4 ≤ R →
      ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) * actualZeroHeightTail A R‖ ≤ B / R ^ 4 := by
  obtain ⟨A0,hA0,hbound⟩ := actualZeroHeightTail_norm_bound
  let B : ℝ := 4 * actualZeroTailWeightConstant * A0
  have hC : 0 ≤ actualZeroTailWeightConstant := by
    dsimp [actualZeroTailWeightConstant]
    positivity
  refine ⟨B,by dsimp [B]; positivity,?_⟩
  intro A R hA hR
  have hAp : 0 < A := by linarith
  have hRp : 0 < R := by linarith
  have hlog : Real.log R + 2 ≤ 2 * R := by
    have hl := Real.log_le_sub_one_of_pos hRp
    linarith
  have hs : ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ)‖ = A ^ 9 * Real.exp (-A) := by
    simp only [Complex.norm_real, Real.norm_eq_abs]
    exact abs_of_nonneg (by positivity)
  rw [norm_mul, hs]
  calc
    _ ≤ (A ^ 9 * Real.exp (-A)) *
        (2 * actualZeroTailWeightConstant * A0 * Real.exp A * (Real.log R + 2) /
          (A ^ 9 * R ^ 5)) :=
      mul_le_mul_of_nonneg_left (hbound A R hA hR) (by positivity)
    _ = 2 * actualZeroTailWeightConstant * A0 * (Real.log R + 2) / R ^ 5 := by
      rw [Real.exp_neg]
      field_simp
    _ ≤ 2 * actualZeroTailWeightConstant * A0 * (2 * R) / R ^ 5 := by
      gcongr
    _ = B / R ^ 4 := by dsimp [B]; field_simp; ring

/-- The full ordinary complex actual-zero sum vanishes on the edge exponential scale. -/
theorem actualFullZeroContribution_scaled_tendsto_zero :
    Tendsto (fun A : ℝ => ((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
      actualFullZeroContribution A) atTop (𝓝 0) := by
  obtain ⟨B,hB,hbound⟩ := scaled_tail_uniform_bound
  apply Metric.tendsto_nhds.mpr
  intro eps heps
  let R : ℝ := max 4 (2 * B / eps + 1)
  have hR : 4 ≤ R := le_max_left _ _
  have hRp : 0 < R := by linarith
  have hR1 : 1 ≤ R := by linarith
  have hsize : 2 * B / eps ≤ R := by
    have h := le_max_right (4 : ℝ) (2 * B / eps + 1)
    dsimp [R]
    linarith
  have hprod : 2 * B ≤ R * eps := (div_le_iff₀ heps).mp hsize
  have hBR : B / R ^ 4 ≤ eps / 2 := by
    calc
      _ ≤ B / R := div_le_div_of_nonneg_left hB hRp
        (le_self_pow₀ hR1 (by decide : (4 : ℕ) ≠ 0))
      _ ≤ eps / 2 := (div_le_iff₀ hRp).mpr (by nlinarith)
  have hh := Metric.tendsto_nhds.mp (actualZeroHeightHead_scaled_tendsto_zero R)
    (eps / 2) (by linarith)
  filter_upwards [hh,eventually_ge_atTop (1 : ℝ)] with A hhead hA
  rw [dist_zero_right] at hhead ⊢
  calc
    _ = ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) * actualZeroHeightHead A R +
        ((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) * actualZeroHeightTail A R‖ := by
      rw [actualFullZeroContribution_eq_head_add_tail A R hA, mul_add]
    _ ≤ ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) * actualZeroHeightHead A R‖ +
        ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) * actualZeroHeightTail A R‖ := norm_add_le _ _
    _ < eps := by linarith [hbound A R hA hR]

/-- The full source quadratic form has this actual-zero-derived relative cancellation. -/
theorem actualSourceQuadraticValue_scaled_tendsto_zero :
    Tendsto (fun A : ℝ => ((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
      (sourceQuadraticValue explicitSecondDerivative A : ℂ)) atTop (𝓝 0) := by
  apply actualFullZeroContribution_scaled_tendsto_zero.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  rw [actualFullZeroContribution_eq_original_sourceQuadraticValue A hA]

/-- The original arithmetic residual has the same relative decay, with its full signed inventory. -/
theorem actualMertensResidual_scaled_tendsto_zero :
    Tendsto (fun A : ℝ => A ^ 9 * Real.exp (-A) * mertensResidual A)
      atTop (𝓝 0) := by
  have hscale : Tendsto (fun A : ℝ => A ^ 9 * Real.exp (-A)) atTop (𝓝 0) := by
    convert tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (9 : ℕ) 1 (by norm_num) using 1
    funext A
    rw [Real.rpow_natCast]
    simp
  have harch := hscale.mul actual_archimedean_tendsto_zero_frequency
  have hq := (Complex.continuous_re.tendsto 0).comp
    actualSourceQuadraticValue_scaled_tendsto_zero
  have hqreal : Tendsto (fun A : ℝ => A ^ 9 * Real.exp (-A) *
      sourceQuadraticValue explicitSecondDerivative A) atTop (𝓝 0) := by
    simpa only [Function.comp_def, Complex.mul_re, Complex.ofReal_re,
      Complex.ofReal_im, zero_mul, sub_zero, Complex.zero_re] using hq
  have hh : Tendsto (fun A : ℝ => (A ^ 9 * Real.exp (-A) *
      archimedeanValue explicitSecondDerivative A - A ^ 9 * Real.exp (-A) *
        sourceQuadraticValue explicitSecondDerivative A) / 2) atTop (𝓝 0) := by
    simpa only [zero_mul, sub_zero, zero_div] using (harch.sub hqreal).div_const 2
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  rw [sourceQuadraticValue,
    EstimatePrimeSmoothDefect.primePowerContribution_eq_closedPrimeMoment A hA,
    ← mertensResidual_eq_closedPrimeMoment A hA]
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualZeroNormalizedCancellation
