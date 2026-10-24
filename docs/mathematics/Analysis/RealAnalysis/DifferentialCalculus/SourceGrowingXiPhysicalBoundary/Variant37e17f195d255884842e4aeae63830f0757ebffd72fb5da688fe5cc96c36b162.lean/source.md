# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceGrowingXiPhysicalBoundary.Variant37e17f195d255884842e4aeae63830f0757ebffd72fb5da688fe5cc96c36b162

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da8dd6a2d1438075595ac09041a3ad8c26b20325` · SHA-256 `c8c8172e67bc6a37446ab27f6df8504a9d8966d9e2c20b28ad3708a983819b4c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PhysicalGrowingXiHead.Varianta9bd6fe13c559c7cb338bac9f1e560245490a57f41cca634baaedf58a02e2e58","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a9bd6fe13c559c7cb338bac9f1e560245490a57f41cca634baaedf58a02e2e58","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.PhysicalGrowingXiHead.Varianta9bd6fe13c559c7cb338bac9f1e560245490a57f41cca634baaedf58a02e2e58","mathematical_subject":"Analysis.Calculus","original_sha256":"a9bd6fe13c559c7cb338bac9f1e560245490a57f41cca634baaedf58a02e2e58","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/reflection-analysis/independent-growing-physical-boundary/author-evidence/author-replay/SourceGrowingXiPhysicalBoundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceGrowingXiHead

/-! Exact return from the moving primitive split to the physical arithmetic source.
The nonzero interior trace is retained jointly, with the original seven anchor.
Direction and conceptual origin: grwtsk contributors.
Source adapter construction and formalization: OpenAI Codex assistance. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PhysicalGrowingXiHead.Varianta9bd6fe13c559c7cb338bac9f1e560245490a57f41cca634baaedf58a02e2e58

set_option autoImplicit false
noncomputable section
namespace RH16GrowingXiPhysicalBoundary
open MeasureTheory Set
open RH16ActualF7 RH16CompleteXiTail RH16GrowingXiHead
open FormalResearch.RiemannHypothesis SourcePairing SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

def physicalGrowingXiHead (A : ℝ) : ℝ :=
  ∫ y in 7..(⌊A ^ 2⌋₊ : ℝ), actualTransformedXiBlockDensity A y

def physicalGrowingXiTail (A : ℝ) : ℝ :=
  ∫ y in (⌊A ^ 2⌋₊ : ℝ)..Real.exp (2 * A), actualTransformedXiBlockDensity A y

def growingXiInteriorTrace (A : ℝ) : ℝ :=
  actualF7 (Real.log (⌊A ^ 2⌋₊ : ℝ)) *
    minusCorrelationWeight A (Real.log (⌊A ^ 2⌋₊ : ℝ))

/-- The exact finite-endpoint identity includes its surviving upper trace. -/
theorem physicalXiHead_eq_trace_sub_primitive {A H : ℝ} (hA : 0 < A)
    (hH : Real.log 7 ≤ H) :
    (∫ y in 7..Real.exp H, actualTransformedXiBlockDensity A y) =
      actualF7 H * minusCorrelationWeight A H -
        ∫ t in Real.log 7..H, actualF7 t * actualXiCurvature A t := by
  have hF := actualF7_absolutelyContinuous H hH
  have hparts := hF.integral_mul_deriv_eq_deriv_mul
    (minusCorrelationWeight_contDiff A hA).contDiffOn.absolutelyContinuousOnInterval
  rw [actualF7_at_log_seven] at hparts
  simp only [zero_mul, sub_zero] at hparts
  have he : (∫ t in Real.log 7..H, deriv actualF7 t * minusCorrelationWeight A t) =
      ∫ t in Real.log 7..H, timeXiDensity t * minusCorrelationWeight A t := by
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualF7_ae_hasDerivAt H hH] with t ht hm
    rw [(ht (uIoc_subset_uIcc hm)).deriv]
  rw [he] at hparts
  have hd : (∫ t in Real.log 7..H, actualF7 t * deriv (minusCorrelationWeight A) t) =
      ∫ t in Real.log 7..H, actualF7 t * actualXiCurvature A t := by
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    rw [(minusCorrelationWeight_hasDerivAt A t hA).deriv]
    rfl
  rw [hd] at hparts
  have hx := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
    (a := Real.log 7) (b := H) (f := Real.exp) (f' := Real.exp)
    (g := actualTransformedXiBlockDensity A) Real.continuous_exp.continuousOn
    (fun t _ => Real.hasDerivAt_exp t) (fun t _ => (Real.exp_pos t).le)
  simp only [Function.comp_apply, actual_transformed_density_exp_mul,
    Real.exp_log (by norm_num : (0 : ℝ) < 7)] at hx
  rw [← hx]
  linarith only [hparts]

private theorem floor_orders {A : ℝ} (hA : 91 ≤ A) :
    (7 : ℝ) ≤ (⌊A ^ 2⌋₊ : ℝ) ∧ (⌊A ^ 2⌋₊ : ℝ) ≤ Real.exp (2 * A) := by
  have hp : 0 < A := by linarith
  have hU : 7 ≤ ⌊A ^ 2⌋₊ := Nat.le_floor (by nlinarith : (7 : ℝ) ≤ A ^ 2)
  have hlog := Real.log_le_sub_one_of_pos hp
  have he : A ^ 2 ≤ Real.exp (2 * A) := by
    rw [← Real.exp_log (sq_pos_of_pos hp), Real.log_pow]
    exact Real.exp_le_exp.mpr (by linarith)
  exact ⟨by exact_mod_cast hU, (Nat.floor_le (sq_nonneg A)).trans he⟩

/-- The physical head and primitive head differ by this exact invariant trace. -/
theorem physicalGrowingXiHead_eq_head_add_trace {A : ℝ} (hA : 91 ≤ A) :
    physicalGrowingXiHead A = growingXiHead A + growingXiInteriorTrace A := by
  obtain ⟨hU, _⟩ := floor_orders hA
  have hp : 0 < (⌊A ^ 2⌋₊ : ℝ) := by linarith
  have hH := Real.log_le_log (by norm_num : (0 : ℝ) < 7) hU
  have he := physicalXiHead_eq_trace_sub_primitive (by linarith : 0 < A) hH
  rw [Real.exp_log hp] at he
  unfold physicalGrowingXiHead growingXiHead growingXiInteriorTrace
  linarith only [he]

/-- Exact physical additivity at the original floor-square cutoff. -/
theorem completeXiTail_eq_physical_head_add_tail {A : ℝ} (hA : 91 ≤ A) :
    completeXiTail A = physicalGrowingXiHead A + physicalGrowingXiTail A := by
  obtain ⟨hU, hUX⟩ := floor_orders hA
  have hi := completeXiTail_intervalIntegrable A (by linarith : 40 ≤ A)
  have hleft := hi.mono_set (by
    rw [uIcc_of_le hU, uIcc_of_le (hU.trans hUX)]
    exact Icc_subset_Icc le_rfl hUX)
  have hright := hi.mono_set (by
    rw [uIcc_of_le hUX, uIcc_of_le (hU.trans hUX)]
    exact Icc_subset_Icc hU le_rfl)
  exact (intervalIntegral.integral_add_adjacent_intervals hleft hright).symm

/-- The trace remains inside the signed remaining source, with its actual plus sign. -/
theorem growingXiTail_eq_physical_tail_add_trace {A : ℝ} (hA : 91 ≤ A) :
    growingXiTail A = physicalGrowingXiTail A + growingXiInteriorTrace A := by
  have hp := completeXiTail_eq_physical_head_add_tail hA
  have hg := completeXiTail_eq_growing_head_add_tail hA
  have hh := physicalGrowingXiHead_eq_head_add_trace hA
  linarith only [hp, hg, hh]

/-- Only the paired physical tail and trace supplies the remaining-tail consumer. -/
theorem completeXiTail_lower_of_paired_physical_tail {Q A K : ℝ}
    (hQ : 91 ≤ Q) (hQA : Q ≤ A)
    (hpair : -K ≤ physicalGrowingXiTail A + growingXiInteriorTrace A) :
    -(K + growingXiHeadCost Q) ≤ completeXiTail A := by
  apply completeXiTail_lower_of_growing_tail hQ hQA
  rwa [growingXiTail_eq_physical_tail_add_trace (by linarith : 91 ≤ A)]

end RH16GrowingXiPhysicalBoundary
```
