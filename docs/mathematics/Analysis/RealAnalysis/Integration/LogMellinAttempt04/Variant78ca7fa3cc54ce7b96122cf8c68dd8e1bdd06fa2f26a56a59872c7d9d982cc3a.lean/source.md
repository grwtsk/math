# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.LogMellinAttempt04.Variant78ca7fa3cc54ce7b96122cf8c68dd8e1bdd06fa2f26a56a59872c7d9d982cc3a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e429537d49c39cd62c3e6259d5112cbe6fbef12a` · SHA-256 `5e05e83f2b45757c6e79ecac339402fc7fb9feb51ae20f71d873decbd5d31493`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.AngularIntegral.Variantb344396a4c7c682f4407f37d38378886b7a7dcbee604316383b757a3e990477d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b344396a4c7c682f4407f37d38378886b7a7dcbee604316383b757a3e990477d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.AngularIntegral.Variantb344396a4c7c682f4407f37d38378886b7a7dcbee604316383b757a3e990477d","mathematical_subject":"Analysis.Integration","original_sha256":"b344396a4c7c682f4407f37d38378886b7a7dcbee604316383b757a3e990477d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass25/log_mellin/LogMellin-attempt04.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualLogCoordinate
import ActualMuntzMellinDomain

/-! Genuine source/operator critical Mellin dictionary in actual logarithmic L2 coordinates.
Research direction grwtsk contributors; focused scratch proof OpenAI Codex.
No Plancherel factor, target closure or density is assumed. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.AngularIntegral.Variantb344396a4c7c682f4407f37d38378886b7a7dcbee604316383b757a3e990477d

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.LogMellin
open MeasureTheory Set Filter
open ContinuousResearch.PositiveDilation ContinuousResearch.LogCoordinate
open ContinuousResearch.ActualLogCoordinate ContinuousResearch.ActualComplexDilation
open ContinuousResearch.LogarithmicSource ContinuousResearch.ActualGoodKernel
open ContinuousResearch.ActualMuntzMellinDomain
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- Positive angular sign, full-real du; this is a literal integral, not Plancherel. -/
def angularIntegral (h : ℝ → ℂ) (ξ : ℝ) : ℂ :=
  ∫ u : ℝ, Complex.exp (Complex.I*(ξ:ℂ)*(u:ℂ))*h u

theorem critical_jacobian (f : ℝ → ℂ) (ξ u : ℝ) :
    (Real.exp u : ℂ)*((Real.exp u : ℂ)^((1:ℂ)/2+Complex.I*(ξ:ℂ)-1)*f (Real.exp u)) =
      Complex.exp (Complex.I*(ξ:ℂ)*(u:ℂ))*logFunc f u := by
  rw [Complex.cpow_def_of_ne_zero (by exact_mod_cast (Real.exp_pos u).ne'),
    ←Complex.ofReal_log (Real.exp_pos u).le,Real.log_exp,logFunc,
    Complex.ofReal_exp,Complex.ofReal_exp]
  have he : (u:ℂ)+(u:ℂ)*((1:ℂ)/2+Complex.I*(ξ:ℂ)-1) =
      Complex.I*(ξ:ℂ)*(u:ℂ)+(u:ℂ)/2 := by ring
  rw [←mul_assoc,←Complex.exp_add,he,Complex.exp_add]
  push_cast
  ring

theorem mellin_critical_log (f : ℝ → ℂ) (ξ : ℝ) :
    mellin f ((1:ℂ)/2+Complex.I*(ξ:ℂ)) = angularIntegral (logFunc f) ξ := by
  have h := integral_image_eq_integral_abs_deriv_smul
    (s:=univ) MeasurableSet.univ
    (fun u _ => (Real.hasDerivAt_exp u).hasDerivWithinAt)
    Real.exp_injective.injOn
    (fun x : ℝ => (x:ℂ)^((1:ℂ)/2+Complex.I*(ξ:ℂ)-1)*f x)
  simpa only [mellin,angularIntegral,image_univ,Real.range_exp,
    abs_of_pos (Real.exp_pos _),Complex.real_smul,smul_eq_mul,
    critical_jacobian,Measure.restrict_univ] using h

theorem critical_integrable_iff (f : ℝ → ℂ) (ξ : ℝ) :
    MellinConvergent f ((1:ℂ)/2+Complex.I*(ξ:ℂ)) ↔
      Integrable (fun u : ℝ => Complex.exp (Complex.I*(ξ:ℂ)*(u:ℂ))*logFunc f u) := by
  have h := integrableOn_image_iff_integrableOn_abs_deriv_smul
    (s:=univ) MeasurableSet.univ
    (fun u _ => (Real.hasDerivAt_exp u).hasDerivWithinAt)
    Real.exp_injective.injOn
    (fun x : ℝ => (x:ℂ)^((1:ℂ)/2+Complex.I*(ξ:ℂ)-1)*f x)
  simpa only [MellinConvergent,smul_eq_mul,image_univ,Real.range_exp,
    abs_of_pos (Real.exp_pos _),Complex.real_smul,critical_jacobian,
    IntegrableOn,Measure.restrict_univ] using h

theorem phase_norm (ξ u : ℝ) : ‖Complex.exp (Complex.I*(ξ:ℂ)*(u:ℂ))‖ = 1 := by
  rw [Complex.norm_exp]
  simp

theorem logFunc_integrable_of_critical {f : ℝ → ℂ}
    (hm : AEStronglyMeasurable f positiveMeasure) {ξ : ℝ}
    (hf : MellinConvergent f ((1:ℂ)/2+Complex.I*(ξ:ℂ))) :
    Integrable (logFunc f) := by
  have hi := (critical_integrable_iff f ξ).mp hf
  apply hi.norm.mono' ?_ (Eventually.of_forall (fun u => ?_))
  · exact (Complex.measurable_ofReal.comp (Real.measurable_exp.comp
      (measurable_id.div_const 2))).aestronglyMeasurable.mul
      (hm.comp_quasiMeasurePreserving exp_quasi)
  · rw [norm_mul,phase_norm,one_mul]

/-- True actual F class; independent integral compensator/normalization retained. -/
theorem actualSource_memLp {A : ℝ} (hA : 1 ≤ A) :
    MemLp (complexSource A) 2 positiveMeasure := by
  have hm : AEStronglyMeasurable (complexSource A) positiveMeasure :=
    (complexSource_integrable (by linarith : 0 < A)).aestronglyMeasurable.restrict
  apply (memLp_two_iff_integrable_sq_norm hm).mpr
  change IntegrableOn (fun x => ‖complexSource A x‖^2) (Ioi 0)
  simpa only [complexSource,Complex.norm_real,Real.norm_eq_abs,sq_abs,positiveMeasure]
    using actualLogSource_square_integrable hA

def actualSourceL2 (A : ℝ) (hA : 1 ≤ A) : PositiveL2 :=
  (actualSource_memLp hA).toLp (complexSource A)

theorem actualSourceL2_ae (A : ℝ) (hA : 1 ≤ A) :
    actualSourceL2 A hA =ᵐ[positiveMeasure] complexSource A :=
  (actualSource_memLp hA).coeFn_toLp

theorem actual_source_log_pointwise (A u : ℝ) :
    logFunc (complexSource A) u = (normalizedTest Realization.explicitSecondDerivative A u : ℂ) := by
  rw [logFunc,complexSource,actualLogSource,positiveLogLift_exp,Complex.ofReal_mul]
  rw [←mul_assoc,←Complex.ofReal_mul,←Real.exp_add]
  have he : u/2 + -u/2 = 0 := by ring
  rw [he,Real.exp_zero,Complex.ofReal_one,one_mul]

theorem actual_source_log_ae (A : ℝ) (hA : 1 ≤ A) :
    logMap (actualSourceL2 A hA) =ᵐ[volume]
      (fun u => (normalizedTest Realization.explicitSecondDerivative A u : ℂ)) := by
  filter_upwards [logMap_ae (actualSourceL2 A hA),
    exp_quasi.ae_eq_comp (actualSourceL2_ae A hA)] with u hu hf
  dsimp only [Function.comp_apply] at hf
  rw [hu,logFunc,hf]
  exact actual_source_log_pointwise A u

theorem actual_source_angular_integrable {A : ℝ} (hA : 1 ≤ A) (ξ : ℝ) :
    Integrable (fun u : ℝ => Complex.exp (Complex.I*(ξ:ℂ)*(u:ℂ))*
      (normalizedTest Realization.explicitSecondDerivative A u : ℂ)) := by
  have h := (critical_integrable_iff (complexSource A) ξ).mp
    (actual_source_mellinConvergent (by linarith : 0 < A) _)
  simpa only [actual_source_log_pointwise] using h

theorem actual_muntz_angular_integrable {A : ℝ} (hA : 1 ≤ A) (ξ : ℝ) :
    Integrable (fun u : ℝ => Complex.exp (Complex.I*(ξ:ℂ)*(u:ℂ))*actualLogOperator A u) := by
  have h := (critical_integrable_iff (complexMuntz A) ξ).mp
    (actual_muntz_mellinConvergent hA (by norm_num :
      0 < (((1:ℂ)/2+Complex.I*(ξ:ℂ))).re))
  exact h

theorem actual_muntz_log_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (actualLogOperator A) :=
  logFunc_integrable_of_critical
    (complexMuntz_measurable hA).aestronglyMeasurable.restrict
    (actual_muntz_mellinConvergent hA (by norm_num :
      0 < (((1:ℂ)/2+Complex.I*(0:ℂ))).re))

theorem actual_source_mellin_log (A ξ : ℝ) :
    mellin (complexSource A) ((1:ℂ)/2+Complex.I*(ξ:ℂ)) =
      angularIntegral (fun u => (normalizedTest Realization.explicitSecondDerivative A u : ℂ)) ξ := by
  rw [mellin_critical_log,angularIntegral,angularIntegral]
  congr 1
  funext u
  rw [actual_source_log_pointwise]

theorem actual_muntz_mellin_log (A ξ : ℝ) :
    mellin (complexMuntz A) ((1:ℂ)/2+Complex.I*(ξ:ℂ)) =
      angularIntegral (actualLogOperator A) ξ := mellin_critical_log _ _

theorem actual_muntz_mellin_log_class (A : ℝ) (hA : 1 ≤ A) (ξ : ℝ) :
    mellin (complexMuntz A) ((1:ℂ)/2+Complex.I*(ξ:ℂ)) =
      angularIntegral (actualLogL2 A hA) ξ := by
  rw [actual_muntz_mellin_log]
  apply integral_congr_ae
  filter_upwards [actualLogL2_ae A hA] with u hu
  rw [hu]

theorem actualQ_memLp {A : ℝ} (hA : 1 ≤ A) :
    MemLp (fun u => (normalizedTest Realization.explicitSecondDerivative A u : ℂ))
      2 (volume : Measure ℝ) :=
  (logFunc_memLp (actualSource_memLp hA)).congr
    (Eventually.of_forall (actual_source_log_pointwise A))

def actualQClass (A : ℝ) (hA : 1 ≤ A) : LogL2 :=
  (actualQ_memLp hA).toLp (fun u => (normalizedTest Realization.explicitSecondDerivative A u : ℂ))

theorem actualQClass_ae (A : ℝ) (hA : 1 ≤ A) :
    actualQClass A hA =ᵐ[volume]
      (fun u => (normalizedTest Realization.explicitSecondDerivative A u : ℂ)) :=
  (actualQ_memLp hA).coeFn_toLp

/-- Equality of genuine actual AE classes, not merely a pointwise coordinate slogan. -/
theorem actual_source_log_eq (A : ℝ) (hA : 1 ≤ A) :
    logMap (actualSourceL2 A hA) = actualQClass A hA :=
  Lp.ext ((actual_source_log_ae A hA).trans (actualQClass_ae A hA).symm)

theorem actual_muntz_log_class_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (actualLogL2 A hA) :=
  (actual_muntz_log_integrable hA).congr (actualLogL2_ae A hA).symm

theorem actual_muntz_log_class_angular_integrable {A : ℝ} (hA : 1 ≤ A) (ξ : ℝ) :
    Integrable (fun u : ℝ => Complex.exp (Complex.I*(ξ:ℂ)*(u:ℂ))*actualLogL2 A hA u) := by
  apply (actual_muntz_angular_integrable hA ξ).congr
  filter_upwards [actualLogL2_ae A hA] with u hu
  rw [hu]

theorem actual_source_mellin_log_class (A : ℝ) (hA : 1 ≤ A) (ξ : ℝ) :
    mellin (complexSource A) ((1:ℂ)/2+Complex.I*(ξ:ℂ)) =
      angularIntegral (logMap (actualSourceL2 A hA)) ξ := by
  rw [actual_source_mellin_log]
  apply integral_congr_ae
  filter_upwards [actual_source_log_ae A hA] with u hu
  rw [hu]

end ContinuousResearch.LogMellin

/- Complete public type, proof and trusted-dependency audits. -/

#check ContinuousResearch.LogMellin.angularIntegral
#print axioms ContinuousResearch.LogMellin.angularIntegral
#print ContinuousResearch.LogMellin.angularIntegral

#check ContinuousResearch.LogMellin.critical_jacobian
#print axioms ContinuousResearch.LogMellin.critical_jacobian
#print ContinuousResearch.LogMellin.critical_jacobian

#check ContinuousResearch.LogMellin.mellin_critical_log
#print axioms ContinuousResearch.LogMellin.mellin_critical_log
#print ContinuousResearch.LogMellin.mellin_critical_log

#check ContinuousResearch.LogMellin.critical_integrable_iff
#print axioms ContinuousResearch.LogMellin.critical_integrable_iff
#print ContinuousResearch.LogMellin.critical_integrable_iff

#check ContinuousResearch.LogMellin.phase_norm
#print axioms ContinuousResearch.LogMellin.phase_norm
#print ContinuousResearch.LogMellin.phase_norm

#check ContinuousResearch.LogMellin.logFunc_integrable_of_critical
#print axioms ContinuousResearch.LogMellin.logFunc_integrable_of_critical
#print ContinuousResearch.LogMellin.logFunc_integrable_of_critical

#check ContinuousResearch.LogMellin.actualSource_memLp
#print axioms ContinuousResearch.LogMellin.actualSource_memLp
#print ContinuousResearch.LogMellin.actualSource_memLp

#check ContinuousResearch.LogMellin.actualSourceL2
#print axioms ContinuousResearch.LogMellin.actualSourceL2
#print ContinuousResearch.LogMellin.actualSourceL2

#check ContinuousResearch.LogMellin.actualSourceL2_ae
#print axioms ContinuousResearch.LogMellin.actualSourceL2_ae
#print ContinuousResearch.LogMellin.actualSourceL2_ae

#check ContinuousResearch.LogMellin.actual_source_log_pointwise
#print axioms ContinuousResearch.LogMellin.actual_source_log_pointwise
#print ContinuousResearch.LogMellin.actual_source_log_pointwise

#check ContinuousResearch.LogMellin.actual_source_log_ae
#print axioms ContinuousResearch.LogMellin.actual_source_log_ae
#print ContinuousResearch.LogMellin.actual_source_log_ae

#check ContinuousResearch.LogMellin.actual_source_angular_integrable
#print axioms ContinuousResearch.LogMellin.actual_source_angular_integrable
#print ContinuousResearch.LogMellin.actual_source_angular_integrable

#check ContinuousResearch.LogMellin.actual_muntz_angular_integrable
#print axioms ContinuousResearch.LogMellin.actual_muntz_angular_integrable
#print ContinuousResearch.LogMellin.actual_muntz_angular_integrable

#check ContinuousResearch.LogMellin.actual_muntz_log_integrable
#print axioms ContinuousResearch.LogMellin.actual_muntz_log_integrable
#print ContinuousResearch.LogMellin.actual_muntz_log_integrable

#check ContinuousResearch.LogMellin.actual_source_mellin_log
#print axioms ContinuousResearch.LogMellin.actual_source_mellin_log
#print ContinuousResearch.LogMellin.actual_source_mellin_log

#check ContinuousResearch.LogMellin.actual_muntz_mellin_log
#print axioms ContinuousResearch.LogMellin.actual_muntz_mellin_log
#print ContinuousResearch.LogMellin.actual_muntz_mellin_log

#check ContinuousResearch.LogMellin.actual_muntz_mellin_log_class
#print axioms ContinuousResearch.LogMellin.actual_muntz_mellin_log_class
#print ContinuousResearch.LogMellin.actual_muntz_mellin_log_class

#check ContinuousResearch.LogMellin.actualQ_memLp
#print axioms ContinuousResearch.LogMellin.actualQ_memLp
#print ContinuousResearch.LogMellin.actualQ_memLp

#check ContinuousResearch.LogMellin.actualQClass
#print axioms ContinuousResearch.LogMellin.actualQClass
#print ContinuousResearch.LogMellin.actualQClass

#check ContinuousResearch.LogMellin.actualQClass_ae
#print axioms ContinuousResearch.LogMellin.actualQClass_ae
#print ContinuousResearch.LogMellin.actualQClass_ae

#check ContinuousResearch.LogMellin.actual_source_log_eq
#print axioms ContinuousResearch.LogMellin.actual_source_log_eq
#print ContinuousResearch.LogMellin.actual_source_log_eq

#check ContinuousResearch.LogMellin.actual_muntz_log_class_integrable
#print axioms ContinuousResearch.LogMellin.actual_muntz_log_class_integrable
#print ContinuousResearch.LogMellin.actual_muntz_log_class_integrable

#check ContinuousResearch.LogMellin.actual_muntz_log_class_angular_integrable
#print axioms ContinuousResearch.LogMellin.actual_muntz_log_class_angular_integrable
#print ContinuousResearch.LogMellin.actual_muntz_log_class_angular_integrable

#check ContinuousResearch.LogMellin.actual_source_mellin_log_class
#print axioms ContinuousResearch.LogMellin.actual_source_mellin_log_class
#print ContinuousResearch.LogMellin.actual_source_mellin_log_class
```
