# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.SourceActualCriticalCovariancePntRate.Variantb9ab5aaf409965bf7526587d73c134d4101eff294d4a2f5f385a03742c663a53

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45d363dd5f4e45a1aa179454c32bd28a3cfc8877` · SHA-256 `7c42ca845aefae3bca1fbd9c437b006dab1f3bdb0887ac76355d69624d02d181`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.ActualErrorIntervalIntegrable.Variantad75bfaac8b4a92cdb2e6918233398ce12f3d0aab4565a9fd35f19e4f8ce088b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ad75bfaac8b4a92cdb2e6918233398ce12f3d0aab4565a9fd35f19e4f8ce088b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.ActualErrorIntervalIntegrable.Variantad75bfaac8b4a92cdb2e6918233398ce12f3d0aab4565a9fd35f19e4f8ce088b","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"ad75bfaac8b4a92cdb2e6918233398ce12f3d0aab4565a9fd35f19e4f8ce088b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-critical-complement/actual-critical-covariance-pnt-rate/native01/SourceActualCriticalCovariancePntRate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualCriticalCovarianceNormalizedDecay
import SourceActualMertensPntRate

/-!
The genuine actual PNT rate controls the true late critical covariance after
the split at T=A. The complete finite early signed center is retained and
then bounded by the actual elementary error estimate. The resulting unsigned
exponential allowance is not a uniform signed lower bound or RH proof.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.ActualErrorIntervalIntegrable.Variantad75bfaac8b4a92cdb2e6918233398ce12f3d0aab4565a9fd35f19e4f8ce088b

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualCriticalCovariancePntRate

open MeasureTheory Set Filter Asymptotics
open scoped Interval Topology
open SourceMangoldtAbel SourceActualXiErrorConvolution SourceActualXiErrorConvolutionKernel
open SourceActualCriticalCovarianceOrdinarySplit ActualCriticalCovarianceNormalizedDecay
open SourceActualMertensPntRate

noncomputable section

local notation "B" => Real.log 4 + 4 + Real.log 2 + |Real.eulerMascheroniConstant|

private theorem actualError_intervalIntegrable {b : ℝ} (hb : 0 ≤ b) :
    IntervalIntegrable actualCenteredMangoldtLogError volume 0 b := by
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable 0 b hb id (by fun_prop)
  have he : IntervalIntegrable mangoldtLogError volume 0 b := by
    simpa only [deriv_id, mul_one] using hi
  exact he.add intervalIntegrable_const

private theorem exp_half_mass_le {l b : ℝ} :
    (∫ t in l..b, Real.exp (t / 2)) ≤ 2 * Real.exp (b / 2) := by
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => 2 * Real.exp (t / 2))
      (Real.exp (t / 2)) t := by
    exact (((hasDerivAt_id t).div_const 2).exp.const_mul 2).congr_deriv
      (by dsimp; ring)
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).intervalIntegrable _ _)]
  have := Real.exp_pos (l / 2)
  linarith

/-- The complete true early center has a genuine finite absolute bound. -/
theorem actualEarlyCriticalErrorCenter_abs_le {T : ℝ} (hT : Real.log 7 ≤ T) :
    |actualEarlyCriticalErrorCenter T| ≤ (B / 2) * Real.exp (T / 2) := by
  have ha : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  have hi : IntervalIntegrable actualCenteredMangoldtLogError volume (Real.log 7) T :=
    (actualError_intervalIntegrable (ha.trans hT)).mono_set (by
      rw [uIcc_of_le (ha.trans hT), uIcc_of_le hT]
      exact Icc_subset_Icc ha le_rfl)
  have hp : ∀ t ∈ Ioc (Real.log 7) T,
      ‖actualCenteredMangoldtLogError t * Real.exp (t / 2)‖ ≤ B * Real.exp (t / 2) := by
    intro t ht
    rw [Real.norm_eq_abs, abs_mul, Real.abs_exp]
    exact mul_le_mul_of_nonneg_right
      (actualCenteredMangoldtLogError_abs_le (ha.trans ht.1.le)) (Real.exp_pos _).le
  have hm := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) hT
    (ae_of_all _ hp) ((by fun_prop : Continuous
      (fun t : ℝ => B * Real.exp (t / 2))).intervalIntegrable _ _)
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul] at hm
  have hb : 0 ≤ B := by positivity
  have hh := hm.trans (mul_le_mul_of_nonneg_left (exp_half_mass_le
    (l := Real.log 7) (b := T)) hb)
  unfold actualEarlyCriticalErrorCenter
  rw [abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 1 / 4)]
  nlinarith

/-- The true moving early interval keeps its complete center before this absolute payment. -/
theorem actualMovingEarlyNormalizedBudget_le {A : ℝ} (hA : 91 ≤ A) :
    actualNormalizedCriticalEarlyBudget A A ≤ (27 / 4 * B) * A ^ 4 * Real.exp (-A / 2) := by
  have ha : Real.log 7 ≤ A := by
    have hlog := Real.log_le_sub_one (by norm_num : (0 : ℝ) < 7)
    linarith
  have hh := actualEarlyCriticalErrorCenter_abs_le ha
  have hb : 0 ≤ B := by positivity
  have he : Real.exp (A / 2) * Real.exp (-A) = Real.exp (-A / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hpow : A ^ 3 ≤ A ^ 4 := by
    nlinarith [sq_nonneg A, sq_nonneg (A ^ 2)]
  unfold actualNormalizedCriticalEarlyBudget
  calc
    _ ≤ ((B / 2) * Real.exp (A / 2)) * (A ^ 4 * Real.exp (-A)) +
        (2 * B * Real.exp (A / 2) * (5 / 8 * A ^ 2 + 5 / 2 * A)) *
          (A ^ 2 * Real.exp (-A)) :=
      add_le_add (mul_le_mul_of_nonneg_right hh (by positivity)) le_rfl
    _ = B * (7 / 4 * A ^ 4 + 5 * A ^ 3) * Real.exp (-A / 2) := by
      calc
        _ = B * (7 / 4 * A ^ 4 + 5 * A ^ 3) *
            (Real.exp (A / 2) * Real.exp (-A)) := by ring
        _ = _ := by rw [he]
    _ ≤ _ := by
      have hm : 7 / 4 * A ^ 4 + 5 * A ^ 3 ≤ 27 / 4 * A ^ 4 := by linarith
      have hh := mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hm hb)
        (Real.exp_pos (-A / 2)).le
      simpa only [mul_assoc] using hh

/-- A source-specific late PNT rate gives an explicit full normalized budget. -/
theorem actualNormalizedCriticalCovariance_Pnt_budget {A c C : ℝ} (hA : 91 ≤ A)
    (hc : 0 < c) (hC : 0 ≤ C)
    (hG : ∀ t ≥ A, |actualCenteredMangoldtLogError t| ≤
      C * Real.exp (-c * t ^ ((1 : ℝ) / 10))) :
    |actualNormalizedCriticalCovariance A| ≤
      (27 / 4 * B) * A ^ 4 * Real.exp (-A / 2) +
        1072 * C * Real.exp (-c * A ^ ((1 : ℝ) / 10)) := by
  have hA0 : 0 ≤ A := by linarith
  have ha : Real.log 7 ≤ A := by
    have hlog := Real.log_le_sub_one (by norm_num : (0 : ℝ) < 7)
    linarith
  have hlate : ∀ t, A ≤ t → |actualCenteredMangoldtLogError t| ≤
      C * Real.exp (-c * A ^ ((1 : ℝ) / 10)) := by
    intro t ht
    have hp := Real.rpow_le_rpow hA0 ht (by norm_num : (0 : ℝ) ≤ 1 / 10)
    have he : Real.exp (-c * t ^ ((1 : ℝ) / 10)) ≤
        Real.exp (-c * A ^ ((1 : ℝ) / 10)) := by
      apply Real.exp_le_exp.mpr
      nlinarith
    exact (hG t ht).trans (mul_le_mul_of_nonneg_left he hC)
  have h := actualNormalizedCriticalCovariance_abs_le hA ha (by linarith : A ≤ 2 * A)
    (mul_nonneg hC (Real.exp_pos _).le) hlate
  have hh := h.trans (add_le_add (actualMovingEarlyNormalizedBudget_le hA) le_rfl)
  simpa only [mul_assoc] using hh

private theorem polynomial_exp_le_stretched (c : ℝ) :
    ∀ᶠ A : ℝ in atTop, A ^ 4 * Real.exp (-A / 2) ≤
      Real.exp (-c * A ^ ((1 : ℝ) / 10)) := by
  have hr : Tendsto (fun A : ℝ => c * A ^ (-(9 / 10 : ℝ))) atTop (𝓝 0) := by
    simpa only [mul_zero] using
      (tendsto_rpow_neg_atTop (by norm_num : (0 : ℝ) < 9 / 10)).const_mul c
  have he : Tendsto (fun A : ℝ => A ^ 4 * Real.exp (-A / 4)) atTop (𝓝 0) := by
    convert tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (4 : ℝ) (1 / 4) (by norm_num)
      using 1
    funext A
    rw [Real.rpow_natCast]
    congr 2
    ring
  filter_upwards [hr.eventually_lt_const (by norm_num : (0 : ℝ) < 1 / 4),
    he.eventually_lt_const (by norm_num : (0 : ℝ) < 1),
    eventually_ge_atTop (1 : ℝ)] with A hratio hpoly hA
  have hpos : 0 < A := by linarith
  have hp : A ^ ((1 : ℝ) / 10) = A ^ (-(9 / 10 : ℝ)) * A := by
    rw [← Real.rpow_one A, ← Real.rpow_add hpos]
    norm_num
  have hlin : c * A ^ ((1 : ℝ) / 10) ≤ A / 4 := by
    rw [hp]
    have h := mul_le_mul_of_nonneg_right hratio.le hpos.le
    nlinarith
  have hex : Real.exp (-A / 4) ≤ Real.exp (-c * A ^ ((1 : ℝ) / 10)) :=
    Real.exp_le_exp.mpr (by linarith)
  calc
    _ = (A ^ 4 * Real.exp (-A / 4)) * Real.exp (-A / 4) := by
      rw [mul_assoc, ← Real.exp_add]
      congr 2
      ring
    _ ≤ Real.exp (-A / 4) := by nlinarith [Real.exp_pos (-A / 4)]
    _ ≤ _ := hex

/-- The actual fourth-power normalized covariance has a genuine stretched-exponential rate. -/
theorem actualNormalizedCriticalCovariance_Pnt_isBigO :
    ∃ c > 0, actualNormalizedCriticalCovariance =O[atTop]
      fun A : ℝ => Real.exp (-c * A ^ ((1 : ℝ) / 10)) := by
  obtain ⟨c, hc, hg⟩ := actualCenteredMangoldtLogError_isBigO
  obtain ⟨C, hC, hb⟩ := hg.exists_pos
  obtain ⟨T, hT⟩ := eventually_atTop.1 hb.bound
  refine ⟨c, hc, isBigO_iff.mpr ⟨27 / 4 * B + 1072 * C, ?_⟩⟩
  filter_upwards [eventually_ge_atTop (max 91 T), polynomial_exp_le_stretched c]
    with A hA hp
  have ha : 91 ≤ A := (le_max_left 91 T).trans hA
  have hgA : ∀ t ≥ A, |actualCenteredMangoldtLogError t| ≤
      C * Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by
    intro t ht
    simpa only [Real.norm_eq_abs, Real.abs_exp] using
      hT t ((le_max_right 91 T).trans (hA.trans ht))
  have h := actualNormalizedCriticalCovariance_Pnt_budget ha hc hC.le hgA
  have hb0 : 0 ≤ 27 / 4 * B := by positivity
  rw [Real.norm_eq_abs, Real.norm_eq_abs, Real.abs_exp]
  calc
    _ ≤ _ := h
    _ ≤ (27 / 4 * B) * Real.exp (-c * A ^ ((1 : ℝ) / 10)) +
        1072 * C * Real.exp (-c * A ^ ((1 : ℝ) / 10)) := by
      exact add_le_add (mul_le_mul_of_nonneg_left hp hb0) le_rfl
    _ = _ := by ring

/-- Removing the actual normalization retains a growing unsigned exponential allowance. -/
theorem actualCriticalErrorCovariance_Pnt_isBigO :
    ∃ c > 0, actualCriticalErrorCovariance =O[atTop]
      fun A : ℝ => Real.exp (A - c * A ^ ((1 : ℝ) / 10)) / A ^ 4 := by
  obtain ⟨c, hc, hn⟩ := actualNormalizedCriticalCovariance_Pnt_isBigO
  obtain ⟨C, hC⟩ := isBigO_iff.mp hn
  refine ⟨c, hc, isBigO_iff.mpr ⟨C, ?_⟩⟩
  filter_upwards [hC, eventually_ge_atTop (1 : ℝ)] with A hA hpos
  have hApos : 0 < A := by linarith
  have hpow : 0 < A ^ 4 := by positivity
  rw [Real.norm_eq_abs, Real.norm_eq_abs, abs_div,
    Real.abs_exp, abs_of_pos hpow]
  rw [Real.norm_eq_abs, Real.norm_eq_abs, Real.abs_exp] at hA
  unfold actualNormalizedCriticalCovariance at hA
  rw [abs_mul, abs_of_nonneg (by positivity : 0 ≤ A ^ 4 * Real.exp (-A))] at hA
  have hh := mul_le_mul_of_nonneg_right hA (Real.exp_pos A).le
  have hex : Real.exp (-A) * Real.exp A = 1 := by
    rw [← Real.exp_add, neg_add_cancel, Real.exp_zero]
  have hl : (A ^ 4 * Real.exp (-A) * |actualCriticalErrorCovariance A|) *
      Real.exp A = A ^ 4 * |actualCriticalErrorCovariance A| := by
    calc
      _ = A ^ 4 * |actualCriticalErrorCovariance A| *
          (Real.exp (-A) * Real.exp A) := by ring
      _ = _ := by rw [hex, mul_one]
  have hr : (C * Real.exp (-c * A ^ ((1 : ℝ) / 10))) * Real.exp A =
      C * Real.exp (A - c * A ^ ((1 : ℝ) / 10)) := by
    rw [mul_assoc, ← Real.exp_add]
    congr 2
    ring
  rw [hl, hr] at hh
  apply (le_div_iff₀ hpow).2
  simpa only [div_mul_eq_mul_div, mul_div_cancel₀ _ hpow.ne'] using hh

end
end FormalResearch.RiemannHypothesis.SourceActualCriticalCovariancePntRate
```
