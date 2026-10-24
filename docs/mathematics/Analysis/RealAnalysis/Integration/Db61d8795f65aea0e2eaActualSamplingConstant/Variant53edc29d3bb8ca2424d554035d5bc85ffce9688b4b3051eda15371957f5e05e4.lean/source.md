# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Db61d8795f65aea0e2eaActualSamplingConstant.Variant53edc29d3bb8ca2424d554035d5bc85ffce9688b4b3051eda15371957f5e05e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6549633d5465a18c253ebcde979aac5de984439d` · SHA-256 `f47c074ad9dfeee39fbd125db1e3420aaea98eacb725b6d9d46e5e39b43d01de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.CoefficientWeightZeroUnitIntegral.Variantdb61d8795f65aea0e2eaaf828df25f9c88e230e8e046a1ec3dfea4eeb26bcecc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"db61d8795f65aea0e2eaaf828df25f9c88e230e8e046a1ec3dfea4eeb26bcecc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.CoefficientWeightZeroUnitIntegral.Variantdb61d8795f65aea0e2eaaf828df25f9c88e230e8e046a1ec3dfea4eeb26bcecc","mathematical_subject":"Analysis.Integration","original_sha256":"db61d8795f65aea0e2eaaf828df25f9c88e230e8e046a1ec3dfea4eeb26bcecc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/db61d8795f65aea0e2ea-ActualSamplingConstant.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceSamplingCoefficients
import Zeta23.FromPNTPlus.ZetaBounds

/-!
Exact identification of the maintained signed zeroth sampling coefficient.
The below-one contribution is retained. No arithmetic upper-bound witness is introduced.
AI attribution: OpenAI Codex; proof terms checked by Lean.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.CoefficientWeightZeroUnitIntegral.Variantdb61d8795f65aea0e2eaaf828df25f9c88e230e8e046a1ec3dfea4eeb26bcecc

set_option autoImplicit false
namespace ContinuousResearch.ActualSamplingConstant
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceSamplingCoefficients

noncomputable section

theorem coefficientWeight_zero_unit_integral :
    (∫ u in (0 : ℝ)..1, coefficientWeight 0 u) = 2 := by
  have he : (∫ u in (0 : ℝ)..1, coefficientWeight 0 u) =
      ∫ u in (0 : ℝ)..1, u ^ (-(1 : ℝ) / 2) := by
    apply intervalIntegral.integral_congr_Ioo_of_le (by norm_num)
    intro u hm
    rw [coefficientWeight, pow_zero, mul_one,
      Int.fract_eq_self.mpr ⟨hm.1.le, hm.2⟩]
    calc
      u * u ^ (-(3 : ℝ) / 2) = u ^ (1 : ℝ) * u ^ (-(3 : ℝ) / 2) := by
        rw [Real.rpow_one]
      _ = u ^ (-(1 : ℝ) / 2) := by
        rw [← Real.rpow_add hm.1]
        norm_num
  rw [he, integral_rpow (Or.inl (by norm_num))]
  norm_num

theorem coefficientWeight_zero_split :
    signedCoefficientMoment 0 = 2 + ∫ u in Ioi (1 : ℝ), coefficientWeight 0 u := by
  have hi := coefficientWeight_integrable 0
  have ht := hi.mono_set (Ioi_subset_Ioi (by norm_num : (0 : ℝ) ≤ 1))
  have hs := intervalIntegral.integral_interval_add_Ioi hi ht
  rw [coefficientWeight_zero_unit_integral] at hs
  exact hs.symm

theorem riemannZeta_half_real_euler :
    (riemannZeta (1 / 2 : ℂ)).re =
      -(3 : ℝ) / 2 + (1 / 2 : ℝ) *
        ∫ u in Ioi (1 : ℝ), ((⌊u⌋ : ℝ) + 1 / 2 - u) * u ^ (-(3 : ℝ) / 2) := by
  have hz := Zeta0EqZeta (N := 1) (by norm_num)
    (s := (1 / 2 : ℂ)) (by norm_num) (by norm_num)
  have he : (∫ u in Ioi (1 : ℝ),
      ((⌊u⌋ : ℂ) + 1 / 2 - u) * (u : ℂ) ^ (-((1 / 2 : ℂ) + 1))) =
      Complex.ofReal (∫ u in Ioi (1 : ℝ),
        ((⌊u⌋ : ℝ) + 1 / 2 - u) * (u ^ (-(3 : ℝ) / 2) : ℝ)) := by
    rw [← integral_complex_ofReal]
    apply setIntegral_congr_fun measurableSet_Ioi
    intro u hu
    dsimp only
    have hu0 : 0 ≤ u := (by norm_num : (0 : ℝ) < 1).le.trans hu.le
    rw [show -((1 / 2 : ℂ) + 1) = ((-(3 : ℝ) / 2 : ℝ) : ℂ) by norm_num,
      ← Complex.ofReal_cpow hu0]
    push_cast
    rfl
  unfold riemannZeta0 at hz
  simp only [div_cpow_eq_cpow_neg, Nat.cast_one] at hz
  rw [he] at hz
  norm_num [Finset.sum_range_succ] at hz
  apply_fun Complex.re at hz
  simp only [Complex.add_re, Complex.mul_re,
    Complex.div_re, Complex.ofReal_re, Complex.ofReal_im] at hz
  norm_num at hz
  linarith

theorem real_euler_integral_eq :
    (∫ u in Ioi (1 : ℝ), ((⌊u⌋ : ℝ) + 1 / 2 - u) * u ^ (-(3 : ℝ) / 2)) =
      1 - ∫ u in Ioi (1 : ℝ), coefficientWeight 0 u := by
  have hi : IntegrableOn (fun u : ℝ ↦ u ^ (-(3 : ℝ) / 2)) (Ioi 1) :=
    integrableOn_Ioi_rpow_of_lt (by norm_num) (by norm_num)
  have hw := (coefficientWeight_integrable 0).mono_set
    (Ioi_subset_Ioi (by norm_num : (0 : ℝ) ≤ 1))
  have he : (fun u : ℝ ↦ ((⌊u⌋ : ℝ) + 1 / 2 - u) * u ^ (-(3 : ℝ) / 2)) =
      fun u ↦ (1 / 2 : ℝ) * u ^ (-(3 : ℝ) / 2) - coefficientWeight 0 u := by
    funext u
    simp only [coefficientWeight, pow_zero, mul_one, Int.fract]
    ring
  rw [he, integral_sub (hi.const_mul _) hw, integral_const_mul,
    integral_Ioi_rpow_of_lt (by norm_num) (by norm_num)]
  norm_num

theorem samplingAlpha0_eq_riemannZeta_half_re :
    samplingAlpha0 = (riemannZeta (1 / 2 : ℂ)).re := by
  rw [samplingAlpha0, coefficientWeight_zero_split,
    riemannZeta_half_real_euler, real_euler_integral_eq]
  ring


#print axioms coefficientWeight_zero_unit_integral
#print axioms coefficientWeight_zero_split
#print axioms riemannZeta_half_real_euler
#print axioms real_euler_integral_eq
#print axioms samplingAlpha0_eq_riemannZeta_half_re
#print axioms Zeta0EqZeta
#print axioms integrableOn_of_Zeta0_fun
end
end ContinuousResearch.ActualSamplingConstant
```
