# Complete source: GRWTSK.Topology.GeneralTopology.ActualCriticalCovarianceNormalizedDecay.Variantf16e014d97574b0995172ac872f00657b2c02309520b104158800b39fe32d3e2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `768cfdedb74c74a81ab9b6fd377c2af3097b271d` · SHA-256 `6199d6613dd6d50328b613d44bfd39919f91a8f046f380b6205d5e1519546be6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ActualNormalizedCriticalCovariance.Variant0509e6c7fe96232e7b31e3c6d5ca95683ad45ea8492872aed9d42205294d90a8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0509e6c7fe96232e7b31e3c6d5ca95683ad45ea8492872aed9d42205294d90a8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ActualNormalizedCriticalCovariance.Variant0509e6c7fe96232e7b31e3c6d5ca95683ad45ea8492872aed9d42205294d90a8","mathematical_subject":"Topology.GeneralTopology","original_sha256":"0509e6c7fe96232e7b31e3c6d5ca95683ad45ea8492872aed9d42205294d90a8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/dependencies/owner-source-captures/ActualCriticalCovarianceNormalizedDecay.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualCriticalCovarianceOrdinarySplit
import ActualSupportEdgeMangoldtRow
import FormalResearch.RiemannHypothesis.SourceSamplingCoefficients

/-!
The actual ordinary gamma center and the genuine C4 support-edge jets yield
normalized decay of the original critical covariance. The fixed early head
and the signed late source remain intact. The exponential normalization is
explicit and supplies no unnormalized uniform signed upper witness.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Topology.GeneralTopology.ActualNormalizedCriticalCovariance.Variant0509e6c7fe96232e7b31e3c6d5ca95683ad45ea8492872aed9d42205294d90a8

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.ActualCriticalCovarianceNormalizedDecay

open MeasureTheory Set Filter
open scoped Interval Topology
open SourceActualCriticalCovarianceOrdinarySplit SourceActualXiErrorConvolution
open ActualSupportEdgeMangoldtRow SourcePairing SourceSamplingCoefficients
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

noncomputable section

local notation "B" => Real.log 4 + 4 + Real.log 2 + |Real.eulerMascheroniConstant|

/-- The original actual covariance with its explicit exponential and fourth-power scale. -/
def actualNormalizedCriticalCovariance (A : ℝ) : ℝ :=
  A ^ 4 * Real.exp (-A) * actualCriticalErrorCovariance A

/-- Both the quarter zeroth jet and the half first jet retain their genuine edge powers. -/
theorem actualCriticalKernel_edge_abs_le {A t : ℝ} (hA : 91 ≤ A) (ht : t ≤ 2 * A) :
    |sourceCorrelation explicitSecondDerivative A t / 4 +
      deriv (sourceCorrelation explicitSecondDerivative A) t / 2| ≤
        67 / A ^ 4 * ((2 * A - t) ^ 4 / 96 + (2 * A - t) ^ 3 / 12) := by
  have h0 := actual_correlation_edge_abs_le (z := t) hA
  have h1 := actual_correlation_first_edge_abs_le hA ht
  simp only [iteratedDeriv_succ, iteratedDeriv_zero] at h1
  have hh := abs_add_le (sourceCorrelation explicitSecondDerivative A t / 4)
    (deriv (sourceCorrelation explicitSecondDerivative A) t / 2)
  rw [abs_div, abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 4),
    abs_of_pos (by norm_num : (0 : ℝ) < 2)] at hh
  calc
    _ ≤ |sourceCorrelation explicitSecondDerivative A t| / 4 +
        |deriv (sourceCorrelation explicitSecondDerivative A) t| / 2 := hh
    _ ≤ (67 / A ^ 4 * (2 * A - t) ^ 4 / 24) / 4 +
        (67 / A ^ 4 * (2 * A - t) ^ 3 / 6) / 2 :=
      add_le_add (div_le_div_of_nonneg_right h0 (by norm_num))
        (div_le_div_of_nonneg_right h1 (by norm_num))
    _ = _ := by ring

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
      ((2 * A - t) ^ 4 / 96 + (2 * A - t) ^ 3 / 12) * Real.exp (t / 2)) ≤
        16 * Real.exp A := by
  have h4 := exponential_truncated_moment_le 4 (by linarith : 0 ≤ 2 * A)
  have h3 := exponential_truncated_moment_le 3 (by linarith : 0 ≤ 2 * A)
  norm_num only [Nat.factorial, Nat.cast_ofNat] at h4 h3
  rw [show 2 * A / 2 = A by ring] at h4 h3
  have he : (∫ t in 0..2 * A,
      ((2 * A - t) ^ 4 / 96 + (2 * A - t) ^ 3 / 12) * Real.exp (t / 2)) =
        (∫ t in 0..2 * A, (2 * A - t) ^ 4 * Real.exp (t / 2)) / 96 +
          (∫ t in 0..2 * A, (2 * A - t) ^ 3 * Real.exp (t / 2)) / 12 := by
    rw [← intervalIntegral.integral_div, ← intervalIntegral.integral_div,
      ← intervalIntegral.integral_add
        ((by fun_prop : Continuous (fun t : ℝ =>
          (2 * A - t) ^ 4 * Real.exp (t / 2) / 96)).intervalIntegrable _ _)
        ((by fun_prop : Continuous (fun t : ℝ =>
          (2 * A - t) ^ 3 * Real.exp (t / 2) / 12)).intervalIntegrable _ _)]
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    ring
  rw [he]
  nlinarith

/-- A true late source amplitude gives the C4 edge mass, with its whole interval retained. -/
theorem actualCriticalErrorCovariance_late_edge_abs_le {A T eta : ℝ} (hA : 91 ≤ A)
    (hT : Real.log 7 ≤ T) (hTA : T ≤ 2 * A) (heta : 0 ≤ eta)
    (hG : ∀ t, T ≤ t → |actualCenteredMangoldtLogError t| ≤ eta) :
    |∫ t in T..2 * A, actualCriticalErrorDensity A t| ≤
      1072 * eta * Real.exp A / A ^ 4 := by
  have hT0 : 0 ≤ T := (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7)).trans hT
  let f := fun t : ℝ =>
    ((2 * A - t) ^ 4 / 96 + (2 * A - t) ^ 3 / 12) * Real.exp (t / 2)
  let k : ℝ := eta * (67 / A ^ 4)
  have hk : 0 ≤ k := by dsimp [k]; positivity
  have hf : Continuous f := by dsimp [f]; fun_prop
  have hpos : ∀ᵐ t ∂volume.restrict (Ioc (0 : ℝ) (2 * A)), 0 ≤ f t := by
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
    dsimp [f]
    have : 0 ≤ 2 * A - t := by linarith [ht.2]
    positivity
  have hp : ∀ t ∈ Ioc T (2 * A), ‖actualCriticalErrorDensity A t‖ ≤ k * f t := by
    intro t ht
    have hh := actualCriticalKernel_edge_abs_le hA ht.2
    unfold actualCriticalErrorDensity
    rw [Real.norm_eq_abs, abs_mul, abs_mul, Real.abs_exp]
    have hpoly : 0 ≤ (2 * A - t) ^ 4 / 96 + (2 * A - t) ^ 3 / 12 := by
      have : 0 ≤ 2 * A - t := by linarith [ht.2]
      positivity
    calc
      _ ≤ (eta * Real.exp (t / 2)) *
          (67 / A ^ 4 * ((2 * A - t) ^ 4 / 96 + (2 * A - t) ^ 3 / 12)) :=
        mul_le_mul (mul_le_mul_of_nonneg_right (hG t ht.1.le) (by positivity))
          hh (abs_nonneg _) (by positivity)
      _ = _ := by dsimp [k, f]; ring
  have hb := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) hTA (ae_of_all _ hp)
    ((hf.intervalIntegrable T (2 * A)).const_mul k)
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul] at hb
  have hm := intervalIntegral.integral_mono_interval hT0 hTA le_rfl hpos
    (hf.intervalIntegrable 0 (2 * A))
  have hfull : (∫ t in 0..2 * A, f t) ≤ 16 * Real.exp A := kernel_edge_mass_le hA
  calc
    _ ≤ k * ∫ t in T..2 * A, f t := hb
    _ ≤ k * (16 * Real.exp A) := mul_le_mul_of_nonneg_left (hm.trans hfull) hk
    _ = _ := by dsimp [k]; ring

/-- The fixed actual signed early center remains in this normalized budget. -/
def actualNormalizedCriticalEarlyBudget (T A : ℝ) : ℝ :=
  |actualEarlyCriticalErrorCenter T| * (A ^ 4 * Real.exp (-A)) +
    (2 * B * Real.exp (T / 2) * (5 / 8 * T ^ 2 + 5 / 2 * T)) *
      (A ^ 2 * Real.exp (-A))

/-- The complete finite early source has its literal normalized fourth/second-power budget. -/
theorem actualNormalizedCriticalEarly_abs_le {A T : ℝ} (hA : 91 ≤ A)
    (hT : Real.log 7 ≤ T) :
    |A ^ 4 * Real.exp (-A) * (∫ t in Real.log 7..T, actualCriticalErrorDensity A t)| ≤
      actualNormalizedCriticalEarlyBudget T A := by
  have he := actualCriticalErrorCovariance_early_error_abs_le hA hT
  have hbound : |∫ t in Real.log 7..T, actualCriticalErrorDensity A t| ≤
      |actualEarlyCriticalErrorCenter T| +
        2 * B * Real.exp (T / 2) * (5 / 8 * T ^ 2 + 5 / 2 * T) / A ^ 2 := by
    have h := abs_add_le
      ((∫ t in Real.log 7..T, actualCriticalErrorDensity A t) - actualEarlyCriticalErrorCenter T)
      (actualEarlyCriticalErrorCenter T)
    rw [sub_add_cancel] at h
    linarith
  rw [abs_mul, abs_of_nonneg (by positivity : 0 ≤ A ^ 4 * Real.exp (-A))]
  calc
    _ ≤ A ^ 4 * Real.exp (-A) *
        (|actualEarlyCriticalErrorCenter T| +
          2 * B * Real.exp (T / 2) * (5 / 8 * T ^ 2 + 5 / 2 * T) / A ^ 2) :=
      mul_le_mul_of_nonneg_left hbound (by positivity)
    _ = _ := by
      unfold actualNormalizedCriticalEarlyBudget
      have hne : A ≠ 0 := by linarith
      field_simp

private theorem power_exp_tendsto_zero (n : ℕ) :
    Tendsto (fun A : ℝ => A ^ n * Real.exp (-A)) atTop (𝓝 0) := by
  convert tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (n : ℝ) 1 (by norm_num) using 1
  funext A
  rw [Real.rpow_natCast]
  simp

/-- Each fixed early source budget tends to zero on the actual real scale. -/
theorem actualNormalizedCriticalEarlyBudget_tendsto_zero (T : ℝ) :
    Tendsto (actualNormalizedCriticalEarlyBudget T) atTop (𝓝 0) := by
  have hh := ((power_exp_tendsto_zero 4).const_mul |actualEarlyCriticalErrorCenter T|).add
    ((power_exp_tendsto_zero 2).const_mul
      (2 * B * Real.exp (T / 2) * (5 / 8 * T ^ 2 + 5 / 2 * T)))
  unfold actualNormalizedCriticalEarlyBudget
  simpa only [mul_zero, add_zero] using hh

/-- The exact early/late split keeps a fixed amplitude and its normalized edge cost explicit. -/
theorem actualNormalizedCriticalCovariance_abs_le {A T eta : ℝ} (hA : 91 ≤ A)
    (hT : Real.log 7 ≤ T) (hTA : T ≤ 2 * A) (heta : 0 ≤ eta)
    (hG : ∀ t, T ≤ t → |actualCenteredMangoldtLogError t| ≤ eta) :
    |actualNormalizedCriticalCovariance A| ≤
      actualNormalizedCriticalEarlyBudget T A + 1072 * eta := by
  have hl := actualCriticalErrorCovariance_late_edge_abs_le hA hT hTA heta hG
  have he := actualNormalizedCriticalEarly_abs_le hA hT
  have hk : 0 ≤ A ^ 4 * Real.exp (-A) := by positivity
  have hn : A ≠ 0 := by linarith
  have hlate : |A ^ 4 * Real.exp (-A) *
      (∫ t in T..2 * A, actualCriticalErrorDensity A t)| ≤ 1072 * eta := by
    rw [abs_mul, abs_of_nonneg hk]
    calc
      _ ≤ A ^ 4 * Real.exp (-A) * (1072 * eta * Real.exp A / A ^ 4) :=
        mul_le_mul_of_nonneg_left hl hk
      _ = _ := by
        rw [Real.exp_neg]
        have he : Real.exp A ≠ 0 := (Real.exp_pos _).ne'
        field_simp
  unfold actualNormalizedCriticalCovariance
  rw [actualCriticalErrorCovariance_split hA hT hTA, mul_add]
  exact (abs_add_le _ _).trans (add_le_add he hlate)

/-- Genuine ordinary actual centering yields normalized decay, with no unnormalized witness. -/
theorem actualNormalizedCriticalCovariance_tendsto_zero :
    Tendsto actualNormalizedCriticalCovariance atTop (𝓝 0) := by
  apply Metric.tendsto_atTop.2
  intro eps heps
  let eta : ℝ := eps / (2 * 1072)
  have heta : 0 < eta := by dsimp [eta]; positivity
  obtain ⟨T, hT, hG⟩ := actualCenteredMangoldtLogError_small_after heta
  obtain ⟨N, hN⟩ := Metric.tendsto_atTop.1
    (actualNormalizedCriticalEarlyBudget_tendsto_zero T) (eps / 2) (by positivity)
  refine ⟨max 91 (max (T / 2) N), fun A hA => ?_⟩
  have h91 : 91 ≤ A := (le_max_left _ _).trans hA
  have hTA : T ≤ 2 * A := by
    have h := (le_max_left (T / 2) N).trans ((le_max_right _ _).trans hA)
    linarith
  have hb := hN A ((le_max_right (T / 2) N).trans ((le_max_right _ _).trans hA))
  rw [Real.dist_eq, sub_zero] at hb ⊢
  have hh := actualNormalizedCriticalCovariance_abs_le h91 hT hTA heta.le hG
  have hbudget : actualNormalizedCriticalEarlyBudget T A < eps / 2 :=
    (le_abs_self _).trans_lt hb
  dsimp [eta] at hh
  linarith

end
end FormalResearch.RiemannHypothesis.ActualCriticalCovarianceNormalizedDecay
```
