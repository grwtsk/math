# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.13SourceGrowingXiHead.Variant463e4709effc8c463e861af0659476e6b9688bb3e910db8070a213a92af82643

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d032edc9299958115d487d85309528ba9e1b4c7a` · SHA-256 `b77029ba9ac965572529ab483fcdcef830af48aa6c5665dc2540e0c1825ede2c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualXiCurvature.Variantf04bd956dba5524b41f88bdee440dbb4c1c5199c905f3e4c84613b9999576f10","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f04bd956dba5524b41f88bdee440dbb4c1c5199c905f3e4c84613b9999576f10","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualXiCurvature.Variantf04bd956dba5524b41f88bdee440dbb4c1c5199c905f3e4c84613b9999576f10","mathematical_subject":"Analysis.Integration","original_sha256":"f04bd956dba5524b41f88bdee440dbb4c1c5199c905f3e4c84613b9999576f10","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-weighted-complement-rate/fresh-copy/source-pins/13-SourceGrowingXiHead.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualF7TailAdapter
import RootActualXiExponentialEnvelope
import Mathlib.Analysis.Complex.ExponentialBounds

/-!
The complete actual F7 head through the original arithmetic floor-square cutoff
has an unconditional vanishing cost. The primitive stays anchored at seven;
the complementary signed integral keeps the original source weight and traces.
Research direction and conceptual origin: grwtsk contributors.
Actual source calculation and formal construction: OpenAI Codex assistance.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualXiCurvature.Variantf04bd956dba5524b41f88bdee440dbb4c1c5199c905f3e4c84613b9999576f10

set_option autoImplicit false
noncomputable section
namespace RH16GrowingXiHead

open MeasureTheory Set
open RH16ActualF7 RH16CompleteXiTail RH16FiveCesaro
open FormalResearch.RiemannHypothesis
open SourcePairing SourceCorrelationCurvature SourceLeadingFullKappaReduction
open RootActualXiTailPrimitive RootActualXiExponentialEnvelope
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- Literal curvature return of the original correlation. -/
def actualXiCurvature (A t : ℝ) : ℝ :=
  deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
    deriv (sourceCorrelation explicitSecondDerivative A) t / 2

/-- Actual finite head, with the seven anchor preserved. -/
def growingXiHead (A : ℝ) : ℝ :=
  -(∫ t in Real.log 7..Real.log (⌊A ^ 2⌋₊ : ℝ), actualF7 t * actualXiCurvature A t)

/-- Complete complementary source; no reanchoring or boundary deletion. -/
def growingXiTail (A : ℝ) : ℝ :=
  -(∫ t in Real.log (⌊A ^ 2⌋₊ : ℝ)..2 * A, actualF7 t * actualXiCurvature A t)

/-- Uniform radius cost of the original moving head. -/
def growingXiHeadCost (Q : ℝ) : ℝ :=
  20 * actualXiExponentialEnvelopeConstant * Real.log Q / Q

private theorem coefficient_nonneg : 0 ≤ actualXiExponentialEnvelopeConstant := by
  unfold actualXiExponentialEnvelopeConstant
  positivity

private theorem f7_eq_old_primitive (t : ℝ) :
    actualF7 t = actualAnchoredXiTailPrimitive t := by
  rw [actualF7_eq_time_primitive]
  rfl

private theorem actual_first_small_time {A : ℝ} (hA : 91 ≤ A) (t : ℝ) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤ 5 / A ^ 2 * |t| := by
  have hp : 0 < A := by linarith
  have he := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Set.univ) (f := deriv (sourceCorrelation explicitSecondDerivative A))
    (fun x _ => (sourceCorrelation_deriv_contDiff hp).differentiable (by norm_num) x)
    (fun x _ => by simpa only [Real.norm_eq_abs] using
      actualCorrelation_second_abs_le_five hA x)
    convex_univ (mem_univ (0 : ℝ)) (mem_univ t)
  simpa only [Real.norm_eq_abs, (actualCorrelation_odd_jets_zero hp).1, sub_zero] using he

theorem actualXiCurvature_abs_le {A t : ℝ} (hA : 91 ≤ A) (ht : 0 ≤ t) :
    |actualXiCurvature A t| ≤ 5 / A ^ 2 * (1 + t / 2) := by
  have h0 := actualCorrelation_second_abs_le_five hA t
  have h1 := actual_first_small_time hA t
  rw [abs_of_nonneg ht] at h1
  unfold actualXiCurvature
  calc
    _ ≤ |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| +
        |deriv (sourceCorrelation explicitSecondDerivative A) t / 2| := abs_sub _ _
    _ ≤ 5 / A ^ 2 + (5 / A ^ 2 * t) / 2 := by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      exact add_le_add h0 (div_le_div_of_nonneg_right h1 (by norm_num))
    _ = _ := by ring

private theorem source_integrable {A H : ℝ} (hA : 91 ≤ A)
    (hH : Real.log 7 ≤ H) (hHA : H ≤ 2 * A) :
    IntervalIntegrable (fun t => actualF7 t * actualXiCurvature A t)
      volume (Real.log 7) H := by
  have hi := actualF7_curvature_intervalIntegrable A (by linarith : 40 ≤ A)
  exact hi.mono_set (by
    rw [uIcc_of_le hH, uIcc_of_le (show Real.log 7 ≤ 2 * A by linarith)]
    exact Icc_subset_Icc le_rfl hHA)

/-- The actual head at any supported real time endpoint has this explicit cost. -/
theorem actual_f7_head_abs_le {A H : ℝ} (hA : 91 ≤ A)
    (hH : Real.log 7 ≤ H) (hHA : H ≤ 2 * A) :
    |-(∫ t in Real.log 7..H, actualF7 t * actualXiCurvature A t)| ≤
      10 * actualXiExponentialEnvelopeConstant / A ^ 2 * H * Real.exp (H / 2) := by
  have _hi := source_integrable hA hH hHA
  let D := actualXiExponentialEnvelopeConstant
  let k := 10 * D / A ^ 2
  have hD : 0 ≤ D := coefficient_nonneg
  have hk : 0 ≤ k := by dsimp [k]; positivity
  have hb : IntervalIntegrable (fun t : ℝ =>
      k * (1 + t / 2) * Real.exp (t / 2)) volume (Real.log 7) H :=
    (by fun_prop : Continuous _).intervalIntegrable _ _
  have hp : ∀ t ∈ Ioc (Real.log 7) H,
      ‖actualF7 t * actualXiCurvature A t‖ ≤ k * (1 + t / 2) * Real.exp (t / 2) := by
    intro t ht
    have ht0 : 0 ≤ t := (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7)).trans ht.1.le
    have hF : |actualF7 t| ≤ 2 * D * Real.exp (t / 2) := by
      rw [f7_eq_old_primitive]
      exact (actualAnchoredXiTailPrimitive_abs_le ht.1.le).trans
        (by dsimp [D]; nlinarith [coefficient_nonneg, Real.sqrt_nonneg 7])
    have hK := actualXiCurvature_abs_le hA ht0
    rw [Real.norm_eq_abs, abs_mul]
    calc
      _ ≤ (2 * D * Real.exp (t / 2)) * (5 / A ^ 2 * (1 + t / 2)) :=
        mul_le_mul hF hK (abs_nonneg _) (by positivity)
      _ = _ := by dsimp [k]; ring
  have hn := intervalIntegral.norm_integral_le_of_norm_le hH (ae_of_all _ hp) hb
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => k * t * Real.exp (t / 2))
      (k * (1 + t / 2) * Real.exp (t / 2)) t := by
    convert (((hasDerivAt_id t).const_mul k).mul
      (((hasDerivAt_id t).div_const 2).exp)) using 1 <;> try rfl
    dsimp
    ring
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t) hb,
    Real.norm_eq_abs] at hn
  have hlow : 0 ≤ k * Real.log 7 * Real.exp (Real.log 7 / 2) := by
    exact mul_nonneg (mul_nonneg hk (Real.log_nonneg (by norm_num))) (Real.exp_pos _).le
  rw [abs_neg]
  exact hn.trans (by dsimp [k, D]; linarith)

private theorem floor_head_orders {A : ℝ} (hA : 91 ≤ A) :
    Real.log 7 ≤ Real.log (⌊A ^ 2⌋₊ : ℝ) ∧
    Real.log (⌊A ^ 2⌋₊ : ℝ) ≤ 2 * Real.log A ∧
    2 * Real.log A ≤ 2 * A := by
  have hp : 0 < A := by linarith
  have hU : 7 ≤ ⌊A ^ 2⌋₊ := Nat.le_floor (by nlinarith : (7 : ℝ) ≤ A ^ 2)
  have hUr : (7 : ℝ) ≤ (⌊A ^ 2⌋₊ : ℝ) := by exact_mod_cast hU
  have hlog := Real.log_le_log (by linarith : 0 < (⌊A ^ 2⌋₊ : ℝ))
    (Nat.floor_le (sq_nonneg A))
  rw [Real.log_pow] at hlog
  exact ⟨Real.log_le_log (by norm_num) hUr, by simpa using hlog,
    by linarith [Real.log_le_sub_one_of_pos hp]⟩

/-- No arithmetic cancellation premise is required through the literal floor-square cutoff. -/
theorem growingXiHead_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |growingXiHead A| ≤ growingXiHeadCost A := by
  obtain ⟨hL, hH, hHA⟩ := floor_head_orders hA
  have hh := actual_f7_head_abs_le hA hL (hH.trans hHA)
  have hp : 0 < A := by linarith
  have hlog : 0 ≤ Real.log (⌊A ^ 2⌋₊ : ℝ) :=
    (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7)).trans hL
  have hla : 0 ≤ Real.log A := Real.log_nonneg (by linarith)
  have hex : Real.exp (Real.log (⌊A ^ 2⌋₊ : ℝ) / 2) ≤ A := by
    simpa only [Real.exp_log hp] using Real.exp_le_exp.mpr
      (show Real.log (⌊A ^ 2⌋₊ : ℝ) / 2 ≤ Real.log A by linarith)
  have hprod := mul_le_mul hH hex (Real.exp_pos _).le (by positivity : 0 ≤ 2 * Real.log A)
  have he := mul_le_mul_of_nonneg_left hprod
    (div_nonneg (mul_nonneg (by norm_num : (0 : ℝ) ≤ 10) coefficient_nonneg) (sq_nonneg A))
  change |growingXiHead A| ≤ _ at hh
  exact hh.trans (by
    unfold growingXiHeadCost
    convert he using 1
    all_goals field_simp
    all_goals ring)

private theorem log_div_antitone {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    Real.log A / A ≤ Real.log Q / Q := by
  have hp : 0 < Q := by linarith
  have ha : 0 < A := by linarith
  have hlog : 1 ≤ Real.log Q := (Real.le_log_iff_exp_le hp).2
    (by linarith [Real.exp_one_lt_three])
  have hl := Real.log_le_sub_one_of_pos (div_pos ha hp)
  rw [Real.log_div ha.ne' hp.ne'] at hl
  apply (div_le_div_iff₀ ha hp).2
  have hmul := mul_le_mul_of_nonneg_left hl hp.le
  have hrem := mul_nonneg (show 0 ≤ A - Q by linarith) (show 0 ≤ Real.log Q - 1 by linarith)
  have hAQ : Q * (A / Q - 1) = A - Q := by field_simp
  rw [hAQ] at hmul
  nlinarith

theorem growingXiHeadCost_nonneg {Q : ℝ} (hQ : 91 ≤ Q) : 0 ≤ growingXiHeadCost Q := by
  unfold growingXiHeadCost
  have := coefficient_nonneg
  have : 0 ≤ Real.log Q := Real.log_nonneg (by linarith)
  positivity

theorem growingXiHead_abs_le_at_radius {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    |growingXiHead A| ≤ growingXiHeadCost Q := by
  have h := mul_le_mul_of_nonneg_left (log_div_antitone hQ hQA)
    (mul_nonneg (by norm_num : (0 : ℝ) ≤ 20) coefficient_nonneg)
  exact (growingXiHead_abs_le (by linarith : 91 ≤ A)).trans
    (by simpa only [growingXiHeadCost, mul_div_assoc] using h)

/-- Exact original tail recovery, retaining the original seven anchor in both integrals. -/
theorem completeXiTail_eq_growing_head_add_tail {A : ℝ} (hA : 91 ≤ A) :
    completeXiTail A = growingXiHead A + growingXiTail A := by
  obtain ⟨hL, hH, hHA⟩ := floor_head_orders hA
  have hi := actualF7_curvature_intervalIntegrable A (by linarith : 40 ≤ A)
  have hleft := source_integrable hA hL (hH.trans hHA)
  have hright : IntervalIntegrable (fun t => actualF7 t * actualXiCurvature A t)
      volume (Real.log (⌊A ^ 2⌋₊ : ℝ)) (2 * A) := hi.mono_set (by
    rw [uIcc_of_le (hH.trans hHA), uIcc_of_le (show Real.log 7 ≤ 2 * A by linarith)]
    exact Icc_subset_Icc hL le_rfl)
  have hs := intervalIntegral.integral_add_adjacent_intervals hleft hright
  rw [completeXiTail_eq_neg_F7_integral A (by linarith : 40 ≤ A)]
  change -(∫ t in Real.log 7..2 * A, actualF7 t * actualXiCurvature A t) = _
  unfold growingXiHead growingXiTail
  rw [← hs]
  ring

/-- A bound on the remaining literal signed tail returns with only this unconditional head cost. -/
theorem completeXiTail_lower_of_growing_tail {Q A K : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A)
    (hTail : -K ≤ growingXiTail A) :
    -(K + growingXiHeadCost Q) ≤ completeXiTail A := by
  have hhead := neg_le_of_abs_le (growingXiHead_abs_le_at_radius hQ hQA)
  rw [completeXiTail_eq_growing_head_add_tail (by linarith : 91 ≤ A)]
  linarith

end RH16GrowingXiHead
```
