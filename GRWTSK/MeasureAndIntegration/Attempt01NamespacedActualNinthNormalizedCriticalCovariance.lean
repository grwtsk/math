-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ActualNinthNormalizedCriticalCovariance.Variante0af5231bccafe1cf5ed6eb06df860f5b2b539fc180716591b06d2bb7c3ac7cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e0af5231bccafe1cf5ed6eb06df860f5b2b539fc180716591b06d2bb7c3ac7cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ActualNinthNormalizedCriticalCovariance.Variante0af5231bccafe1cf5ed6eb06df860f5b2b539fc180716591b06d2bb7c3ac7cd","mathematical_subject":"Topology.GeneralTopology","original_sha256":"e0af5231bccafe1cf5ed6eb06df860f5b2b539fc180716591b06d2bb7c3ac7cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-critical-covariance-edge-nine/attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualCriticalCovarianceOrdinarySplit
import SourceActualEdgeCorrelationDerivative
import FormalResearch.RiemannHypothesis.SourceSamplingCoefficients

/-!
The actual ordinary gamma center and the genuine finite endpoint polynomial yield
normalized decay of the original critical covariance. The fixed early head
and the signed late source remain intact. The exponential normalization is
explicit and supplies no unnormalized uniform signed upper witness.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Topology.GeneralTopology.ActualNinthNormalizedCriticalCovariance.Variante0af5231bccafe1cf5ed6eb06df860f5b2b539fc180716591b06d2bb7c3ac7cd

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualCriticalCovarianceEdgeNine

open MeasureTheory Set Filter
open scoped Interval Topology
open SourceActualCriticalCovarianceOrdinarySplit SourceActualXiErrorConvolution
open SourceActualEdgeCorrelationDerivative SourcePairing SourceSamplingCoefficients
open EstimateSourceEdgeCorrelation
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

noncomputable section

local notation "B" => Real.log 4 + 4 + Real.log 2 + |Real.eulerMascheroniConstant|

/-- The original actual covariance with its explicit exponential and ninth-power scale. -/
def actualNinthNormalizedCriticalCovariance (A : ℝ) : ℝ :=
  A ^ 9 * Real.exp (-A) * actualCriticalErrorCovariance A

/-- The fixed nonnegative polynomial for both literal source edge jets. -/
def actualCriticalNinthEdgePolynomial (h : ℝ) : ℝ :=
  3932160 * h ^ 4 + 294912 * h ^ 5 + 131072 * h ^ 6 +
    12288 * h ^ 7 + 1024 * h ^ 8 + 128 * h ^ 9

/-- Both actual jets retain the genuine A^-9 finite-overlap normalization. -/
theorem actualCriticalKernel_edge_abs_le {A t : ℝ} (hA : 91 ≤ A)
    (ht0 : 0 ≤ t) (ht : t ≤ 2 * A) :
    |sourceCorrelation explicitSecondDerivative A t / 4 +
      deriv (sourceCorrelation explicitSecondDerivative A) t / 2| ≤
        actualCriticalNinthEdgePolynomial (2 * A - t) / A ^ 9 := by
  have h1 : 1 ≤ A := by linarith
  have hz : 0 ≤ 2 * A - t := by linarith
  have hzA : 2 * A - t ≤ 2 * A := by linarith
  have h0 := sourceCorrelation_upper_edge_abs_le A (2 * A - t) h1 hz hzA
  have hd := actual_correlation_deriv_upper_edge_abs_le A (2 * A - t) h1 hz hzA
  rw [show 2 * A - (2 * A - t) = t by ring] at h0 hd
  have hh := abs_add_le (sourceCorrelation explicitSecondDerivative A t / 4)
    (deriv (sourceCorrelation explicitSecondDerivative A) t / 2)
  rw [abs_div, abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 4),
    abs_of_pos (by norm_num : (0 : ℝ) < 2)] at hh
  calc
    _ ≤ |sourceCorrelation explicitSecondDerivative A t| / 4 +
        |deriv (sourceCorrelation explicitSecondDerivative A) t| / 2 := hh
    _ ≤ (edgePolynomial (2 * A - t) / A ^ 9) / 4 +
        (edgeFirstPolynomial (2 * A - t) / A ^ 9) / 2 :=
      add_le_add (div_le_div_of_nonneg_right h0 (by norm_num))
        (div_le_div_of_nonneg_right hd (by norm_num))
    _ = _ := by
      unfold edgePolynomial edgeFirstPolynomial actualCriticalNinthEdgePolynomial
      ring

private theorem exponential_truncated_moment_le (j : ℕ) {L : ℝ} (hL : 0 ≤ L) :
    (∫ t in 0..L, (L - t) ^ j * Real.exp (t / 2)) ≤
      Real.exp (L / 2) * ((2 : ℝ) ^ (j + 1) * (j.factorial : ℝ)) := by
  have hi := exponential_half_integrable j
  have hn : ∀ᵐ t ∂volume.restrict (Ioi (0 : ℝ)),
      0 ≤ t ^ j * Real.exp (-t / 2) := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact mul_nonneg (pow_nonneg (show 0 ≤ t from ht.le) j) (Real.exp_pos _).le
  have hm := setIntegral_mono_set (s := Ioc (0 : ℝ) L) (t := Ioi (0 : ℝ)) hi hn
    (Filter.Eventually.of_forall (fun _ ht => ht.1))
  rw [← intervalIntegral.integral_of_le hL, exponential_half_integral] at hm
  have hs := intervalIntegral.integral_comp_sub_left
    (fun t : ℝ => t ^ j * Real.exp (-t / 2)) (a := (0 : ℝ)) (b := L) L
  simp only [sub_self, sub_zero] at hs
  calc
    _ = Real.exp (L / 2) * (∫ t in 0..L, (L - t) ^ j * Real.exp (-(L - t) / 2)) := by
      rw [← intervalIntegral.integral_const_mul]
      apply intervalIntegral.integral_congr
      intro t _
      dsimp only
      have he : Real.exp (t / 2) = Real.exp (L / 2) * Real.exp (-(L - t) / 2) := by
        rw [← Real.exp_add]
        congr 1
        ring
      rw [he]
      ring
    _ = Real.exp (L / 2) * (∫ t in 0..L, t ^ j * Real.exp (-t / 2)) := by rw [hs]
    _ ≤ _ := mul_le_mul_of_nonneg_left hm (Real.exp_pos _).le

private theorem kernel_edge_mass_le {A : ℝ} (hA : 91 ≤ A) :
    (∫ t in 0..2 * A,
      actualCriticalNinthEdgePolynomial (2 * A - t) * Real.exp (t / 2)) ≤
        101921587200 * Real.exp A := by
  have h4 := exponential_truncated_moment_le 4 (by linarith : 0 ≤ 2 * A)
  have h5 := exponential_truncated_moment_le 5 (by linarith : 0 ≤ 2 * A)
  have h6 := exponential_truncated_moment_le 6 (by linarith : 0 ≤ 2 * A)
  have h7 := exponential_truncated_moment_le 7 (by linarith : 0 ≤ 2 * A)
  have h8 := exponential_truncated_moment_le 8 (by linarith : 0 ≤ 2 * A)
  have h9 := exponential_truncated_moment_le 9 (by linarith : 0 ≤ 2 * A)
  norm_num only [Nat.factorial, Nat.cast_ofNat] at h4 h5 h6 h7 h8 h9
  rw [show 2 * A / 2 = A by ring] at h4 h5 h6 h7 h8 h9
  have he : (∫ t in 0..2 * A,
      actualCriticalNinthEdgePolynomial (2 * A - t) * Real.exp (t / 2)) =
      3932160 * (∫ t in 0..2 * A, (2 * A - t) ^ 4 * Real.exp (t / 2)) +
      294912 * (∫ t in 0..2 * A, (2 * A - t) ^ 5 * Real.exp (t / 2)) +
      131072 * (∫ t in 0..2 * A, (2 * A - t) ^ 6 * Real.exp (t / 2)) +
      12288 * (∫ t in 0..2 * A, (2 * A - t) ^ 7 * Real.exp (t / 2)) +
      1024 * (∫ t in 0..2 * A, (2 * A - t) ^ 8 * Real.exp (t / 2)) +
      128 * (∫ t in 0..2 * A, (2 * A - t) ^ 9 * Real.exp (t / 2)) := by
    simp only [actualCriticalNinthEdgePolynomial, add_mul, mul_assoc]
    repeat' rw [intervalIntegral.integral_add
      (by apply Continuous.intervalIntegrable; fun_prop)
      (by apply Continuous.intervalIntegrable; fun_prop)]
    simp only [intervalIntegral.integral_const_mul]
  rw [he]
  linarith

/-- A true late source amplitude gives the actual polynomial edge mass, with its whole interval retained. -/
theorem actualCriticalErrorCovariance_late_edge_abs_le {A T eta : ℝ} (hA : 91 ≤ A)
    (hT : Real.log 7 ≤ T) (hTA : T ≤ 2 * A) (heta : 0 ≤ eta)
    (hG : ∀ t, T ≤ t → |actualCenteredMangoldtLogError t| ≤ eta) :
    |∫ t in T..2 * A, actualCriticalErrorDensity A t| ≤
      101921587200 * eta * Real.exp A / A ^ 9 := by
  have hT0 : 0 ≤ T := (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7)).trans hT
  let f := fun t : ℝ =>
    actualCriticalNinthEdgePolynomial (2 * A - t) * Real.exp (t / 2)
  let k : ℝ := eta / A ^ 9
  have hk : 0 ≤ k := by dsimp [k]; positivity
  have hf : Continuous f := by dsimp [f]; fun_prop
  have hpos : ∀ᵐ t ∂volume.restrict (Ioc (0 : ℝ) (2 * A)), 0 ≤ f t := by
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
    dsimp [f]
    unfold actualCriticalNinthEdgePolynomial
    have : 0 ≤ 2 * A - t := by linarith [ht.2]
    positivity
  have hp : ∀ t ∈ Ioc T (2 * A), ‖actualCriticalErrorDensity A t‖ ≤ k * f t := by
    intro t ht
    have hh := actualCriticalKernel_edge_abs_le hA (hT0.trans ht.1.le) ht.2
    unfold actualCriticalErrorDensity
    rw [Real.norm_eq_abs, abs_mul, abs_mul, Real.abs_exp]
    have hpoly : 0 ≤ actualCriticalNinthEdgePolynomial (2 * A - t) := by
      have : 0 ≤ 2 * A - t := by linarith [ht.2]
      unfold actualCriticalNinthEdgePolynomial
      positivity
    calc
      _ ≤ (eta * Real.exp (t / 2)) *
          (actualCriticalNinthEdgePolynomial (2 * A - t) / A ^ 9) :=
        mul_le_mul (mul_le_mul_of_nonneg_right (hG t ht.1.le) (by positivity))
          hh (abs_nonneg _) (by positivity)
      _ = _ := by dsimp [k, f]; ring
  have hb := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) hTA (ae_of_all _ hp)
    ((hf.intervalIntegrable T (2 * A)).const_mul k)
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul] at hb
  have hm := intervalIntegral.integral_mono_interval hT0 hTA le_rfl hpos
    (hf.intervalIntegrable 0 (2 * A))
  have hfull : (∫ t in 0..2 * A, f t) ≤ 101921587200 * Real.exp A := kernel_edge_mass_le hA
  calc
    _ ≤ k * ∫ t in T..2 * A, f t := hb
    _ ≤ k * (101921587200 * Real.exp A) := mul_le_mul_of_nonneg_left (hm.trans hfull) hk
    _ = _ := by dsimp [k]; ring

/-- The fixed actual signed early center remains in this normalized budget. -/
def actualNinthNormalizedCriticalEarlyBudget (T A : ℝ) : ℝ :=
  |actualEarlyCriticalErrorCenter T| * (A ^ 9 * Real.exp (-A)) +
    (2 * B * Real.exp (T / 2) * (5 / 8 * T ^ 2 + 5 / 2 * T)) *
      (A ^ 7 * Real.exp (-A))

/-- The complete finite early source has its literal normalized ninth/seventh-power budget. -/
theorem actualNinthNormalizedCriticalEarly_abs_le {A T : ℝ} (hA : 91 ≤ A)
    (hT : Real.log 7 ≤ T) :
    |A ^ 9 * Real.exp (-A) * (∫ t in Real.log 7..T, actualCriticalErrorDensity A t)| ≤
      actualNinthNormalizedCriticalEarlyBudget T A := by
  have he := actualCriticalErrorCovariance_early_error_abs_le hA hT
  have hbound : |∫ t in Real.log 7..T, actualCriticalErrorDensity A t| ≤
      |actualEarlyCriticalErrorCenter T| +
        2 * B * Real.exp (T / 2) * (5 / 8 * T ^ 2 + 5 / 2 * T) / A ^ 2 := by
    have h := abs_add_le
      ((∫ t in Real.log 7..T, actualCriticalErrorDensity A t) - actualEarlyCriticalErrorCenter T)
      (actualEarlyCriticalErrorCenter T)
    rw [sub_add_cancel] at h
    linarith
  rw [abs_mul, abs_of_nonneg (by positivity : 0 ≤ A ^ 9 * Real.exp (-A))]
  calc
    _ ≤ A ^ 9 * Real.exp (-A) *
        (|actualEarlyCriticalErrorCenter T| +
          2 * B * Real.exp (T / 2) * (5 / 8 * T ^ 2 + 5 / 2 * T) / A ^ 2) :=
      mul_le_mul_of_nonneg_left hbound (by positivity)
    _ = _ := by
      unfold actualNinthNormalizedCriticalEarlyBudget
      have hne : A ≠ 0 := by linarith
      field_simp

private theorem power_exp_tendsto_zero (n : ℕ) :
    Tendsto (fun A : ℝ => A ^ n * Real.exp (-A)) atTop (𝓝 0) := by
  convert tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (n : ℝ) 1 (by norm_num) using 1
  funext A
  rw [Real.rpow_natCast]
  simp

/-- Each fixed early source budget tends to zero on the actual real scale. -/
theorem actualNinthNormalizedCriticalEarlyBudget_tendsto_zero (T : ℝ) :
    Tendsto (actualNinthNormalizedCriticalEarlyBudget T) atTop (𝓝 0) := by
  have hh := ((power_exp_tendsto_zero 9).const_mul |actualEarlyCriticalErrorCenter T|).add
    ((power_exp_tendsto_zero 7).const_mul
      (2 * B * Real.exp (T / 2) * (5 / 8 * T ^ 2 + 5 / 2 * T)))
  unfold actualNinthNormalizedCriticalEarlyBudget
  simpa only [mul_zero, add_zero] using hh

/-- The exact early/late split keeps a fixed amplitude and its normalized edge cost explicit. -/
theorem actualNinthNormalizedCriticalCovariance_abs_le {A T eta : ℝ} (hA : 91 ≤ A)
    (hT : Real.log 7 ≤ T) (hTA : T ≤ 2 * A) (heta : 0 ≤ eta)
    (hG : ∀ t, T ≤ t → |actualCenteredMangoldtLogError t| ≤ eta) :
    |actualNinthNormalizedCriticalCovariance A| ≤
      actualNinthNormalizedCriticalEarlyBudget T A + 101921587200 * eta := by
  have hl := actualCriticalErrorCovariance_late_edge_abs_le hA hT hTA heta hG
  have he := actualNinthNormalizedCriticalEarly_abs_le hA hT
  have hk : 0 ≤ A ^ 9 * Real.exp (-A) := by positivity
  have hn : A ≠ 0 := by linarith
  have hlate : |A ^ 9 * Real.exp (-A) *
      (∫ t in T..2 * A, actualCriticalErrorDensity A t)| ≤ 101921587200 * eta := by
    rw [abs_mul, abs_of_nonneg hk]
    calc
      _ ≤ A ^ 9 * Real.exp (-A) * (101921587200 * eta * Real.exp A / A ^ 9) :=
        mul_le_mul_of_nonneg_left hl hk
      _ = _ := by
        rw [Real.exp_neg]
        have he : Real.exp A ≠ 0 := (Real.exp_pos _).ne'
        field_simp
  unfold actualNinthNormalizedCriticalCovariance
  rw [actualCriticalErrorCovariance_split hA hT hTA, mul_add]
  exact (abs_add_le _ _).trans (add_le_add he hlate)

/-- Genuine ordinary actual centering yields normalized decay, with no unnormalized witness. -/
theorem actualNinthNormalizedCriticalCovariance_tendsto_zero :
    Tendsto actualNinthNormalizedCriticalCovariance atTop (𝓝 0) := by
  apply Metric.tendsto_atTop.2
  intro eps heps
  let eta : ℝ := eps / (2 * 101921587200)
  have heta : 0 < eta := by dsimp [eta]; positivity
  obtain ⟨T, hT, hG⟩ := actualCenteredMangoldtLogError_small_after heta
  obtain ⟨N, hN⟩ := Metric.tendsto_atTop.1
    (actualNinthNormalizedCriticalEarlyBudget_tendsto_zero T) (eps / 2) (by positivity)
  refine ⟨max 91 (max (T / 2) N), fun A hA => ?_⟩
  have h91 : 91 ≤ A := (le_max_left _ _).trans hA
  have hTA : T ≤ 2 * A := by
    have h := (le_max_left (T / 2) N).trans ((le_max_right _ _).trans hA)
    linarith
  have hb := hN A ((le_max_right (T / 2) N).trans ((le_max_right _ _).trans hA))
  rw [Real.dist_eq, sub_zero] at hb ⊢
  have hh := actualNinthNormalizedCriticalCovariance_abs_le h91 hT hTA heta.le hG
  have hbudget : actualNinthNormalizedCriticalEarlyBudget T A < eps / 2 :=
    (le_abs_self _).trans_lt hb
  dsimp [eta] at hh
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualCriticalCovarianceEdgeNine
