# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.SourceActualCriticalCovarianceNinthPntRate.Variant370b77864538e00670482063dd94a8035b9f2049b7dd66c1ebcc60a176ca4b6b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6809ba32c4f7206e85f5a4b0b40c220a86508214` · SHA-256 `09f2a23b60616129b33edd7a164918408a0bd7a78a055643e83c4ab1af718cef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.ActualErrorIntervalIntegrable.Variantdc780115f1484df08b6315840608e112279f74c077b0bbc2dd7482f5d64a42f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc780115f1484df08b6315840608e112279f74c077b0bbc2dd7482f5d64a42f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.ActualErrorIntervalIntegrable.Variantdc780115f1484df08b6315840608e112279f74c077b0bbc2dd7482f5d64a42f1","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"dc780115f1484df08b6315840608e112279f74c077b0bbc2dd7482f5d64a42f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-critical-complement/actual-critical-covariance-ninth-pnt-rate/native01/SourceActualCriticalCovarianceNinthPntRate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualCriticalCovarianceEdgeNine
import SourceActualMertensPntRate

/-!
The genuine actual PNT rate and the literal zeroth/first finite-overlap edge
jets control the complete actual ninth-power normalized covariance. The entire
signed early center and late source remain intact. Removing normalization
retains an exponential allowance and supplies no uniform signed lower witness.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.ActualErrorIntervalIntegrable.Variantdc780115f1484df08b6315840608e112279f74c077b0bbc2dd7482f5d64a42f1

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualCriticalCovarianceNinthPntRate

open MeasureTheory Set Filter Asymptotics
open scoped Interval Topology
open SourceActualXiErrorConvolution SourceActualCriticalCovarianceOrdinarySplit
open SourceActualCriticalCovarianceEdgeNine
open SourceMangoldtAbel
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
private theorem actualEarlyCriticalErrorCenter_abs_le {T : ℝ} (hT : Real.log 7 ≤ T) :
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
theorem actualMovingEarlyNinthNormalizedBudget_le {A : ℝ} (hA : 91 ≤ A) :
    actualNinthNormalizedCriticalEarlyBudget A A ≤ (27 / 4 * B) * A ^ 9 * Real.exp (-A / 2) := by
  have ha : Real.log 7 ≤ A := by
    have hlog := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)
    linarith
  have hh := actualEarlyCriticalErrorCenter_abs_le ha
  have hb : 0 ≤ B := by positivity
  have he : Real.exp (A / 2) * Real.exp (-A) = Real.exp (-A / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hpow : A ^ 8 ≤ A ^ 9 := by
    calc
      _ = A ^ 8 * 1 := by ring
      _ ≤ A ^ 8 * A := mul_le_mul_of_nonneg_left (by linarith) (by positivity)
      _ = _ := by ring
  unfold actualNinthNormalizedCriticalEarlyBudget
  calc
    _ ≤ ((B / 2) * Real.exp (A / 2)) * (A ^ 9 * Real.exp (-A)) +
        (2 * B * Real.exp (A / 2) * (5 / 8 * A ^ 2 + 5 / 2 * A)) *
          (A ^ 7 * Real.exp (-A)) :=
      add_le_add (mul_le_mul_of_nonneg_right hh (by positivity)) le_rfl
    _ = B * (7 / 4 * A ^ 9 + 5 * A ^ 8) * Real.exp (-A / 2) := by
      calc
        _ = B * (7 / 4 * A ^ 9 + 5 * A ^ 8) *
            (Real.exp (A / 2) * Real.exp (-A)) := by ring
        _ = _ := by rw [he]
    _ ≤ _ := by
      have hm : 7 / 4 * A ^ 9 + 5 * A ^ 8 ≤ 27 / 4 * A ^ 9 := by linarith
      have hh := mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hm hb)
        (Real.exp_pos (-A / 2)).le
      calc
        _ ≤ B * (27 / 4 * A ^ 9) * Real.exp (-A / 2) := hh
        _ = _ := by ring

/-- A source-specific late PNT rate gives an explicit full normalized budget. -/
theorem actualNinthNormalizedCriticalCovariance_Pnt_budget {A c C : ℝ} (hA : 91 ≤ A)
    (hc : 0 < c) (hC : 0 ≤ C)
    (hG : ∀ t ≥ A, |actualCenteredMangoldtLogError t| ≤
      C * Real.exp (-c * t ^ ((1 : ℝ) / 10))) :
    |actualNinthNormalizedCriticalCovariance A| ≤
      (27 / 4 * B) * A ^ 9 * Real.exp (-A / 2) +
        101921587200 * C * Real.exp (-c * A ^ ((1 : ℝ) / 10)) := by
  have hA0 : 0 ≤ A := by linarith
  have ha : Real.log 7 ≤ A := by
    have hlog := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)
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
  have h := actualNinthNormalizedCriticalCovariance_abs_le hA ha (by linarith : A ≤ 2 * A)
    (mul_nonneg hC (Real.exp_pos _).le) hlate
  have hh := h.trans (add_le_add (actualMovingEarlyNinthNormalizedBudget_le hA) le_rfl)
  simpa only [mul_assoc] using hh

private theorem polynomial_exp_le_stretched (c : ℝ) :
    ∀ᶠ A : ℝ in atTop, A ^ 9 * Real.exp (-A / 2) ≤
      Real.exp (-c * A ^ ((1 : ℝ) / 10)) := by
  have hr : Tendsto (fun A : ℝ => c * A ^ (-(9 / 10 : ℝ))) atTop (𝓝 0) := by
    simpa only [mul_zero] using
      (tendsto_rpow_neg_atTop (by norm_num : (0 : ℝ) < 9 / 10)).const_mul c
  have he : Tendsto (fun A : ℝ => A ^ 9 * Real.exp (-A / 4)) atTop (𝓝 0) := by
    simpa only [Real.rpow_ofNat, div_eq_mul_inv, neg_mul, mul_neg, one_mul, mul_comm] using
      tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (9 : ℝ) (1 / 4) (by norm_num)
  filter_upwards [hr.eventually_lt_const (by norm_num : (0 : ℝ) < 1 / 4),
    he.eventually_lt_const (by norm_num : (0 : ℝ) < 1),
    eventually_ge_atTop (1 : ℝ)] with A hratio hpoly hA
  have hpos : 0 < A := by linarith
  have hp : A ^ ((1 : ℝ) / 10) = A ^ (-(9 / 10 : ℝ)) * A := by
    calc
      _ = A ^ (-(9 / 10 : ℝ) + 1) := by congr 1; norm_num
      _ = _ := by rw [Real.rpow_add hpos, Real.rpow_one]
  have hlin : c * A ^ ((1 : ℝ) / 10) ≤ A / 4 := by
    rw [hp]
    have h := mul_le_mul_of_nonneg_right hratio.le hpos.le
    nlinarith
  have hex : Real.exp (-A / 4) ≤ Real.exp (-c * A ^ ((1 : ℝ) / 10)) :=
    Real.exp_le_exp.mpr (by linarith)
  calc
    _ = (A ^ 9 * Real.exp (-A / 4)) * Real.exp (-A / 4) := by
      rw [mul_assoc, ← Real.exp_add]
      congr 2
      ring
    _ ≤ Real.exp (-A / 4) := by nlinarith [Real.exp_pos (-A / 4)]
    _ ≤ _ := hex

/-- The actual ninth-power normalized covariance has a genuine stretched-exponential rate. -/
theorem actualNinthNormalizedCriticalCovariance_Pnt_isBigO :
    ∃ c > 0, actualNinthNormalizedCriticalCovariance =O[atTop]
      fun A : ℝ => Real.exp (-c * A ^ ((1 : ℝ) / 10)) := by
  obtain ⟨c, hc, hg⟩ := actualCenteredMangoldtLogError_isBigO
  obtain ⟨C, hC, hb⟩ := hg.exists_pos
  obtain ⟨T, hT⟩ := eventually_atTop.1 hb.bound
  refine ⟨c, hc, isBigO_iff.mpr ⟨27 / 4 * B + 101921587200 * C, ?_⟩⟩
  filter_upwards [eventually_ge_atTop (max 91 T), polynomial_exp_le_stretched c]
    with A hA hp
  have ha : 91 ≤ A := (le_max_left 91 T).trans hA
  have hgA : ∀ t ≥ A, |actualCenteredMangoldtLogError t| ≤
      C * Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by
    intro t ht
    simpa only [Real.norm_eq_abs, Real.abs_exp] using
      hT t ((le_max_right 91 T).trans (hA.trans ht))
  have h := actualNinthNormalizedCriticalCovariance_Pnt_budget ha hc hC.le hgA
  have hb0 : 0 ≤ 27 / 4 * B := by positivity
  rw [Real.norm_eq_abs, Real.norm_eq_abs, Real.abs_exp]
  calc
    _ ≤ _ := h
    _ ≤ (27 / 4 * B) * Real.exp (-c * A ^ ((1 : ℝ) / 10)) +
        101921587200 * C * Real.exp (-c * A ^ ((1 : ℝ) / 10)) := by
      simpa only [mul_assoc] using
        add_le_add (mul_le_mul_of_nonneg_left hp hb0)
          (le_refl (101921587200 * C * Real.exp (-c * A ^ ((1 : ℝ) / 10))))
    _ = _ := by ring

/-- Removing the actual normalization retains a growing unsigned exponential allowance. -/
theorem actualCriticalErrorCovariance_NinthPnt_isBigO :
    ∃ c > 0, actualCriticalErrorCovariance =O[atTop]
      fun A : ℝ => Real.exp (A - c * A ^ ((1 : ℝ) / 10)) / A ^ 9 := by
  obtain ⟨c, hc, hn⟩ := actualNinthNormalizedCriticalCovariance_Pnt_isBigO
  obtain ⟨C, hC⟩ := isBigO_iff.mp hn
  refine ⟨c, hc, isBigO_iff.mpr ⟨C, ?_⟩⟩
  filter_upwards [hC, eventually_ge_atTop (1 : ℝ)] with A hA hpos
  have hApos : 0 < A := by linarith
  have hpow : 0 < A ^ 9 := by positivity
  rw [Real.norm_eq_abs, Real.norm_eq_abs, abs_div,
    Real.abs_exp, abs_of_pos hpow]
  rw [Real.norm_eq_abs, Real.norm_eq_abs, Real.abs_exp] at hA
  unfold actualNinthNormalizedCriticalCovariance at hA
  rw [abs_mul, abs_of_nonneg (by positivity : 0 ≤ A ^ 9 * Real.exp (-A))] at hA
  have hh := mul_le_mul_of_nonneg_right hA (Real.exp_pos A).le
  have hex : Real.exp (-A) * Real.exp A = 1 := by
    rw [← Real.exp_add, neg_add_cancel, Real.exp_zero]
  have hl : (A ^ 9 * Real.exp (-A) * |actualCriticalErrorCovariance A|) *
      Real.exp A = A ^ 9 * |actualCriticalErrorCovariance A| := by
    calc
      _ = A ^ 9 * |actualCriticalErrorCovariance A| *
          (Real.exp (-A) * Real.exp A) := by ring
      _ = _ := by rw [hex, mul_one]
  have hr : (C * Real.exp (-c * A ^ ((1 : ℝ) / 10))) * Real.exp A =
      C * Real.exp (A - c * A ^ ((1 : ℝ) / 10)) := by
    rw [mul_assoc, ← Real.exp_add]
    congr 2
    ring
  rw [hl, hr] at hh
  rw [← mul_div_assoc]
  apply (le_div_iff₀ hpow).2
  simpa only [mul_comm] using hh

end
end FormalResearch.RiemannHypothesis.SourceActualCriticalCovarianceNinthPntRate
```
