# Complete source: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.ActualLogCoordinateAttempt01.Variantfb24df8d0191babcee4ef42b6ba11b19fee574878986ce54568d588c5be067ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1879512af43509852dd56e1b5f56b4edfadf221` · SHA-256 `21fa42c2009c2ce7604b66478fc49bb7545c7fe8a2211334b30ae5f2a27cf1c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: DifferentialEquationsAndDynamicalSystems.DynamicalSystems
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.ActualLogOperator.Variant4aee87e18af58e553ce366b3c2f43f3d50ee1a978abf96762b3cb80eb2a394bd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4aee87e18af58e553ce366b3c2f43f3d50ee1a978abf96762b3cb80eb2a394bd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.DynamicalSystems.SourceCorpus.ActualLogOperator.Variant4aee87e18af58e553ce366b3c2f43f3d50ee1a978abf96762b3cb80eb2a394bd","mathematical_subject":"Analysis.DynamicalSystems","original_sha256":"4aee87e18af58e553ce366b3c2f43f3d50ee1a978abf96762b3cb80eb2a394bd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass24/log_coordinate/ActualLogCoordinate-attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LogCoordinate

/-! Actual independently compensated Müntz source in logarithmic coordinates.
Research direction grwtsk contributors; focused scratch proof OpenAI Codex.
Physical A, real a and positive integer n remain separate. -/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.ActualLogOperator.Variant4aee87e18af58e553ce366b3c2f43f3d50ee1a978abf96762b3cb80eb2a394bd

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualLogCoordinate
open MeasureTheory Set
open ContinuousResearch.PositiveDilation ContinuousResearch.LogCoordinate
open ContinuousResearch.ActualComplexDilation ContinuousResearch.ActualMuntzInventory

def actualLogOperator (A u : ℝ) : ℂ :=
  (Real.exp (u/2) : ℂ)*actualComplexOperator A (Real.exp u)
def actualLogL2 (A : ℝ) (hA : 1 ≤ A) : LogL2 := logMap (actualComplexL2 A hA)

theorem actualLogOperator_memLp {A : ℝ} (hA : 1 ≤ A) :
    MemLp (actualLogOperator A) 2 (volume : Measure ℝ) :=
  logFunc_memLp (actualComplexOperator_memLp hA)

theorem actualLogL2_ae (A : ℝ) (hA : 1 ≤ A) :
    actualLogL2 A hA =ᵐ[volume] actualLogOperator A := by
  filter_upwards [logMap_ae (actualComplexL2 A hA),
    exp_quasi.ae_eq_comp (actualComplexL2_ae A hA)] with u hu hp
  dsimp only [Function.comp_apply] at hp
  rw [hu,logFunc,hp]
  rfl

theorem actualLogL2_norm (A : ℝ) (hA : 1 ≤ A) :
    ‖actualLogL2 A hA‖ = ‖actualComplexL2 A hA‖ := logMap_norm _

theorem actualLogL2_norm_sq (A : ℝ) (hA : 1 ≤ A) :
    ‖actualLogL2 A hA‖^2 = ∫ x in Ioi 0, (actualMuntz A x)^2 := by
  rw [actualLogL2_norm,actualComplexL2_norm_sq]

theorem actual_dilation_log (A : ℝ) (hA : 1 ≤ A) (a : ℝ) (ha : 0 < a) :
    logMap (dilate a ha (actualComplexL2 A hA)) =
      translate (Real.log a) (actualLogL2 A hA) := logMap_dilate _ _ _

theorem actual_integer_log (A : ℝ) (hA : 1 ≤ A) (n : {n : ℕ // 0 < n}) :
    logMap (integerOrbit A hA n) =
      translate (Real.log (n.val:ℝ)) (actualLogL2 A hA) := logMap_dilate _ _ _

theorem actual_integer_log_ae (A : ℝ) (hA : 1 ≤ A) (n : {n : ℕ // 0 < n}) :
    logMap (integerOrbit A hA n) =ᵐ[volume]
      (fun u => actualLogOperator A (u+Real.log (n.val:ℝ))) := by
  rw [actual_integer_log]
  filter_upwards [translate_ae (Real.log (n.val:ℝ)) (actualLogL2 A hA),
    (measurePreserving_add_right volume (Real.log (n.val:ℝ))).quasiMeasurePreserving.ae_eq_comp
      (actualLogL2_ae A hA)] with u hu hv
  exact hu.trans hv

theorem actualLogOperator_zero_upper {A u : ℝ} (hA : 1 ≤ A) (hu : A ≤ u) :
    actualLogOperator A u = 0 := by
  rw [actualLogOperator,actualComplexOperator,
    actualMuntz_zero_outside hA (Or.inr (Real.exp_le_exp.mpr hu)),Complex.ofReal_zero,mul_zero]

end ContinuousResearch.ActualLogCoordinate

/- Complete public type, proof and trusted closure audits. -/

#check ContinuousResearch.ActualLogCoordinate.actualLogOperator
#print axioms ContinuousResearch.ActualLogCoordinate.actualLogOperator
#print ContinuousResearch.ActualLogCoordinate.actualLogOperator

#check ContinuousResearch.ActualLogCoordinate.actualLogL2
#print axioms ContinuousResearch.ActualLogCoordinate.actualLogL2
#print ContinuousResearch.ActualLogCoordinate.actualLogL2

#check ContinuousResearch.ActualLogCoordinate.actualLogOperator_memLp
#print axioms ContinuousResearch.ActualLogCoordinate.actualLogOperator_memLp
#print ContinuousResearch.ActualLogCoordinate.actualLogOperator_memLp

#check ContinuousResearch.ActualLogCoordinate.actualLogL2_ae
#print axioms ContinuousResearch.ActualLogCoordinate.actualLogL2_ae
#print ContinuousResearch.ActualLogCoordinate.actualLogL2_ae

#check ContinuousResearch.ActualLogCoordinate.actualLogL2_norm
#print axioms ContinuousResearch.ActualLogCoordinate.actualLogL2_norm
#print ContinuousResearch.ActualLogCoordinate.actualLogL2_norm

#check ContinuousResearch.ActualLogCoordinate.actualLogL2_norm_sq
#print axioms ContinuousResearch.ActualLogCoordinate.actualLogL2_norm_sq
#print ContinuousResearch.ActualLogCoordinate.actualLogL2_norm_sq

#check ContinuousResearch.ActualLogCoordinate.actual_dilation_log
#print axioms ContinuousResearch.ActualLogCoordinate.actual_dilation_log
#print ContinuousResearch.ActualLogCoordinate.actual_dilation_log

#check ContinuousResearch.ActualLogCoordinate.actual_integer_log
#print axioms ContinuousResearch.ActualLogCoordinate.actual_integer_log
#print ContinuousResearch.ActualLogCoordinate.actual_integer_log

#check ContinuousResearch.ActualLogCoordinate.actual_integer_log_ae
#print axioms ContinuousResearch.ActualLogCoordinate.actual_integer_log_ae
#print ContinuousResearch.ActualLogCoordinate.actual_integer_log_ae

#check ContinuousResearch.ActualLogCoordinate.actualLogOperator_zero_upper
#print axioms ContinuousResearch.ActualLogCoordinate.actualLogOperator_zero_upper
#print ContinuousResearch.ActualLogCoordinate.actualLogOperator_zero_upper
```
