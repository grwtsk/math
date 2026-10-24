# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuarticBumpEnergyAttempt01.Variantab6592e340b5a33ca66db4580d73b35d9d99efb3e2a237e6ca1591cf74bc8747

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e3913b5ab746c25d496565ff5bf1d4191cc72d0` · SHA-256 `393048c28c4fc58a6df1705b664ad4fa2aa819e64a341ae818aee8c9d7810daf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RayValue.Variante2ab6f7a14b52a227122103e419d87ac7f6fcad02e45e32fe806b9c279886cbc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e2ab6f7a14b52a227122103e419d87ac7f6fcad02e45e32fe806b9c279886cbc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.RayValue.Variante2ab6f7a14b52a227122103e419d87ac7f6fcad02e45e32fe806b9c279886cbc","mathematical_subject":"Analysis.Calculus","original_sha256":"e2ab6f7a14b52a227122103e419d87ac7f6fcad02e45e32fe806b9c279886cbc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass19/quartic_energy/QuarticBumpEnergy-attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import QuarticBumpODE

/-! Literal quartic-bump weighted energy, without a supplied energy callback.
Direction grwtsk contributors; scratch construction OpenAI Codex. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RayValue.Variante2ab6f7a14b52a227122103e419d87ac7f6fcad02e45e32fe806b9c279886cbc

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.QuarticBumpEnergy
open MeasureTheory Set Complex
open ContinuousResearch.QuarticBumpODE ContinuousResearch.ActualMellinFilter

def rayValue (w : ℂ) (t : ℝ) : ℂ := quarticBumpLaplace ((t : ℂ)*w)
def raySlope (w : ℂ) (t : ℝ) : ℂ := w*bumpMoment 1 ((t : ℂ)*w)
def weightedMass (w : ℂ) : ℝ := ∫ t in (0 : ℝ)..1, t^10*‖rayValue w t‖^2
def weightedEnergy (w : ℂ) : ℝ := ∫ t in (0 : ℝ)..1, t^10*‖raySlope w t‖^2

theorem rayValue_hasDerivAt (w : ℂ) (t : ℝ) :
    HasDerivAt (rayValue w) (raySlope w t) t := by
  have h := ((quartic_hasDerivAt ((t : ℂ)*w)).comp (t : ℂ)
    ((hasDerivAt_id (t : ℂ)).mul_const w)).comp_ofReal
  simpa [rayValue,raySlope,mul_comm] using h

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
    simpa using (Complex.ofRealCLM.hasDerivAt.pow 10 (x:=t))
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
  let t : ℝ := min e 1/2
  have ht0 : 0 < t := lt_min he (by norm_num)
  have ht1 : t ≤ 1 := le_trans (min_le_right _ _) (by norm_num)
  have hte : t < e := lt_of_le_of_lt (min_le_left _ _) (by linarith)
  have htne : rayValue w t ≠ 0 := hball (by simpa [Metric.mem_ball,Real.dist_eq,abs_of_pos ht0] using hte)
  apply intervalIntegral.integral_pos (by norm_num) (mass_integrand_continuous w).continuousOn
  · intro u hu
    exact mul_nonneg (by positivity) (sq_nonneg _)
  · exact ⟨t,⟨ht0.le,ht1⟩,mul_pos (pow_pos ht0 10) (sq_pos_of_pos (norm_pos_iff.mpr htne))⟩

end ContinuousResearch.QuarticBumpEnergy
```
