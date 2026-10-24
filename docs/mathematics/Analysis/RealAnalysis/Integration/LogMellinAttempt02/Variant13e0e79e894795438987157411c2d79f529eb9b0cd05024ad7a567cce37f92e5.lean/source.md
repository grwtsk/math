# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.LogMellinAttempt02.Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e17cb85d10bd97047a0cb83e88c143d667875d0d` · SHA-256 `13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualLogCoordinate
import ActualMuntzMellinDomain

/-! Genuine source/operator critical Mellin dictionary in actual logarithmic L2 coordinates.
Research direction grwtsk contributors; focused scratch proof OpenAI Codex.
No Plancherel factor, target closure or density is assumed. -/
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
  apply hi.mono' ?_ (Eventually.of_forall (fun u => ?_))
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

end ContinuousResearch.LogMellin
```
