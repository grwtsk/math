-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FirstPrimeZeroHeadCost.Variant378cc701ec8b41532b645e75648cb2349b7135884844786621e4b1bc18fe0f68","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"378cc701ec8b41532b645e75648cb2349b7135884844786621e4b1bc18fe0f68","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.FirstPrimeZeroHeadCost.Variant378cc701ec8b41532b645e75648cb2349b7135884844786621e4b1bc18fe0f68","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"378cc701ec8b41532b645e75648cb2349b7135884844786621e4b1bc18fe0f68","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/balanced-first-prime-native/direct-source-consumer/attempt01/SourceBalancedFirstPrimeConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceBalancedFirstPrimeReturn
import SourceFiniteHeadMinusWeight

/-! Apply the actual balanced first-prime source to its original estimate consumer.
Direction and conceptual origin: grwtsk contributors.
Source estimate construction and formalization: OpenAI Codex assistance.
The independently supplied uniform original B7 tail witness remains open. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FirstPrimeZeroHeadCost.Variant378cc701ec8b41532b645e75648cb2349b7135884844786621e4b1bc18fe0f68

set_option autoImplicit false
noncomputable section
namespace RH16BalancedFirstPrimeConsumer
open MeasureTheory Set Filter
open RH16BalancedFirstPrimePrimitive RH16BalancedFirstPrimeReturn RH16FiniteHeadMinusWeight
open RH16ActualF7
open FormalResearch.RiemannHypothesis
open SourceFirstPrimeAbel SourcePrimePowerPartition SourceDiagonalMainTerm SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationAssembly

def firstPrimeZeroHeadCost (Q : ℝ) : ℝ :=
  2 * Real.log 4 * (1 / 2 + 15 / Q ^ 2) * (Real.sqrt 7 - 1)

def balancedFirstPrimeReturnCost (K Q : ℝ) : ℝ :=
  2 + firstPrimeZeroHeadCost Q + K + 20 * Real.log Q / Q

/-- The actual zero-to-seven density uses both theta bounds before absolute estimation. -/
theorem balanced_density_abs_le_nonnegative {t : ℝ} (ht : 0 ≤ t) :
    |balancedFirstPrimeDensity t| ≤ Real.log 4 * Real.exp (t / 2) := by
  have hs : Real.exp (t / 2) ≤ Real.exp t := Real.exp_le_exp.mpr (by linarith)
  have hlog : 1 ≤ Real.log (4 : ℝ) := by
    have hp := Real.log_pow (2 : ℝ) 2
    norm_num at hp
    linarith [Real.log_two_gt_d9]
  have htheta := Chebyshev.theta_le_log4_mul_x (Real.exp_pos t).le
  have htheta0 := Chebyshev.theta_nonneg (Real.exp t)
  have hnum : |Chebyshev.theta (Real.exp t) - Real.exp t + Real.exp (t / 2)| ≤
      Real.log 4 * Real.exp t := by
    apply abs_le.mpr
    have hm := mul_le_mul_of_nonneg_right hlog (Real.exp_pos t).le
    constructor <;> nlinarith [Real.exp_pos (t / 2)]
  unfold balancedFirstPrimeDensity
  rw [abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    _ ≤ (Real.log 4 * Real.exp t) * Real.exp (-t / 2) :=
      mul_le_mul_of_nonneg_right hnum (Real.exp_pos _).le
    _ = _ := by rw [mul_assoc, ← Real.exp_add]; congr 2; ring

/-- The actual fixed physical head retains every first prime below seven. -/
theorem firstPrimeZeroHead_abs_le_at_radius {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    |firstPrimeZeroHead A| ≤ firstPrimeZeroHeadCost Q := by
  have hA : 91 ≤ A := hQ.trans hQA
  have hpQ : 0 < Q := by linarith
  let k : ℝ := Real.log 4 * (1 / 2 + 15 / Q ^ 2)
  have hb : IntervalIntegrable (fun t : ℝ => k * Real.exp (t / 2))
      volume 0 (Real.log 7) := (by fun_prop : Continuous _).intervalIntegrable _ _
  have hp : ∀ t ∈ Ioc 0 (Real.log 7),
      ‖balancedFirstPrimeDensity t * minusCorrelationWeight A t‖ ≤
        k * Real.exp (t / 2) := by
    intro t ht
    have hF := balanced_density_abs_le_nonnegative ht.1.le
    have hkernel := actual_minus_kernel_error_fixed_head A t hA ht.1.le ht.2
    change |minusCorrelationWeight A t + 1 / 2| ≤ 15 / A ^ 2 at hkernel
    have hratio : (15 : ℝ) / A ^ 2 ≤ 15 / Q ^ 2 :=
      div_le_div_of_nonneg_left (by norm_num) (sq_pos_of_pos hpQ) (by nlinarith)
    have hW : |minusCorrelationWeight A t| ≤ 1 / 2 + 15 / Q ^ 2 := by
      calc
        _ = |(minusCorrelationWeight A t + 1 / 2) - 1 / 2| := by congr 1; ring
        _ ≤ |minusCorrelationWeight A t + 1 / 2| + |(1 / 2 : ℝ)| := abs_sub _ _
        _ ≤ 15 / A ^ 2 + 1 / 2 := by
          rw [abs_of_pos (by norm_num : (0 : ℝ) < 1 / 2)]
          exact add_le_add_right hkernel _
        _ ≤ _ := by linarith
    rw [Real.norm_eq_abs, abs_mul]
    calc
      _ ≤ (Real.log 4 * Real.exp (t / 2)) * (1 / 2 + 15 / Q ^ 2) :=
        mul_le_mul hF hW (abs_nonneg _) (by positivity)
      _ = _ := by dsimp [k]; ring
  have hn := intervalIntegral.norm_integral_le_of_norm_le
    (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7)) (ae_of_all _ hp) hb
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => 2 * k * Real.exp (t / 2))
      (k * Real.exp (t / 2)) t := by
    convert! (((hasDerivAt_id t).div_const (2 : ℝ)).exp.const_mul (2 * k)) using 1
    dsimp
    ring
  have he7 : Real.exp (Real.log 7 / 2) = Real.sqrt 7 := by
    rw [Real.exp_half, Real.exp_log (by norm_num : (0 : ℝ) < 7)]
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t) hb, he7,
    zero_div, Real.exp_zero, mul_one, Real.norm_eq_abs] at hn
  change |firstPrimeZeroHead A| ≤ _ at hn
  have he : 2 * k * Real.sqrt 7 - 2 * k = firstPrimeZeroHeadCost Q := by
    unfold firstPrimeZeroHeadCost
    dsimp [k]
    ring
  rw [he] at hn
  exact hn

/-- A supplied actual signed tail now controls the original first-prime-plus-main sum. -/
theorem firstPrime_main_upper_of_balanced_tail {K Q A : ℝ}
    (hQ : 91 ≤ Q) (hQA : Q ≤ A) (htail : -K ≤ balancedFirstPrimeTailWork A) :
    firstPrimeMoment A + diagonalMainCoefficient A * A ≤ balancedFirstPrimeReturnCost K Q := by
  have hA : 1 ≤ A := by linarith
  have hcont := (abs_le.mp (criticalContinuousMoment_abs_le_two A hA)).2
  have hzero := (abs_le.mp (firstPrimeZeroHead_abs_le_at_radius hQ hQA)).1
  have hhead := (abs_le.mp (balancedFirstPrimeHead_abs_le_at_radius hQ hQA)).1
  rw [firstPrime_main_eq_balanced_source A hA,
    balanced_full_eq_head_add_tail A (by linarith : 0 < A)]
  unfold balancedFirstPrimeReturnCost
  linarith only [hcont, hzero, hhead, htail]

theorem firstPrimeTail_of_balanced_tail (K Q : ℝ) (hK : 0 ≤ K) (hQ : 91 ≤ Q)
    (htail : ∀ A : ℝ, Q ≤ A → -K ≤ balancedFirstPrimeTailWork A) :
    FirstPrimeTailUpperBound := by
  have hs : 1 ≤ Real.sqrt (7 : ℝ) := by
    nlinarith [Real.sqrt_nonneg (7 : ℝ), Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 7)]
  have hc : 0 ≤ firstPrimeZeroHeadCost Q := by
    unfold firstPrimeZeroHeadCost
    exact mul_nonneg (by positivity) (by linarith)
  have hl : 0 ≤ Real.log Q := Real.log_nonneg (by linarith)
  have hpQ : 0 < Q := by linarith
  refine ⟨balancedFirstPrimeReturnCost K Q, ?_, Q, by linarith, ?_⟩
  · unfold balancedFirstPrimeReturnCost
    positivity
  · intro A hA
    exact firstPrime_main_upper_of_balanced_tail hQ hA (htail A hA)

/-- Exact original RH16 consumer; its uniform signed arithmetic premise is still supplied. -/
theorem estimate_of_balanced_firstPrime_tail (K Q : ℝ) (hK : 0 ≤ K) (hQ : 91 ≤ Q)
    (htail : ∀ A : ℝ, Q ≤ A → -K ≤ balancedFirstPrimeTailWork A) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_firstPrime_tail (firstPrimeTail_of_balanced_tail K Q hK hQ htail)

end RH16BalancedFirstPrimeConsumer
