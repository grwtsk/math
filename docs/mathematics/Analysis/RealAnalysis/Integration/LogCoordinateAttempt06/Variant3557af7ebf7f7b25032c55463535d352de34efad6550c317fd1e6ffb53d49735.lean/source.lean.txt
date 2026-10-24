-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.LogL2.Varianta2369d3f328ca723b2fa20c2621b9c057885e9cb192fe2ac9e7f02889e9117e2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a2369d3f328ca723b2fa20c2621b9c057885e9cb192fe2ac9e7f02889e9117e2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.LogL2.Varianta2369d3f328ca723b2fa20c2621b9c057885e9cb192fe2ac9e7f02889e9117e2","mathematical_subject":"Analysis.Integration","original_sha256":"a2369d3f328ca723b2fa20c2621b9c057885e9cb192fe2ac9e7f02889e9117e2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass24/log_coordinate/LogCoordinate-attempt06.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualComplexDilation
import Mathlib.MeasureTheory.Function.JacobianOneDim
import Mathlib.MeasureTheory.Measure.WithDensity

/-! Genuine logarithmic coordinate map: positive Lebesgue dx to full Lebesgue du.
Research direction grwtsk contributors; focused scratch proof OpenAI Codex.
No density, target closure, Fourier Plancherel or RH property is assumed. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.LogL2.Varianta2369d3f328ca723b2fa20c2621b9c057885e9cb192fe2ac9e7f02889e9117e2

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.LogCoordinate
open MeasureTheory Set Filter
open scoped ENNReal InnerProductSpace
open ContinuousResearch.PositiveDilation

abbrev LogL2 := Lp ℂ 2 (volume : Measure ℝ)

theorem integral_exp_jacobian (g : ℝ → ℝ) :
    (∫ x, g x ∂positiveMeasure) = ∫ u, Real.exp u * g (Real.exp u) := by
  have h := integral_image_eq_integral_abs_deriv_smul
    (s:=univ) MeasurableSet.univ
    (fun u _ => (Real.hasDerivAt_exp u).hasDerivWithinAt)
    Real.exp_injective.injOn g
  simpa only [image_univ,Real.range_exp,abs_of_pos (Real.exp_pos _),
    smul_eq_mul,Measure.restrict_univ,positiveMeasure] using h

theorem integrable_exp_jacobian (g : ℝ → ℝ) :
    Integrable g positiveMeasure ↔ Integrable (fun u => Real.exp u * g (Real.exp u)) := by
  have h := integrableOn_image_iff_integrableOn_abs_deriv_smul
    (s:=univ) MeasurableSet.univ
    (fun u _ => (Real.hasDerivAt_exp u).hasDerivWithinAt)
    Real.exp_injective.injOn g
  simpa only [image_univ,Real.range_exp,abs_of_pos (Real.exp_pos _),
    smul_eq_mul,IntegrableOn,Measure.restrict_univ,positiveMeasure] using h

theorem exp_quasi : Measure.QuasiMeasurePreserving Real.exp volume positiveMeasure := by
  refine ⟨Real.measurable_exp,Measure.AbsolutelyContinuous.mk (fun s hs hzero => ?_)⟩
  rw [Measure.map_apply Real.measurable_exp hs]
  have hpre : MeasurableSet (Real.exp ⁻¹' s) := hs.preimage Real.measurable_exp
  have hw : ∫⁻ u in Real.exp ⁻¹' s, ENNReal.ofReal (Real.exp u) = 0 := by
    have h := lintegral_image_eq_lintegral_abs_deriv_mul hpre
      (fun u _ => (Real.hasDerivAt_exp u).hasDerivWithinAt)
      Real.exp_injective.injOn (fun _ => (1 : ℝ≥0∞))
    have him : Real.exp '' (Real.exp ⁻¹' s) = s ∩ Ioi 0 := by
      rw [image_preimage_eq_inter_range,Real.range_exp]
    rw [him] at h
    have he : (∫⁻ u in Real.exp ⁻¹' s, ENNReal.ofReal (Real.exp u)) = positiveMeasure s := by
      simpa only [lintegral_one,abs_of_pos (Real.exp_pos _),mul_one,
        Measure.restrict_apply_univ,←Measure.restrict_apply hs,positiveMeasure] using h.symm
    exact he.trans hzero
  have hac : (volume : Measure ℝ) ≪ volume.withDensity (fun u => ENNReal.ofReal (Real.exp u)) :=
    withDensity_absolutelyContinuous' Real.measurable_exp.ennreal_ofReal.aemeasurable
      (Eventually.of_forall (fun u => ENNReal.ofReal_ne_zero_iff.mpr (Real.exp_pos u)))
  apply hac
  rw [withDensity_apply _ hpre]
  exact hw

theorem log_quasi : Measure.QuasiMeasurePreserving Real.log positiveMeasure volume := by
  refine ⟨Real.measurable_log,Measure.AbsolutelyContinuous.mk (fun s hs hzero => ?_)⟩
  rw [Measure.map_apply Real.measurable_log hs]
  change volume.restrict (Ioi 0) (Real.log ⁻¹' s) = 0
  rw [Measure.restrict_apply (hs.preimage Real.measurable_log)]
  have him : Real.log ⁻¹' s ∩ Ioi 0 = Real.exp '' s := by
    ext x
    constructor
    · rintro ⟨hx,hpos⟩
      exact ⟨Real.log x,hx,Real.exp_log hpos⟩
    · rintro ⟨u,hu,rfl⟩
      exact ⟨by simpa only [mem_preimage,Real.log_exp] using hu,Real.exp_pos u⟩
  rw [him]
  have h := lintegral_image_eq_lintegral_abs_deriv_mul hs
    (fun u _ => (Real.hasDerivAt_exp u).hasDerivWithinAt)
    Real.exp_injective.injOn (fun _ => (1 : ℝ≥0∞))
  have hr : (volume : Measure ℝ).restrict s = 0 := Measure.restrict_eq_zero.mpr hzero
  simpa only [lintegral_one,abs_of_pos (Real.exp_pos _),mul_one,hr,lintegral_zero_measure,Measure.restrict_apply_univ] using h

def logFunc (f : ℝ → ℂ) (u : ℝ) : ℂ := (Real.exp (u/2) : ℂ) * f (Real.exp u)
def positiveFunc (h : ℝ → ℂ) (x : ℝ) : ℂ :=
  (Real.exp (-(Real.log x)/2) : ℂ) * h (Real.log x)

theorem logFunc_norm_sq (f : ℝ → ℂ) (u : ℝ) :
    ‖logFunc f u‖^2 = Real.exp u * ‖f (Real.exp u)‖^2 := by
  rw [logFunc,norm_mul,Complex.norm_real,Real.norm_eq_abs,abs_of_pos (Real.exp_pos _),mul_pow]
  congr 1
  rw [pow_two,←Real.exp_add]
  congr 1
  ring

theorem logFunc_memLp {f : ℝ → ℂ} (hf : MemLp f 2 positiveMeasure) :
    MemLp (logFunc f) 2 (volume : Measure ℝ) := by
  have hm : AEStronglyMeasurable (logFunc f) volume :=
    (Complex.measurable_ofReal.comp (Real.measurable_exp.comp (measurable_id.div_const 2))).aestronglyMeasurable.mul
      (hf.aestronglyMeasurable.comp_quasiMeasurePreserving exp_quasi)
  apply (memLp_two_iff_integrable_sq_norm hm).mpr
  simpa only [logFunc_norm_sq] using
    (integrable_exp_jacobian (fun x => ‖f x‖^2)).mp
      ((memLp_two_iff_integrable_sq_norm hf.aestronglyMeasurable).mp hf)

theorem positiveFunc_norm_sq_exp (h : ℝ → ℂ) (u : ℝ) :
    Real.exp u * ‖positiveFunc h (Real.exp u)‖^2 = ‖h u‖^2 := by
  rw [positiveFunc,Real.log_exp,norm_mul,Complex.norm_real,Real.norm_eq_abs,
    abs_of_pos (Real.exp_pos _),mul_pow]
  have he : Real.exp u * (Real.exp (-u/2))^2 = 1 := by
    rw [pow_two,←Real.exp_add,←Real.exp_add]
    convert Real.exp_zero using 1
    ring
  nlinarith

theorem positiveFunc_memLp {h : ℝ → ℂ} (hh : MemLp h 2 (volume : Measure ℝ)) :
    MemLp (positiveFunc h) 2 positiveMeasure := by
  have hm : AEStronglyMeasurable (positiveFunc h) positiveMeasure :=
    (Complex.measurable_ofReal.comp (Real.measurable_exp.comp
      (Real.measurable_log.neg.div_const 2))).aestronglyMeasurable.mul
      (hh.aestronglyMeasurable.comp_quasiMeasurePreserving log_quasi)
  apply (memLp_two_iff_integrable_sq_norm hm).mpr
  apply (integrable_exp_jacobian (fun x => ‖positiveFunc h x‖^2)).mpr
  simpa only [positiveFunc_norm_sq_exp] using
    ((memLp_two_iff_integrable_sq_norm hh.aestronglyMeasurable).mp hh)

def logMap (f : PositiveL2) : LogL2 :=
  (logFunc_memLp (Lp.memLp f)).toLp (logFunc f)
def positiveMap (h : LogL2) : PositiveL2 :=
  (positiveFunc_memLp (Lp.memLp h)).toLp (positiveFunc h)

theorem logMap_ae (f : PositiveL2) : logMap f =ᵐ[volume] logFunc f :=
  (logFunc_memLp (Lp.memLp f)).coeFn_toLp
theorem positiveMap_ae (h : LogL2) : positiveMap h =ᵐ[positiveMeasure] positiveFunc h :=
  (positiveFunc_memLp (Lp.memLp h)).coeFn_toLp

theorem logMap_leftInverse (f : PositiveL2) : positiveMap (logMap f) = f := by
  apply Lp.ext
  filter_upwards [positiveMap_ae (logMap f),log_quasi.ae_eq_comp (logMap_ae f),
    ae_restrict_mem measurableSet_Ioi] with x hx hy hpos
  dsimp only [Function.comp_apply] at hy
  rw [hx,positiveFunc,hy,logFunc,Real.exp_log hpos]
  rw [←mul_assoc,←Complex.ofReal_mul,←Real.exp_add]
  have he : -(Real.log x)/2+Real.log x/2 = 0 := by ring
  rw [he,Real.exp_zero,Complex.ofReal_one,one_mul]

theorem logMap_rightInverse (h : LogL2) : logMap (positiveMap h) = h := by
  apply Lp.ext
  filter_upwards [logMap_ae (positiveMap h),exp_quasi.ae_eq_comp (positiveMap_ae h)]
    with u hx hy
  dsimp only [Function.comp_apply] at hy
  rw [hx,logFunc,hy,positiveFunc,Real.log_exp]
  rw [←mul_assoc,←Complex.ofReal_mul,←Real.exp_add]
  have he : u/2 + -u/2 = 0 := by ring
  rw [he,Real.exp_zero,Complex.ofReal_one,one_mul]

theorem logL2_norm_sq_integral (h : LogL2) : ‖h‖^2 = ∫ u, ‖h u‖^2 := by
  have he : ((∫ u, ‖h u‖^2 : ℝ) : ℂ) = ((‖h‖^2 : ℝ) : ℂ) := by
    calc
      _ = ∫ u, ((‖h u‖^2 : ℝ) : ℂ) := integral_complex_ofReal.symm
      _ = ⟪h,h⟫_ℂ := by
        rw [L2.inner_def]
        congr 1
        funext u
        convert! (@inner_self_eq_norm_sq_to_K ℂ ℂ _ Complex.instNormedAddCommGroup.toSeminormedAddCommGroup (@RCLike.innerProductSpace ℂ Complex.instRCLike) (h u)).symm using 1
        norm_cast
      _ = _ := by
        convert! (inner_self_eq_norm_sq_to_K (𝕜:=ℂ) h) using 1
        norm_cast
  exact (Complex.ofReal_injective he).symm

theorem logMap_norm (f : PositiveL2) : ‖logMap f‖ = ‖f‖ := by
  have he : ‖logMap f‖^2 = ‖f‖^2 := by
    rw [logL2_norm_sq_integral]
    have hae : (fun u => ‖logMap f u‖^2) =ᵐ[volume]
        (fun u => Real.exp u * ‖f (Real.exp u)‖^2) := by
      filter_upwards [logMap_ae f] with u hu
      rw [hu,logFunc_norm_sq]
    rw [integral_congr_ae hae,←integral_exp_jacobian (fun x => ‖f x‖^2)]
    exact (norm_sq_integral f).symm
  nlinarith [norm_nonneg (logMap f),norm_nonneg f]

theorem logMap_add (f g : PositiveL2) : logMap (f+g) = logMap f + logMap g := by
  apply Lp.ext
  filter_upwards [logMap_ae (f+g),logMap_ae f,logMap_ae g,
    Lp.coeFn_add (logMap f) (logMap g),exp_quasi.ae_eq_comp (Lp.coeFn_add f g)]
    with u hfg hf hg hadd hp
  dsimp only [Pi.add_apply,Function.comp_apply] at hadd hp
  rw [hfg,hadd,hf,hg,logFunc,logFunc,logFunc,hp]
  exact mul_add _ _ _

theorem logMap_smul (c : ℂ) (f : PositiveL2) : logMap (c • f) = c • logMap f := by
  apply Lp.ext
  filter_upwards [logMap_ae (c • f),logMap_ae f,Lp.coeFn_smul c (logMap f),
    exp_quasi.ae_eq_comp (Lp.coeFn_smul c f)] with u hcf hf hsmul hp
  dsimp only [Pi.smul_apply,Function.comp_apply] at hsmul hp
  rw [hcf,hsmul,hf,logFunc,logFunc,hp]
  simp only [smul_eq_mul]
  ring

def logIsometry : PositiveL2 →ₗᵢ[ℂ] LogL2 where
  toFun := logMap
  map_add' := logMap_add
  map_smul' := logMap_smul
  norm_map' := logMap_norm

def logEquiv : PositiveL2 ≃ₗᵢ[ℂ] LogL2 :=
  {logIsometry with
    invFun := positiveMap
    left_inv := logMap_leftInverse
    right_inv := logMap_rightInverse}

theorem positiveMap_norm (h : LogL2) : ‖positiveMap h‖ = ‖h‖ := by
  rw [←logMap_norm (positiveMap h),logMap_rightInverse]

/-- Full-du pullback translation by +b; the standard measure-preserving API is reused. -/
def translate (b : ℝ) (h : LogL2) : LogL2 :=
  Lp.compMeasurePreserving (fun u => u+b) (measurePreserving_add_right volume b) h

theorem translate_ae (b : ℝ) (h : LogL2) :
    translate b h =ᵐ[volume] (fun u => h (u+b)) :=
  Lp.coeFn_compMeasurePreserving h (measurePreserving_add_right volume b)

theorem logMap_dilate (a : ℝ) (ha : 0 < a) (f : PositiveL2) :
    logMap (dilate a ha f) = translate (Real.log a) (logMap f) := by
  apply Lp.ext
  filter_upwards [logMap_ae (dilate a ha f),exp_quasi.ae_eq_comp (dilate_ae a ha f),
    translate_ae (Real.log a) (logMap f),
    (measurePreserving_add_right volume (Real.log a)).quasiMeasurePreserving.ae_eq_comp
      (logMap_ae f)] with u hleft hd hright hu
  dsimp only [Function.comp_apply] at hd hu
  rw [hleft,logFunc,hd,dilateFunc,hright,hu,logFunc]
  have he : Real.exp (u+Real.log a) = a*Real.exp u := by
    rw [Real.exp_add,Real.exp_log ha,mul_comm]
  have hs : Real.exp (Real.log a/2) = Real.sqrt a := by
    have hp : 0 < Real.exp (Real.log a/2) := Real.exp_pos _
    have hh : (Real.exp (Real.log a/2))^2 = a := by
      rw [pow_two,←Real.exp_add]
      convert Real.exp_log ha using 1
      ring
    nlinarith [Real.sq_sqrt ha.le,Real.sqrt_nonneg a]
  rw [he,←mul_assoc]
  congr 1
  rw [←Complex.ofReal_mul,←hs,←Real.exp_add]
  congr 2
  ring

end ContinuousResearch.LogCoordinate

/- Complete public types, proofs and trusted dependency audits. -/

#check ContinuousResearch.LogCoordinate.LogL2
#print axioms ContinuousResearch.LogCoordinate.LogL2
#print ContinuousResearch.LogCoordinate.LogL2

#check ContinuousResearch.LogCoordinate.integral_exp_jacobian
#print axioms ContinuousResearch.LogCoordinate.integral_exp_jacobian
#print ContinuousResearch.LogCoordinate.integral_exp_jacobian

#check ContinuousResearch.LogCoordinate.integrable_exp_jacobian
#print axioms ContinuousResearch.LogCoordinate.integrable_exp_jacobian
#print ContinuousResearch.LogCoordinate.integrable_exp_jacobian

#check ContinuousResearch.LogCoordinate.exp_quasi
#print axioms ContinuousResearch.LogCoordinate.exp_quasi
#print ContinuousResearch.LogCoordinate.exp_quasi

#check ContinuousResearch.LogCoordinate.log_quasi
#print axioms ContinuousResearch.LogCoordinate.log_quasi
#print ContinuousResearch.LogCoordinate.log_quasi

#check ContinuousResearch.LogCoordinate.logFunc
#print axioms ContinuousResearch.LogCoordinate.logFunc
#print ContinuousResearch.LogCoordinate.logFunc

#check ContinuousResearch.LogCoordinate.positiveFunc
#print axioms ContinuousResearch.LogCoordinate.positiveFunc
#print ContinuousResearch.LogCoordinate.positiveFunc

#check ContinuousResearch.LogCoordinate.logFunc_norm_sq
#print axioms ContinuousResearch.LogCoordinate.logFunc_norm_sq
#print ContinuousResearch.LogCoordinate.logFunc_norm_sq

#check ContinuousResearch.LogCoordinate.logFunc_memLp
#print axioms ContinuousResearch.LogCoordinate.logFunc_memLp
#print ContinuousResearch.LogCoordinate.logFunc_memLp

#check ContinuousResearch.LogCoordinate.positiveFunc_norm_sq_exp
#print axioms ContinuousResearch.LogCoordinate.positiveFunc_norm_sq_exp
#print ContinuousResearch.LogCoordinate.positiveFunc_norm_sq_exp

#check ContinuousResearch.LogCoordinate.positiveFunc_memLp
#print axioms ContinuousResearch.LogCoordinate.positiveFunc_memLp
#print ContinuousResearch.LogCoordinate.positiveFunc_memLp

#check ContinuousResearch.LogCoordinate.logMap
#print axioms ContinuousResearch.LogCoordinate.logMap
#print ContinuousResearch.LogCoordinate.logMap

#check ContinuousResearch.LogCoordinate.positiveMap
#print axioms ContinuousResearch.LogCoordinate.positiveMap
#print ContinuousResearch.LogCoordinate.positiveMap

#check ContinuousResearch.LogCoordinate.logMap_ae
#print axioms ContinuousResearch.LogCoordinate.logMap_ae
#print ContinuousResearch.LogCoordinate.logMap_ae

#check ContinuousResearch.LogCoordinate.positiveMap_ae
#print axioms ContinuousResearch.LogCoordinate.positiveMap_ae
#print ContinuousResearch.LogCoordinate.positiveMap_ae

#check ContinuousResearch.LogCoordinate.logMap_leftInverse
#print axioms ContinuousResearch.LogCoordinate.logMap_leftInverse
#print ContinuousResearch.LogCoordinate.logMap_leftInverse

#check ContinuousResearch.LogCoordinate.logMap_rightInverse
#print axioms ContinuousResearch.LogCoordinate.logMap_rightInverse
#print ContinuousResearch.LogCoordinate.logMap_rightInverse

#check ContinuousResearch.LogCoordinate.logL2_norm_sq_integral
#print axioms ContinuousResearch.LogCoordinate.logL2_norm_sq_integral
#print ContinuousResearch.LogCoordinate.logL2_norm_sq_integral

#check ContinuousResearch.LogCoordinate.logMap_norm
#print axioms ContinuousResearch.LogCoordinate.logMap_norm
#print ContinuousResearch.LogCoordinate.logMap_norm

#check ContinuousResearch.LogCoordinate.logMap_add
#print axioms ContinuousResearch.LogCoordinate.logMap_add
#print ContinuousResearch.LogCoordinate.logMap_add

#check ContinuousResearch.LogCoordinate.logMap_smul
#print axioms ContinuousResearch.LogCoordinate.logMap_smul
#print ContinuousResearch.LogCoordinate.logMap_smul

#check ContinuousResearch.LogCoordinate.logIsometry
#print axioms ContinuousResearch.LogCoordinate.logIsometry
#print ContinuousResearch.LogCoordinate.logIsometry

#check ContinuousResearch.LogCoordinate.logEquiv
#print axioms ContinuousResearch.LogCoordinate.logEquiv
#print ContinuousResearch.LogCoordinate.logEquiv

#check ContinuousResearch.LogCoordinate.positiveMap_norm
#print axioms ContinuousResearch.LogCoordinate.positiveMap_norm
#print ContinuousResearch.LogCoordinate.positiveMap_norm

#check ContinuousResearch.LogCoordinate.translate
#print axioms ContinuousResearch.LogCoordinate.translate
#print ContinuousResearch.LogCoordinate.translate

#check ContinuousResearch.LogCoordinate.translate_ae
#print axioms ContinuousResearch.LogCoordinate.translate_ae
#print ContinuousResearch.LogCoordinate.translate_ae

#check ContinuousResearch.LogCoordinate.logMap_dilate
#print axioms ContinuousResearch.LogCoordinate.logMap_dilate
#print ContinuousResearch.LogCoordinate.logMap_dilate
