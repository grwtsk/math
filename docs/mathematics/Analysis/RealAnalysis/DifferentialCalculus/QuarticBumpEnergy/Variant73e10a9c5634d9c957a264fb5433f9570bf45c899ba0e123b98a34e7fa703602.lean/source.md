# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuarticBumpEnergy.Variant73e10a9c5634d9c957a264fb5433f9570bf45c899ba0e123b98a34e7fa703602

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a660f0653e2e73b04e1b6d9157c4749536d1918e` · SHA-256 `34c0c67ad1cd400bdd1d779d720d6000e7bf40421331a0fb3407fc4fe6e448ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RayValue.Variant5cd72fbafc7d33cbf1a97e53be492cc73ca59e31cc9002eac94869a61fc65980","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5cd72fbafc7d33cbf1a97e53be492cc73ca59e31cc9002eac94869a61fc65980","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.RayValue.Variant5cd72fbafc7d33cbf1a97e53be492cc73ca59e31cc9002eac94869a61fc65980","mathematical_subject":"Analysis.Calculus","original_sha256":"5cd72fbafc7d33cbf1a97e53be492cc73ca59e31cc9002eac94869a61fc65980","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass19/quartic_energy/QuarticBumpEnergy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import QuarticBumpODE

/-! Literal quartic-bump weighted energy, without a supplied energy callback.
Direction grwtsk contributors; scratch construction OpenAI Codex. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RayValue.Variant5cd72fbafc7d33cbf1a97e53be492cc73ca59e31cc9002eac94869a61fc65980

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.QuarticBumpEnergy
open MeasureTheory Set Complex
open scoped ComplexConjugate
open ContinuousResearch.QuarticBumpODE ContinuousResearch.ActualMellinFilter

def rayValue (w : ℂ) (t : ℝ) : ℂ := quarticBumpLaplace ((t : ℂ)*w)
def raySlope (w : ℂ) (t : ℝ) : ℂ := w*bumpMoment 1 ((t : ℂ)*w)
def weightedMass (w : ℂ) : ℝ := ∫ t in (0 : ℝ)..1, t^10*‖rayValue w t‖^2
def weightedEnergy (w : ℂ) : ℝ := ∫ t in (0 : ℝ)..1, t^10*‖raySlope w t‖^2

theorem rayValue_hasDerivAt (w : ℂ) (t : ℝ) :
    HasDerivAt (rayValue w) (raySlope w t) t := by
  have h := ((quartic_hasDerivAt ((t : ℂ)*w)).comp (t : ℂ)
    ((hasDerivAt_id (t : ℂ)).mul_const w)).comp_ofReal
  apply h.congr_deriv
  simp only [raySlope,one_mul]
  ring

theorem raySlope_hasDerivAt (w : ℂ) (t : ℝ) :
    HasDerivAt (raySlope w) (w^2*bumpMoment 2 ((t : ℂ)*w)) t := by
  have h := (((bumpMoment_hasDerivAt 1 ((t : ℂ)*w)).comp (t : ℂ)
    ((hasDerivAt_id (t : ℂ)).mul_const w)).comp_ofReal).const_mul w
  apply h.congr_deriv
  simp only [one_mul]
  ring

theorem rayValue_continuous (w : ℂ) : Continuous (rayValue w) :=
  continuous_iff_continuousAt.mpr fun t => (rayValue_hasDerivAt w t).continuousAt

theorem raySlope_continuous (w : ℂ) : Continuous (raySlope w) :=
  continuous_iff_continuousAt.mpr fun t => (raySlope_hasDerivAt w t).continuousAt

theorem weightedRay_hasDerivAt (w : ℂ) (t : ℝ) :
    HasDerivAt (fun u : ℝ => (u : ℂ)^10*raySlope w u)
      (w^2*(t : ℂ)^10*rayValue w t) t := by
  have ht : HasDerivAt (fun u : ℝ => (u : ℂ)^10) (10*(t : ℂ)^9) t := by
    simpa using! ((hasDerivAt_id t).pow 10).ofReal_comp
  have h := ht.mul (raySlope_hasDerivAt w t)
  apply h.congr_deriv
  have hode := literal_quartic_ODE ((t : ℂ)*w)
  rw [quartic_second_deriv,quartic_deriv] at hode
  unfold raySlope rayValue
  linear_combination (t : ℂ)^9*w*hode

theorem conjugateRay_hasDerivAt (w : ℂ) (t : ℝ) :
    HasDerivAt (fun u => conj (rayValue w u)) (conj (raySlope w t)) t := by
  simpa using (rayValue_hasDerivAt w t).star

theorem mass_integrand_continuous (w : ℂ) :
    Continuous (fun t : ℝ => t^10*‖rayValue w t‖^2) :=
  (continuous_id.pow 10).mul ((rayValue_continuous w).norm.pow 2)

theorem energy_integrand_continuous (w : ℂ) :
    Continuous (fun t : ℝ => t^10*‖raySlope w t‖^2) :=
  (continuous_id.pow 10).mul ((raySlope_continuous w).norm.pow 2)

theorem weightedEnergy_nonneg (w : ℂ) : 0 ≤ weightedEnergy w := by
  exact intervalIntegral.integral_nonneg_of_forall (by norm_num)
    (fun t => mul_nonneg (by positivity) (sq_nonneg _))

theorem rayValue_zero (w : ℂ) : rayValue w 0 = (256/315 : ℂ) := by
  simpa [rayValue] using quartic_value_zero

theorem weightedMass_pos (w : ℂ) : 0 < weightedMass w := by
  have hn : rayValue w 0 ≠ 0 := by rw [rayValue_zero]; norm_num
  have he := (rayValue_continuous w).continuousAt.eventually_ne hn
  rcases Metric.mem_nhds_iff.mp he with ⟨e,he,hball⟩
  let t : ℝ := min e 1 / 2
  have hm0 : 0 < min e 1 := lt_min he (by norm_num)
  have ht0 : 0 < t := div_pos hm0 (by norm_num)
  have ht1 : t ≤ 1 := by have := min_le_right e 1; dsimp [t]; linarith
  have hte : t < e := by have := min_le_left e 1; dsimp [t]; linarith
  have htne : rayValue w t ≠ 0 := hball (by simpa [Metric.mem_ball,Real.dist_eq,abs_of_pos ht0] using hte)
  apply intervalIntegral.integral_pos (by norm_num) (mass_integrand_continuous w).continuousOn
  · intro u hu
    exact mul_nonneg (by positivity) (sq_nonneg _)
  · exact ⟨t,⟨ht0.le,ht1⟩,mul_pos (pow_pos ht0 10) (sq_pos_of_pos (norm_pos_iff.mpr htne))⟩

theorem weighted_energy_identity (w : ℂ) (hw : quarticBumpLaplace w = 0) :
    w^2*(weightedMass w : ℂ) = -(weightedEnergy w : ℂ) := by
  have hc : Continuous (fun t : ℝ => conj (rayValue w t)) :=
    continuous_conj.comp (rayValue_continuous w)
  have hs : Continuous (fun t : ℝ => conj (raySlope w t)) :=
    continuous_conj.comp (raySlope_continuous w)
  have hp : Continuous (fun t : ℝ => (t : ℂ)^10*raySlope w t) :=
    (Complex.continuous_ofReal.pow 10).mul (raySlope_continuous w)
  have hd : Continuous (fun t : ℝ => w^2*(t : ℂ)^10*rayValue w t) :=
    (continuous_const.mul (Complex.continuous_ofReal.pow 10)).mul (rayValue_continuous w)
  have hibp := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (u:=fun t : ℝ => conj (rayValue w t))
    (v:=fun t : ℝ => (t : ℂ)^10*raySlope w t)
    (u':=fun t : ℝ => conj (raySlope w t))
    (v':=fun t : ℝ => w^2*(t : ℂ)^10*rayValue w t)
    (a:=0) (b:=1) hc.continuousOn hp.continuousOn
    (fun t _ => conjugateRay_hasDerivAt w t)
    (fun t _ => weightedRay_hasDerivAt w t)
    (hs.intervalIntegrable 0 1) (hd.intervalIntegrable 0 1)
  have he0 (t : ℝ) : conj (rayValue w t)*(w^2*(t : ℂ)^10*rayValue w t) =
      w^2*((t^10*‖rayValue w t‖^2 : ℝ) : ℂ) := by
    push_cast
    rw [← Complex.conj_mul']
    ring
  have he1 (t : ℝ) : conj (raySlope w t)*((t : ℂ)^10*raySlope w t) =
      ((t^10*‖raySlope w t‖^2 : ℝ) : ℂ) := by
    push_cast
    rw [← Complex.conj_mul']
    ring
  have hl : (∫ t in (0 : ℝ)..1, conj (rayValue w t)*(w^2*(t : ℂ)^10*rayValue w t)) =
      w^2*(weightedMass w : ℂ) := by
    simp_rw [he0]
    rw [intervalIntegral.integral_const_mul,intervalIntegral.integral_ofReal]
    rfl
  have hr : (∫ t in (0 : ℝ)..1, conj (raySlope w t)*((t : ℂ)^10*raySlope w t)) =
      (weightedEnergy w : ℂ) := by
    simp_rw [he1]
    rw [intervalIntegral.integral_ofReal]
    rfl
  rw [hl,hr] at hibp
  simpa [rayValue,hw] using hibp

theorem literal_quartic_nonzero {w : ℂ} (hw : 0 < w.re) :
    quarticBumpLaplace w ≠ 0 := by
  intro hz
  have h := weighted_energy_identity w hz
  have hj := weightedMass_pos w
  have hi := weightedEnergy_nonneg w
  have hre := congrArg Complex.re h
  have him := congrArg Complex.im h
  simp only [pow_two,Complex.mul_re,Complex.mul_im,Complex.ofReal_re,Complex.ofReal_im,
    Complex.neg_re,Complex.neg_im,mul_zero,sub_zero,zero_add] at hre him
  have hwi : w.im = 0 := by
    have hm : (2*w.re*weightedMass w)*w.im = 0 := by linear_combination him
    have hp : 0 < 2*w.re*weightedMass w := by positivity
    exact (mul_eq_zero.mp hm).resolve_left hp.ne'
  rw [hwi] at hre
  have hp : 0 < w.re^2*weightedMass w := mul_pos (sq_pos_of_pos hw) hj
  nlinarith

theorem actual_mellin_halfstrip_nonzero {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hl : 1/2 < s.re) (hu : s.re < 1) :
    mellin (fun x => (ContinuousResearch.LogarithmicSource.actualLogSource A x : ℂ)) s ≠ 0 := by
  apply (actual_mellin_halfstrip_nonzero_iff_quartic hA hl hu).mpr
  exact literal_quartic_nonzero (actual_halfstrip_quartic_argument_pos hA hl)

end ContinuousResearch.QuarticBumpEnergy

#check ContinuousResearch.QuarticBumpEnergy.rayValue
#print axioms ContinuousResearch.QuarticBumpEnergy.rayValue
#print ContinuousResearch.QuarticBumpEnergy.rayValue

#check ContinuousResearch.QuarticBumpEnergy.raySlope
#print axioms ContinuousResearch.QuarticBumpEnergy.raySlope
#print ContinuousResearch.QuarticBumpEnergy.raySlope

#check ContinuousResearch.QuarticBumpEnergy.weightedMass
#print axioms ContinuousResearch.QuarticBumpEnergy.weightedMass
#print ContinuousResearch.QuarticBumpEnergy.weightedMass

#check ContinuousResearch.QuarticBumpEnergy.weightedEnergy
#print axioms ContinuousResearch.QuarticBumpEnergy.weightedEnergy
#print ContinuousResearch.QuarticBumpEnergy.weightedEnergy

#check ContinuousResearch.QuarticBumpEnergy.rayValue_hasDerivAt
#print axioms ContinuousResearch.QuarticBumpEnergy.rayValue_hasDerivAt
#print ContinuousResearch.QuarticBumpEnergy.rayValue_hasDerivAt

#check ContinuousResearch.QuarticBumpEnergy.raySlope_hasDerivAt
#print axioms ContinuousResearch.QuarticBumpEnergy.raySlope_hasDerivAt
#print ContinuousResearch.QuarticBumpEnergy.raySlope_hasDerivAt

#check ContinuousResearch.QuarticBumpEnergy.rayValue_continuous
#print axioms ContinuousResearch.QuarticBumpEnergy.rayValue_continuous
#print ContinuousResearch.QuarticBumpEnergy.rayValue_continuous

#check ContinuousResearch.QuarticBumpEnergy.raySlope_continuous
#print axioms ContinuousResearch.QuarticBumpEnergy.raySlope_continuous
#print ContinuousResearch.QuarticBumpEnergy.raySlope_continuous

#check ContinuousResearch.QuarticBumpEnergy.weightedRay_hasDerivAt
#print axioms ContinuousResearch.QuarticBumpEnergy.weightedRay_hasDerivAt
#print ContinuousResearch.QuarticBumpEnergy.weightedRay_hasDerivAt

#check ContinuousResearch.QuarticBumpEnergy.conjugateRay_hasDerivAt
#print axioms ContinuousResearch.QuarticBumpEnergy.conjugateRay_hasDerivAt
#print ContinuousResearch.QuarticBumpEnergy.conjugateRay_hasDerivAt

#check ContinuousResearch.QuarticBumpEnergy.mass_integrand_continuous
#print axioms ContinuousResearch.QuarticBumpEnergy.mass_integrand_continuous
#print ContinuousResearch.QuarticBumpEnergy.mass_integrand_continuous

#check ContinuousResearch.QuarticBumpEnergy.energy_integrand_continuous
#print axioms ContinuousResearch.QuarticBumpEnergy.energy_integrand_continuous
#print ContinuousResearch.QuarticBumpEnergy.energy_integrand_continuous

#check ContinuousResearch.QuarticBumpEnergy.weightedEnergy_nonneg
#print axioms ContinuousResearch.QuarticBumpEnergy.weightedEnergy_nonneg
#print ContinuousResearch.QuarticBumpEnergy.weightedEnergy_nonneg

#check ContinuousResearch.QuarticBumpEnergy.rayValue_zero
#print axioms ContinuousResearch.QuarticBumpEnergy.rayValue_zero
#print ContinuousResearch.QuarticBumpEnergy.rayValue_zero

#check ContinuousResearch.QuarticBumpEnergy.weightedMass_pos
#print axioms ContinuousResearch.QuarticBumpEnergy.weightedMass_pos
#print ContinuousResearch.QuarticBumpEnergy.weightedMass_pos

#check ContinuousResearch.QuarticBumpEnergy.weighted_energy_identity
#print axioms ContinuousResearch.QuarticBumpEnergy.weighted_energy_identity
#print ContinuousResearch.QuarticBumpEnergy.weighted_energy_identity

#check ContinuousResearch.QuarticBumpEnergy.literal_quartic_nonzero
#print axioms ContinuousResearch.QuarticBumpEnergy.literal_quartic_nonzero
#print ContinuousResearch.QuarticBumpEnergy.literal_quartic_nonzero

#check ContinuousResearch.QuarticBumpEnergy.actual_mellin_halfstrip_nonzero
#print axioms ContinuousResearch.QuarticBumpEnergy.actual_mellin_halfstrip_nonzero
#print ContinuousResearch.QuarticBumpEnergy.actual_mellin_halfstrip_nonzero
```
