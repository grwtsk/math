-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCenteredMangoldtLogError.Variant0e7fcf02ea93fade74f15caf8d1d2fb854e5cd5da904dff3da6432f96bca248c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0e7fcf02ea93fade74f15caf8d1d2fb854e5cd5da904dff3da6432f96bca248c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualCenteredMangoldtLogError.Variant0e7fcf02ea93fade74f15caf8d1d2fb854e5cd5da904dff3da6432f96bca248c","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"0e7fcf02ea93fade74f15caf8d1d2fb854e5cd5da904dff3da6432f96bca248c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/dependencies/owner-source-captures/SourceActualXiErrorConvolution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import RootActualXiDampedSquareReadout

/-!
Finite Abel transport of the actual logarithmic Mangoldt error expresses the
same signed fixed-damped Xi primitive as two genuine finite convolutions.
All zero/unit and closed-seven heads are retained. No published-paper rate,
ordinary convergence, critical cancellation or absolute-average witness is
assumed here.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCenteredMangoldtLogError.Variant0e7fcf02ea93fade74f15caf8d1d2fb854e5cd5da904dff3da6432f96bca248c

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualXiErrorConvolution

open MeasureTheory Set ArithmeticFunction
open scoped Interval
open SourceMangoldtAbel SourceActualXiDampedFiniteBound SourceActualXiHalfFiniteReadout
open RootActualXiTailPrimitive RH16ActualPsiNegativeBlock WeightedPrimeMertens
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimatePrimeSmoothDefect
open PrimePowerDescent

noncomputable section

/-- The independently actual harmonic Mangoldt discrepancy, centered by actual gamma. -/
def actualCenteredMangoldtLogError (t : ℝ) : ℝ :=
  mangoldtLogError t + Real.eulerMascheroniConstant

/-- A finite causal exponential convolution of the actual centered error. -/
def actualMangoldtErrorConvolution (lam t : ℝ) : ℝ :=
  ∫ r in 0..t, actualCenteredMangoldtLogError r * Real.exp (lam * (r - t))

/-- Literal exponential test of the full closed actual Mangoldt inventory. -/
def actualNormalizedMangoldtExpReadout (lam t : ℝ) : ℝ :=
  Real.exp (-lam * t) * mangoldtLogSum t (fun r => Real.exp (lam * r))

/-- The full closed half prefix retains the unit and every prime power. -/
def actualMangoldtHalfClosedPrefix (t : ℝ) : ℝ :=
  ∑ n ∈ Finset.Ioc 0 (Nat.floor (Real.exp t)), (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ)

/-- The actual seven constant, without assuming an ordinary limiting value. -/
def actualXiErrorConvolutionSevenValue : ℝ :=
  -Real.eulerMascheroniConstant - mangoldtLogError (Real.log 7) - 1 +
    (Chebyshev.psi 7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) / 7

/-- The entire literal closed-seven half inventory remains in this decaying head. -/
def actualXiErrorConvolutionHalfHead : ℝ :=
  4 + 2 * (∑ n ∈ Finset.Ioc 0 7, (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ)) -
    2 * (Chebyshev.psi 7 + 7 +
      2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) / Real.sqrt 7 +
        2 * Real.eulerMascheroniConstant

/-- The genuine gamma/continuous one-damping head, kept with its actual sign. -/
def actualXiErrorConvolutionOneHead : ℝ :=
  2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) - 1 - Real.eulerMascheroniConstant

/-- The actual unit has zero Mangoldt mass; the centered zero trace is gamma itself. -/
theorem actualCenteredMangoldtLogError_at_zero :
    actualCenteredMangoldtLogError 0 = Real.eulerMascheroniConstant := by
  simp [actualCenteredMangoldtLogError, mangoldtLogError, mangoldtLogPrefix_zero]

/-- Every finite causal convolution has its actual empty-interval trace. -/
theorem actualMangoldtErrorConvolution_at_zero (lam : ℝ) :
    actualMangoldtErrorConvolution lam 0 = 0 := by
  simp [actualMangoldtErrorConvolution]

private theorem error_intervalIntegrable {t : ℝ} (ht : 0 ≤ t) :
    IntervalIntegrable mangoldtLogError volume 0 t := by
  simpa only [deriv_id, mul_one] using
    mangoldtLogError_mul_deriv_intervalIntegrable 0 t ht id (by fun_prop)

private theorem prefix_intervalIntegrable {t : ℝ} (ht : 0 ≤ t) :
    IntervalIntegrable mangoldtLogPrefix volume 0 t := by
  simpa only [deriv_id, mul_one] using
    mangoldtLogPrefix_mul_deriv_intervalIntegrable 0 t ht id (by fun_prop)

/-- Genuine actual finite L1 holds for every real damping parameter. -/
theorem actualMangoldtErrorConvolution_intervalIntegrable (lam : ℝ) {t : ℝ} (ht : 0 ≤ t) :
    IntervalIntegrable (fun r => actualCenteredMangoldtLogError r *
      Real.exp (lam * (r - t))) volume 0 t := by
  have hi : IntervalIntegrable actualCenteredMangoldtLogError volume 0 t :=
    (error_intervalIntegrable ht).add (intervalIntegrable_const)
  exact hi.mul_continuousOn (by fun_prop)

private theorem exp_hasDerivAt (lam t r : ℝ) :
    HasDerivAt (fun r : ℝ => Real.exp (lam * (r - t)))
      (lam * Real.exp (lam * (r - t))) r := by
  have he := (((hasDerivAt_id r).sub_const t).const_mul lam).exp
  exact he.congr_deriv (by dsimp only [id_eq]; ring)

private theorem exponential_mass (lam t : ℝ) (hlam : lam ≠ 0) :
    (∫ r in 0..t, Real.exp (lam * (r - t))) =
      (1 - Real.exp (-lam * t)) / lam := by
  have hd (r : ℝ) : HasDerivAt (fun r : ℝ => Real.exp (lam * (r - t)) / lam)
      (Real.exp (lam * (r - t))) r := by
    exact ((exp_hasDerivAt lam t r).div_const lam).congr_deriv (by field_simp)
  have hi : IntervalIntegrable (fun r : ℝ => Real.exp (lam * (r - t))) volume 0 t :=
    (by fun_prop : Continuous (fun r : ℝ => Real.exp (lam * (r - t)))).intervalIntegrable _ _
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ => hd r) hi]
  simp only [sub_self, mul_zero, Real.exp_zero, zero_sub, mul_neg]
  rw [show -(lam * t) = -lam * t by ring]
  ring

private theorem exponential_first_moment (lam t : ℝ) (hlam : lam ≠ 0) :
    (∫ r in 0..t, r * Real.exp (lam * (r - t))) =
      t / lam - (1 - Real.exp (-lam * t)) / lam ^ 2 := by
  have hd (r : ℝ) : HasDerivAt
      (fun r : ℝ => (r / lam - 1 / lam ^ 2) * Real.exp (lam * (r - t)))
      (r * Real.exp (lam * (r - t))) r := by
    have he := (((hasDerivAt_id r).div_const lam).sub_const (1 / lam ^ 2)).mul
      (exp_hasDerivAt lam t r)
    exact he.congr_deriv (by dsimp only [id_eq]; field_simp; ring)
  have hi : IntervalIntegrable (fun r : ℝ => r * Real.exp (lam * (r - t))) volume 0 t :=
    (by fun_prop : Continuous (fun r : ℝ => r * Real.exp (lam * (r - t)))).intervalIntegrable _ _
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ => hd r) hi]
  simp only [sub_self, mul_zero, Real.exp_zero, zero_sub, zero_div, mul_one, mul_neg]
  rw [show -(lam * t) = -lam * t by ring]
  ring

/-- Actual Abel transport holds at every finite real time, with no asymptotic premise. -/
theorem actualNormalizedMangoldtExpReadout_eq_convolution {lam t : ℝ}
    (hlam : lam ≠ 0) (ht : 0 ≤ t) :
    actualNormalizedMangoldtExpReadout lam t = actualCenteredMangoldtLogError t + 1 / lam -
      lam * actualMangoldtErrorConvolution lam t -
        (Real.eulerMascheroniConstant + 1 / lam) * Real.exp (-lam * t) := by
  let f : ℝ → ℝ := fun r => Real.exp (lam * r)
  have hd : deriv f = fun r => lam * Real.exp (lam * r) := by
    funext r
    have he := exp_hasDerivAt lam 0 r
    simpa only [sub_zero] using he.deriv
  have ha := mangoldtLogSum_abel t ht f (by unfold f; fun_prop)
  have hW := prefix_intervalIntegrable ht
  have hFe := actualMangoldtErrorConvolution_intervalIntegrable lam ht
  have hre : IntervalIntegrable (fun r : ℝ => r * Real.exp (lam * (r - t))) volume 0 t :=
    (by fun_prop : Continuous (fun r : ℝ => r * Real.exp (lam * (r - t)))).intervalIntegrable _ _
  have he : IntervalIntegrable (fun r : ℝ => Real.exp (lam * (r - t))) volume 0 t :=
    (by fun_prop : Continuous (fun r : ℝ => Real.exp (lam * (r - t)))).intervalIntegrable _ _
  have hI : (∫ r in 0..t, mangoldtLogPrefix r * Real.exp (lam * (r - t))) =
      actualMangoldtErrorConvolution lam t +
        (∫ r in 0..t, r * Real.exp (lam * (r - t))) -
          Real.eulerMascheroniConstant * (∫ r in 0..t, Real.exp (lam * (r - t))) := by
    unfold actualMangoldtErrorConvolution
    rw [← intervalIntegral.integral_const_mul,
      ← intervalIntegral.integral_add hFe hre,
      ← intervalIntegral.integral_sub (hFe.add hre) (he.const_mul _)]
    apply intervalIntegral.integral_congr
    intro r _
    unfold actualCenteredMangoldtLogError mangoldtLogError
    ring
  have hex : Real.exp (-lam * t) * Real.exp (lam * t) = 1 := by
    rw [← Real.exp_add, show -lam * t + lam * t = 0 by ring, Real.exp_zero]
  have hmul : Real.exp (-lam * t) *
      (∫ r in 0..t, mangoldtLogPrefix r * deriv f r) =
      lam * (∫ r in 0..t, mangoldtLogPrefix r * Real.exp (lam * (r - t))) := by
    rw [hd, ← intervalIntegral.integral_const_mul, ← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_congr
    intro r _
    have hr : Real.exp (-lam * t) * Real.exp (lam * r) = Real.exp (lam * (r - t)) := by
      rw [← Real.exp_add]
      congr 1
      ring
    calc
      _ = lam * mangoldtLogPrefix r *
          (Real.exp (-lam * t) * Real.exp (lam * r)) := by ring
      _ = _ := by rw [hr]; ring
  unfold actualNormalizedMangoldtExpReadout
  rw [ha]
  change Real.exp (-lam * t) * (Real.exp (lam * t) * mangoldtLogPrefix t - _) = _
  rw [mul_sub, ← mul_assoc, hex, one_mul, hmul, hI,
    exponential_mass lam t hlam, exponential_first_moment lam t hlam]
  unfold actualCenteredMangoldtLogError mangoldtLogError
  field_simp
  ring

private theorem logSum_eq_closed (t : ℝ) (ht : 0 ≤ t) (f : ℝ → ℝ) :
    mangoldtLogSum t f = ∑ n ∈ Finset.Ioc 0 (Nat.floor (Real.exp t)),
      (vonMangoldt n : ℝ) / (n : ℝ) * f (Real.log n) := by
  have hz : mangoldtLogSum 0 f = 0 := by
    simp [mangoldtLogSum, primePowerInventory]
  have hw := mangoldtLogWindow_eq_interval_sum 0 t (by norm_num) ht f
  rw [mangoldtLogWindow, hz, sub_zero, Real.exp_zero] at hw
  norm_num at hw
  rw [hw]
  apply Finset.sum_subset
  · intro n hn
    simp only [Finset.mem_Ioc] at *
    omega
  · intro n hn hnnot
    have hn' := Finset.mem_Ioc.mp hn
    have hn1 : n = 1 := by
      simp only [Finset.mem_Ioc, not_and, not_le] at hnnot
      omega
    subst n
    simp

/-- The one-damping test is the unchanged full closed Chebyshev prefix. -/
theorem actualNormalizedMangoldtExpReadout_one {t : ℝ} (ht : 0 ≤ t) :
    actualNormalizedMangoldtExpReadout 1 t = Real.exp (-t) * Chebyshev.psi (Real.exp t) := by
  unfold actualNormalizedMangoldtExpReadout
  rw [logSum_eq_closed t ht]
  simp only [one_mul, neg_mul]
  unfold Chebyshev.psi
  congr 1
  apply Finset.sum_congr rfl
  intro n hn
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (Finset.mem_Ioc.mp hn).1
  rw [Real.exp_log hn0]
  field_simp

/-- The half-damping test retains every original closed Mangoldt half atom. -/
theorem actualNormalizedMangoldtExpReadout_half {t : ℝ} (ht : 0 ≤ t) :
    actualNormalizedMangoldtExpReadout (1 / 2) t =
      Real.exp (-t / 2) * actualMangoldtHalfClosedPrefix t := by
  unfold actualNormalizedMangoldtExpReadout actualMangoldtHalfClosedPrefix
  rw [logSum_eq_closed t ht]
  rw [show -(1 / 2 : ℝ) * t = -t / 2 by ring]
  congr 1
  apply Finset.sum_congr rfl
  intro n hn
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (Finset.mem_Ioc.mp hn).1
  have hns := Real.sq_sqrt hn0.le
  have hsn : Real.sqrt (n : ℝ) ≠ 0 := (Real.sqrt_pos.mpr hn0).ne'
  rw [show (1 / 2 : ℝ) * Real.log n = Real.log n / 2 by ring,
    Real.exp_half, Real.exp_log hn0]
  field_simp
  rw [hns]

/-- The original prime-seven atom stays in the exact lower closed prefix. -/
theorem actualMangoldtHalfClosedPrefix_split_seven {t : ℝ} (ht : Real.log 7 ≤ t) :
    actualMangoldtHalfClosedPrefix t =
      (∑ n ∈ Finset.Ioc 0 7, (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ)) +
        actualMangoldtHalfWindowSeven (Real.exp t) := by
  have ht0 : 0 ≤ t := (Real.log_nonneg (by norm_num)).trans ht
  have hreal : (7 : ℝ) ≤ Real.exp t := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using Real.exp_le_exp.mpr ht
  have h7 : 7 ≤ Nat.floor (Real.exp t) := Nat.le_floor (by
    norm_num only [Nat.cast_ofNat]
    linarith)
  have hu : Finset.Ioc 0 (Nat.floor (Real.exp t)) =
      Finset.Ioc 0 7 ∪ Finset.Ioc 7 (Nat.floor (Real.exp t)) := by
    ext n
    simp only [Finset.mem_Ioc, Finset.mem_union]
    omega
  have hd : Disjoint (Finset.Ioc 0 7) (Finset.Ioc 7 (Nat.floor (Real.exp t))) := by
    rw [Finset.disjoint_left]
    intro n hn hm
    simp only [Finset.mem_Ioc] at hn hm
    omega
  unfold actualMangoldtHalfClosedPrefix actualMangoldtHalfWindowSeven
  rw [hu, Finset.sum_union hd]

/-- The same signed actual J is a difference of finite actual-error convolutions and full heads. -/
theorem actualDampedXiFinitePrimitive_eq_error_convolutions {t : ℝ} (ht : Real.log 7 ≤ t) :
    (1 / 2 : ℝ) * actualDampedXiFinitePrimitive t - actualXiErrorConvolutionSevenValue =
      actualMangoldtErrorConvolution (1 / 2) t - actualMangoldtErrorConvolution 1 t +
        actualXiErrorConvolutionHalfHead * Real.exp (-t / 2) +
          actualXiErrorConvolutionOneHead * Real.exp (-t) := by
  have ht0 : 0 ≤ t := (Real.log_nonneg (by norm_num)).trans ht
  have hpsi := actualNormalizedMangoldtExpReadout_eq_convolution (lam := 1) (by norm_num) ht0
  have hhalf := actualNormalizedMangoldtExpReadout_eq_convolution (lam := 1 / 2) (by norm_num) ht0
  rw [actualNormalizedMangoldtExpReadout_one ht0] at hpsi
  rw [actualNormalizedMangoldtExpReadout_half ht0] at hhalf
  norm_num at hpsi hhalf
  rw [show -((1 / 2 : ℝ) * t) = -t / 2 by ring] at hhalf
  have he := actualDampedXiFinitePrimitive_closed_readout ht
  have hf := actualAnchoredXiTailPrimitive_eq_finite ht
  have hs : Real.sqrt (Real.exp t) = Real.exp (t / 2) := (Real.exp_half t).symm
  have hi : (Real.exp t)⁻¹ = Real.exp (-t) := (Real.exp_neg t).symm
  have hi2 : (Real.exp (t / 2))⁻¹ = Real.exp (-t / 2) := by
    rw [show -t / 2 = -(t / 2) by ring, Real.exp_neg]
  have he2 : Real.exp (-t / 2) ^ 2 = Real.exp (-t) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have hex : Real.exp t * Real.exp (-t) = 1 := by
    rw [← Real.exp_add, add_neg_cancel, Real.exp_zero]
  have hsplit := actualMangoldtHalfClosedPrefix_split_seven ht
  have hw : actualMangoldtHalfWindowSeven (Real.exp t) = actualMangoldtHalfClosedPrefix t -
      (∑ n ∈ Finset.Ioc 0 7, (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ)) := by
    linarith
  rw [hf, hs, hw] at he
  unfold actualXiErrorConvolutionSevenValue actualXiErrorConvolutionHalfHead
    actualXiErrorConvolutionOneHead
  unfold shiftedActualChebyshev at he
  unfold actualCenteredMangoldtLogError at hpsi hhalf
  simp only [div_eq_mul_inv] at he hi2 he2 hpsi hhalf ⊢
  rw [hi, hi2] at he
  ring_nf at he he2 hpsi hhalf hex ⊢
  rw [he2] at he
  nlinarith

end
end FormalResearch.RiemannHypothesis.SourceActualXiErrorConvolution
