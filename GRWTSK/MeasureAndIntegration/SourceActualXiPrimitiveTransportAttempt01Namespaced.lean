-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.ActualXiLogDensity.Variante3abbac3896404f9c85754f0c61daf9c0e43fd44646ffa0b1f1fd2714ef07314","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3abbac3896404f9c85754f0c61daf9c0e43fd44646ffa0b1f1fd2714ef07314","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualXiLogDensity.Variante3abbac3896404f9c85754f0c61daf9c0e43fd44646ffa0b1f1fd2714ef07314","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"e3abbac3896404f9c85754f0c61daf9c0e43fd44646ffa0b1f1fd2714ef07314","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/followthrough3/primitive-transport/SourceActualXiPrimitiveTransport.attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualShiftedXiDerivativeAdapter
import SourceFullXiSignedPrimitiveCost
import Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts

/-!
Actual closed-Chebyshev logarithmic density and its anchored absolutely
continuous primitive. No derivative of psi at prime-power jumps and no uniform
arithmetic bound are assumed. Direction: grwtsk contributors.
Formal source transport: OpenAI Codex.
-/


namespace GRWTSK.Analysis.MeasureTheory.ActualXiLogDensity.Variante3abbac3896404f9c85754f0c61daf9c0e43fd44646ffa0b1f1fd2714ef07314

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualXiPrimitiveTransport
open MeasureTheory Set
open RH16ActualPsiNegativeBlock RH16ShiftedXiAdapter
open SourceFullXiCellBudgetObstruction SourceFullXiSignedPrimitiveCost
open SourcePositiveSampling SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

def actualXiLogDensity (t : ℝ) : ℝ :=
  Real.exp (-t / 2) * shiftedActualChebyshev (Real.exp t)

def actualXiLogPrimitive (u : ℝ) : ℝ :=
  ∫ t in Real.log 2..u, actualXiLogDensity t

theorem actualXiLogDensity_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable actualXiLogDensity volume a b := by
  have hpsi : IntervalIntegrable (fun t => Chebyshev.psi (Real.exp t)) volume a b :=
    (Chebyshev.psi_mono.comp Real.strictMono_exp.monotone).intervalIntegrable
  have hxi := (hpsi.sub (Real.continuous_exp.intervalIntegrable a b)).add
    ((continuous_const : Continuous (fun _ : ℝ =>
      2 * (Real.eulerMascheroniConstant + 1 - Real.log 2))).intervalIntegrable a b)
  have he : Continuous (fun t : ℝ => Real.exp (-t / 2)) :=
    (continuous_id.neg.div_const 2).exp
  simpa only [actualXiLogDensity, shiftedActualChebyshev] using
    hxi.continuousOn_mul he.continuousOn

theorem actualXiLogPrimitive_at_anchor : actualXiLogPrimitive (Real.log 2) = 0 := by
  simp [actualXiLogPrimitive]

theorem actualXiLogPrimitive_absolutelyContinuous (b : ℝ) :
    AbsolutelyContinuousOnInterval actualXiLogPrimitive (Real.log 2) b := by
  exact (actualXiLogDensity_intervalIntegrable (Real.log 2) b).
    absolutelyContinuousOnInterval_intervalIntegral (by simp)

theorem actualXiLogPrimitive_ae_hasDerivAt (b : ℝ) :
    ∀ᵐ t : ℝ, t ∈ uIcc (Real.log 2) b →
      HasDerivAt actualXiLogPrimitive (actualXiLogDensity t) t := by
  filter_upwards [(actualXiLogDensity_intervalIntegrable (Real.log 2) b).
    ae_hasDerivAt_integral] with t ht
  intro hmem
  exact ht hmem (Real.log 2) (by simp)

theorem actual_logarithmic_substitution (A : ℝ) (hA : 1 ≤ A) :
    (∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) =
      ∫ t in Real.log 2..2 * A, actualXiLogDensity t * fullXiLogWeight A t := by
  have hs := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
    (f := Real.exp) (f' := Real.exp)
    (g := fun y => shiftedActualChebyshev y * deriv (plainProfile A 1) y)
    (a := Real.log 2) (b := 2 * A) Real.continuous_exp.continuousOn
    (fun t _ => Real.hasDerivAt_exp t) (fun t _ => (Real.exp_pos t).le)
  rw [Real.exp_log (by norm_num : (0 : ℝ) < 2)] at hs
  rw [← hs]
  apply intervalIntegral.integral_congr
  intro t _
  dsimp only [Function.comp_apply]
  rw [(plainProfile_hasDerivAt (by linarith : 0 < A) 1 (Real.exp_pos t)).deriv]
  simp only [Real.log_one, zero_add, Real.log_exp]
  unfold actualXiLogDensity fullXiLogWeight
  field_simp

end FormalResearch.RiemannHypothesis.SourceActualXiPrimitiveTransport
