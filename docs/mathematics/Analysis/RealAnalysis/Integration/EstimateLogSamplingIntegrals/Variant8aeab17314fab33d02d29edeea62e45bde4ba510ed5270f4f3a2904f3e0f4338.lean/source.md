# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.EstimateLogSamplingIntegrals.Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `863df8875532dc674778c02d469904cff6fe8bd2` · SHA-256 `5f7f87711b8e83f233fd478b6b82e0351f8b1dd308fd13d75f9ca12c1b0a42bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.HalfDensity.Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.HalfDensity.Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563","mathematical_subject":"Analysis.Integration","original_sha256":"3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/EstimateLogSamplingIntegrals.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSampling
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.MeasureTheory.Integral.IntegralEqImproper

/-!
# RH estimate: exact logarithmic sampling majorant integrals

This module evaluates the two elementary improper integrals in the archived
two-moment sampling estimate and applies them to the exact logarithmic
derivative majorant.

The change of variables u = exp r is performed with Mathlib's semi-infinite
exponential substitution theorem. The resulting exponential moments are
evaluated from the Gamma integral.

No arithmetic estimate is used.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.HalfDensity.Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateLogSamplingIntegrals

open MeasureTheory Set Filter
open EstimateLogSampling

noncomputable section

/-- Density `exp (-log u / 2) / u` used in the logarithmic change of variables. -/
def halfDensity (u : ℝ) : ℝ :=
  Real.exp (-Real.log u / 2) / u

/-- The density `halfDensity` multiplied by `log u`. -/
def logHalfDensity (u : ℝ) : ℝ :=
  Real.log u * halfDensity u

theorem exponential_half_mass :
    (∫ r in Ioi (0 : ℝ), Real.exp (-r / 2)) = 2 := by
  have h :=
    Real.integral_rpow_mul_exp_neg_mul_Ioi
      (a := (1 : ℝ)) (r := (1 / 2 : ℝ))
      (by norm_num) (by norm_num)
  simpa [Real.rpow_zero, div_eq_mul_inv, mul_comm] using h

theorem exponential_half_first_moment :
    (∫ r in Ioi (0 : ℝ),
      r * Real.exp (-r / 2)) = 4 := by
  have h :=
    Real.integral_rpow_mul_exp_neg_mul_Ioi
      (a := (2 : ℝ)) (r := (1 / 2 : ℝ))
      (by norm_num) (by norm_num)
  have hGamma :
      Real.Gamma (2 : ℝ) = 1 := by
    norm_num [Real.Gamma_nat_eq_factorial]
  norm_num [hGamma, div_eq_mul_inv, mul_comm] at h ⊢
  exact h

theorem exp_mul_halfDensity (r : ℝ) :
    Real.exp r * halfDensity (Real.exp r) =
      Real.exp (-r / 2) := by
  unfold halfDensity
  rw [Real.log_exp]
  field_simp [Real.exp_ne_zero r]

theorem exp_mul_logHalfDensity (r : ℝ) :
    Real.exp r * logHalfDensity (Real.exp r) =
      r * Real.exp (-r / 2) := by
  unfold logHalfDensity
  rw [Real.log_exp]
  calc
    Real.exp r * (r * halfDensity (Real.exp r)) =
        r * (Real.exp r * halfDensity (Real.exp r)) := by ring
    _ = r * Real.exp (-r / 2) := by
      rw [exp_mul_halfDensity]

theorem halfDensity_integral :
    (∫ u in Ioi (1 : ℝ), halfDensity u) = 2 := by
  have hsub :=
    integral_comp_exp_Ioi halfDensity (0 : ℝ)
  have hsub' :
      (∫ r in Ioi (0 : ℝ),
        Real.exp r * halfDensity (Real.exp r)) =
        ∫ u in Ioi (1 : ℝ), halfDensity u := by
    simpa [smul_eq_mul] using hsub
  rw [← hsub']
  calc
    (∫ r in Ioi (0 : ℝ),
      Real.exp r * halfDensity (Real.exp r)) =
        ∫ r in Ioi (0 : ℝ),
          Real.exp (-r / 2) := by
      apply setIntegral_congr_fun measurableSet_Ioi
      intro r hr
      exact exp_mul_halfDensity r
    _ = 2 := exponential_half_mass

theorem logHalfDensity_integral :
    (∫ u in Ioi (1 : ℝ), logHalfDensity u) = 4 := by
  have hsub :=
    integral_comp_exp_Ioi logHalfDensity (0 : ℝ)
  have hsub' :
      (∫ r in Ioi (0 : ℝ),
        Real.exp r * logHalfDensity (Real.exp r)) =
        ∫ u in Ioi (1 : ℝ), logHalfDensity u := by
    simpa [smul_eq_mul] using hsub
  rw [← hsub']
  calc
    (∫ r in Ioi (0 : ℝ),
      Real.exp r * logHalfDensity (Real.exp r)) =
        ∫ r in Ioi (0 : ℝ),
          r * Real.exp (-r / 2) := by
      apply setIntegral_congr_fun measurableSet_Ioi
      intro r hr
      exact exp_mul_logHalfDensity r
    _ = 4 := exponential_half_first_moment

theorem halfDensity_integrableOn :
    IntegrableOn halfDensity (Ioi (1 : ℝ)) :=
  .of_integral_ne_zero (by
    rw [halfDensity_integral]
    norm_num)

theorem logHalfDensity_integrableOn :
    IntegrableOn logHalfDensity (Ioi (1 : ℝ)) :=
  .of_integral_ne_zero (by
    rw [logHalfDensity_integral]
    norm_num)

theorem logSamplingDerivativeMajorant_eq
    (x B0 B1 u : ℝ) :
    logSamplingDerivativeMajorant x B0 B1 u =
      Real.exp (-Real.log x / 2) *
        (B0 * halfDensity u +
          (B0 / 2 + B1) * logHalfDensity u) := by
  unfold logSamplingDerivativeMajorant
  unfold logHalfDensity halfDensity
  ring

theorem logSamplingDerivativeMajorant_integrableOn
    (x B0 B1 : ℝ) :
    IntegrableOn
      (logSamplingDerivativeMajorant x B0 B1)
      (Ioi (1 : ℝ)) := by
  rw [show
    logSamplingDerivativeMajorant x B0 B1 =
      fun u =>
        Real.exp (-Real.log x / 2) *
          (B0 * halfDensity u +
            (B0 / 2 + B1) * logHalfDensity u) by
      funext u
      exact logSamplingDerivativeMajorant_eq x B0 B1 u]
  exact
    ((halfDensity_integrableOn.const_mul B0).add
      (logHalfDensity_integrableOn.const_mul (B0 / 2 + B1))).const_mul (Real.exp (-Real.log x / 2))

theorem logSamplingDerivativeMajorant_integral
    (x B0 B1 : ℝ) :
    (∫ u in Ioi (1 : ℝ),
      logSamplingDerivativeMajorant x B0 B1 u) =
      Real.exp (-Real.log x / 2) *
        (4 * B0 + 4 * B1) := by
  rw [show
    logSamplingDerivativeMajorant x B0 B1 =
      fun u =>
        Real.exp (-Real.log x / 2) *
          (B0 * halfDensity u +
            (B0 / 2 + B1) * logHalfDensity u) by
      funext u
      exact logSamplingDerivativeMajorant_eq x B0 B1 u]
  rw [integral_const_mul]
  rw [integral_add
    (halfDensity_integrableOn.const_mul B0)
    (logHalfDensity_integrableOn.const_mul (B0 / 2 + B1))]
  rw [integral_const_mul, integral_const_mul,
    halfDensity_integral, logHalfDensity_integral]
  ring

theorem logSamplingDerivative_continuousOn_Ioi_one
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x : ℝ} (hx : 0 < x) :
    ContinuousOn
      (logSamplingDerivative F x)
      (Ioi (1 : ℝ)) := by
  have hder :
      ContinuousOn
        (deriv (logSamplingTerm F x))
        (Ioi (0 : ℝ)) :=
    (logSamplingTerm_contDiffOn_pos hF hx).continuousOn_deriv_of_isOpen isOpen_Ioi (by norm_num)
  have hder' :=
    hder.mono (Set.Ioi_subset_Ioi zero_le_one)
  refine hder'.congr ?_
  intro u hu
  exact (deriv_logSamplingTerm hF hx (u := u) (lt_trans zero_lt_one hu)).symm

theorem integral_abs_logSamplingDerivative_le
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x B0 B1 : ℝ}
    (hx : 0 < x)
    (hB : ProfileSupBounds F B0 B1) :
    (∫ u in Ioi (1 : ℝ),
      |logSamplingDerivative F x u|) ≤
      Real.exp (-Real.log x / 2) *
        (4 * B0 + 4 * B1) := by
  have hmaj :=
    logSamplingDerivativeMajorant_integrableOn x B0 B1
  have hcont :=
    logSamplingDerivative_continuousOn_Ioi_one hF hx
  have hmeas :
      AEStronglyMeasurable
        (logSamplingDerivative F x)
        (volume.restrict (Ioi (1 : ℝ))) :=
    hcont.aestronglyMeasurable measurableSet_Ioi
  have hder :
      IntegrableOn
        (logSamplingDerivative F x)
        (Ioi (1 : ℝ)) := by
    refine Integrable.mono' hmaj hmeas ?_
    exact
      (ae_restrict_iff' measurableSet_Ioi).2
        (Eventually.of_forall fun u hu => by
          rw [Real.norm_eq_abs]
          exact abs_logSamplingDerivative_le
            hx (le_of_lt hu) hB)
  calc
    (∫ u in Ioi (1 : ℝ),
      |logSamplingDerivative F x u|) ≤
        ∫ u in Ioi (1 : ℝ),
          logSamplingDerivativeMajorant x B0 B1 u := by
      refine setIntegral_mono_ae_restrict hder.norm hmaj ?_
      exact
        (ae_restrict_iff' measurableSet_Ioi).2
          (Eventually.of_forall fun u hu =>
            abs_logSamplingDerivative_le
              hx (le_of_lt hu) hB)
    _ =
      Real.exp (-Real.log x / 2) *
        (4 * B0 + 4 * B1) :=
      logSamplingDerivativeMajorant_integral x B0 B1

/-- The two exponential moment values, exact derivative-majorant integral,
and conditional absolute derivative integral bound on `u > 1`. -/
def LogSamplingIntegralCheckpoint : Prop :=
  (∫ r in Ioi (0 : ℝ), Real.exp (-r / 2)) = 2 ∧
  (∫ r in Ioi (0 : ℝ),
    r * Real.exp (-r / 2)) = 4 ∧
  (∀ x B0 B1 : ℝ,
    (∫ u in Ioi (1 : ℝ),
      logSamplingDerivativeMajorant x B0 B1 u) =
      Real.exp (-Real.log x / 2) *
        (4 * B0 + 4 * B1)) ∧
  (∀ F : ℝ → ℝ, ContDiff ℝ 1 F →
    ∀ x B0 B1 : ℝ,
      0 < x →
      ProfileSupBounds F B0 B1 →
      (∫ u in Ioi (1 : ℝ),
        |logSamplingDerivative F x u|) ≤
        Real.exp (-Real.log x / 2) *
          (4 * B0 + 4 * B1))

theorem log_sampling_integral_checkpoint :
    LogSamplingIntegralCheckpoint :=
  ⟨exponential_half_mass,
    exponential_half_first_moment,
    logSamplingDerivativeMajorant_integral,
    fun F hF x B0 B1 hx hB =>
      integral_abs_logSamplingDerivative_le (F := F) hF (x := x)
        (B0 := B0) (B1 := B1) hx hB⟩

end
end EstimateLogSamplingIntegrals
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
