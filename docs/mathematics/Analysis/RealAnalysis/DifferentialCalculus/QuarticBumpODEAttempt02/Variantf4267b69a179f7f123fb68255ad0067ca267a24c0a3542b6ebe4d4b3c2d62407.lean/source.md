# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuarticBumpODEAttempt02.Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f44c7cc6d9a8f2ab65125ea14703f10ce825d21` · SHA-256 `2c47b078c872b247a3867f2fd40fff72f6335293991546f025829ac55dc9bc91`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.BumpMoment.Variant855e36b36713ab253d8a1ffc726e34212d06c1c54173703e643d3b5860b9099b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"855e36b36713ab253d8a1ffc726e34212d06c1c54173703e643d3b5860b9099b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.BumpMoment.Variant855e36b36713ab253d8a1ffc726e34212d06c1c54173703e643d3b5860b9099b","mathematical_subject":"Analysis.Calculus","original_sha256":"855e36b36713ab253d8a1ffc726e34212d06c1c54173703e643d3b5860b9099b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass19/quartic_energy/QuarticBumpODE-attempt02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualMellinFilter

/-! Literal source-bump parameter derivatives and weighted ODE.
Direction grwtsk contributors; scratch construction OpenAI Codex.
No desired zero-free target or energy identity is supplied as a premise. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.BumpMoment.Variant855e36b36713ab253d8a1ffc726e34212d06c1c54173703e643d3b5860b9099b

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.QuarticBumpODE
open MeasureTheory Set Complex
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.GevreyPolynomial
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open ContinuousResearch.SourceBoundaryOrder ContinuousResearch.ActualMellinFilter

def bumpMoment (j : ℕ) (w : ℂ) : ℂ :=
  compactLaplace (fun v : ℝ => v^j*sourceBump v) w

def fifthProfile (v : ℝ) : ℝ := (1-v^2)*sourceBump v

theorem moment_profile_continuous (j : ℕ) :
    Continuous (fun v : ℝ => v^j*sourceBump v) :=
  (continuous_id.pow j).mul sourceBump_contDiff.continuous

theorem moment_profile_hasCompactSupport (j : ℕ) :
    HasCompactSupport (fun v : ℝ => v^j*sourceBump v) :=
  sourceBump_hasCompactSupport.mul_left

theorem bumpMoment_integrable (j : ℕ) (w : ℂ) :
    Integrable (fun v : ℝ => (v^j*sourceBump v : ℝ)*Complex.exp (w*(v : ℂ))) :=
  compactLaplace_integrable _ (moment_profile_continuous j) (moment_profile_hasCompactSupport j) w

theorem bumpMoment_hasDerivAt (j : ℕ) (w : ℂ) :
    HasDerivAt (bumpMoment j) (bumpMoment (j+1) w) w := by
  have h := compactLaplace_hasDerivAt _ (moment_profile_continuous j)
    (moment_profile_hasCompactSupport j) w
  apply h.congr_deriv
  unfold bumpMoment compactLaplace
  apply integral_congr_ae
  filter_upwards [] with v
  push_cast
  rw [pow_succ]
  ring

theorem bumpMoment_zero_eq_quartic : bumpMoment 0 = quarticBumpLaplace := by
  funext w
  have h := primitiveTransform_eq_quartic (A:=1) (by norm_num) w
  simpa [primitiveTransform,bumpMoment,sourceBump_eq_scaled_unit] using h

theorem quartic_hasDerivAt (w : ℂ) :
    HasDerivAt quarticBumpLaplace (bumpMoment 1 w) w := by
  rw [← bumpMoment_zero_eq_quartic]
  exact bumpMoment_hasDerivAt 0 w

theorem quartic_deriv : deriv quarticBumpLaplace = bumpMoment 1 :=
  funext fun w => (quartic_hasDerivAt w).deriv

theorem quartic_second_deriv : deriv (deriv quarticBumpLaplace) = bumpMoment 2 := by
  rw [quartic_deriv]
  exact funext fun w => (bumpMoment_hasDerivAt 1 w).deriv

theorem fifthProfile_contDiff : ContDiff ℝ 2 fifthProfile := by
  unfold fifthProfile
  exact (contDiff_const.sub (contDiff_id.pow 2)).mul sourceBump_contDiff

theorem fifthProfile_hasCompactSupport : HasCompactSupport fifthProfile :=
  sourceBump_hasCompactSupport.mul_left

theorem fifthProfile_hasDerivAt (v : ℝ) :
    HasDerivAt fifthProfile (-10*v*sourceBump v) v := by
  have hb : HasDerivAt sourceBump (firstDerivative 1 v) v := by
    rw [sourceBump_eq_scaled_unit]
    exact scaledBump_hasDerivAt (by norm_num) v
  have h := ((hasDerivAt_const v (1 : ℝ)).sub ((hasDerivAt_id v).pow 2)).mul hb
  apply h.congr_deriv
  by_cases hv : v ∈ Icc (-1 : ℝ) 1
  · simp only [firstDerivative,indicator_of_mem hv,firstInterior]
    simp [sourceBump,hv]
    ring
  · simp [firstDerivative,sourceBump,hv]

theorem fifthProfile_deriv : deriv fifthProfile = fun v => -10*v*sourceBump v :=
  funext fun v => (fifthProfile_hasDerivAt v).deriv

theorem fifthProfile_transform (w : ℂ) :
    compactLaplace fifthProfile w = bumpMoment 0 w-bumpMoment 2 w := by
  have h0 := bumpMoment_integrable 0 w
  have h2 := bumpMoment_integrable 2 w
  have he (v : ℝ) : (fifthProfile v : ℂ)*Complex.exp (w*(v : ℂ)) =
      ((v^0*sourceBump v : ℝ) : ℂ)*Complex.exp (w*(v : ℂ))-
      ((v^2*sourceBump v : ℝ) : ℂ)*Complex.exp (w*(v : ℂ)) := by
    unfold fifthProfile
    push_cast
    ring
  unfold compactLaplace
  simp_rw [he]
  rw [integral_sub h0 h2]
  rfl

theorem fifthProfile_deriv_transform (w : ℂ) :
    compactLaplace (deriv fifthProfile) w = -10*bumpMoment 1 w := by
  rw [fifthProfile_deriv]
  unfold bumpMoment compactLaplace
  rw [← integral_const_mul]
  apply integral_congr_ae
  filter_upwards [] with v
  push_cast
  ring

theorem literal_quartic_ODE (w : ℂ) :
    w*deriv (deriv quarticBumpLaplace) w+10*deriv quarticBumpLaplace w-
      w*quarticBumpLaplace w = 0 := by
  have h := complex_weighted_derivative fifthProfile
    (fifthProfile_contDiff.of_le (by norm_num)) fifthProfile_hasCompactSupport w
  rw [fifthProfile_transform,fifthProfile_deriv_transform] at h
  rw [quartic_second_deriv,quartic_deriv,← bumpMoment_zero_eq_quartic]
  linear_combination -h

end ContinuousResearch.QuarticBumpODE
```
