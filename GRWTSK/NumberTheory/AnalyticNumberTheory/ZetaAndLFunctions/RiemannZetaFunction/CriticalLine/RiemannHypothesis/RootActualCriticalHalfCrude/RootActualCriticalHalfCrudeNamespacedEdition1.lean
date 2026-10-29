-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCriticalHalfCrudeConstant.Variant37c0d4a0aa7919de5e02d15d5a5b8ac57a410044d46f8de062b17e74c1af807a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"37c0d4a0aa7919de5e02d15d5a5b8ac57a410044d46f8de062b17e74c1af807a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualCriticalHalfCrudeConstant.Variant37c0d4a0aa7919de5e02d15d5a5b8ac57a410044d46f8de062b17e74c1af807a","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"37c0d4a0aa7919de5e02d15d5a5b8ac57a410044d46f8de062b17e74c1af807a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T221927Z-1791325167486029000/RootActualCriticalHalfCrude.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualCenteredHalfZetaReduction

/-!
This elementary growing bound is only for estimating the retained narrow
upper-column trace. It is not a uniform critical Moebius half estimate.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCriticalHalfCrudeConstant.Variant37c0d4a0aa7919de5e02d15d5a5b8ac57a410044d46f8de062b17e74c1af807a

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualCriticalHalfCrude
open scoped BigOperators
open SourceActualCenteredHalfHarmonic SourceActualHalfHarmonicZeta
open SourceActualCenteredHalfZetaReduction SourceActualVaughanMeanBound
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaCentering
noncomputable section

/-- The constant depends only on the already specified actual zeta calibration. -/
def actualCriticalHalfCrudeConstant : ℝ :=
  (|(riemannZeta (1 / 2 : ℂ)).re| + 1) * (4 + |(riemannZeta (1 / 2 : ℂ)).re|)

/-- Every sign is retained in the actual inventory before applying this elementary norm. -/
theorem actualCriticalMoebiusHalf_abs_le_harmonic (U : ℕ) :
    |actualCriticalMoebiusHalf U| ≤ finiteHalfHarmonic U := by
  unfold actualCriticalMoebiusHalf finiteHalfHarmonic
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum
  intro d _
  rw [abs_div, abs_of_nonneg (Real.sqrt_nonneg _)]
  apply div_le_div_of_nonneg_right _ (Real.sqrt_nonneg _)
  exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))

private theorem half_harmonic_nonneg (U : ℕ) : 0 ≤ finiteHalfHarmonic U := by
  unfold finiteHalfHarmonic
  exact Finset.sum_nonneg (fun _ _ => by positivity)

/-- The genuine calibrated fractional tail supplies this growing harmonic envelope. -/
theorem finiteHalfHarmonic_le_calibrated_sqrt (U : ℕ) (hU : 1 ≤ U) :
    finiteHalfHarmonic U ≤ 2 * Real.sqrt (U : ℝ) +
      |(riemannZeta (1 / 2 : ℂ)).re| + 1 := by
  have ht := (halfHarmonicFractionalTail_bounds U hU).2
  have hs : (1 : ℝ) ≤ Real.sqrt (U : ℝ) := by
    have hn : (1 : ℝ) ≤ (U : ℝ) := by exact_mod_cast hU
    simpa using Real.sqrt_le_sqrt hn
  have hi : 1 / Real.sqrt (U : ℝ) ≤ 1 := by
    exact (div_le_one (by linarith)).2 hs
  rw [finiteHalfHarmonic_eq_sqrt_zeta_tail U hU]
  linarith [le_abs_self (riemannZeta (1 / 2 : ℂ)).re]

/-- This crude square-root bound is used solely with the genuine small edge trace. -/
theorem actualCenteredHalfZetaMain_abs_le_crude_sqrt (U : ℕ) (hU : 1 ≤ U) :
    |actualCenteredHalfZetaMain U| ≤ actualCriticalHalfCrudeConstant * Real.sqrt (U : ℝ) := by
  let Z := |(riemannZeta (1 / 2 : ℂ)).re|
  let H := finiteHalfHarmonic U
  have hH : 0 ≤ H := half_harmonic_nonneg U
  have hM := actualCriticalMoebiusHalf_abs_le_harmonic U
  have ha := actual_alpha_abs_le_one U
  have hab : |alpha U - actualCriticalMoebiusHalf U| ≤ 1 + H :=
    (abs_sub _ _).trans (add_le_add ha hM)
  have hp : |alpha U * H| ≤ H := by
    rw [abs_mul, abs_of_nonneg hH]
    simpa using mul_le_mul_of_nonneg_right ha hH
  have hm : |actualCenteredHalfZetaMain U| ≤ Z * (1 + H) + 1 + H := by
    unfold actualCenteredHalfZetaMain
    apply (abs_sub _ _).trans
    have hh := abs_add_le ((riemannZeta (1 / 2 : ℂ)).re *
      (alpha U - actualCriticalMoebiusHalf U)) (1 : ℝ)
    rw [abs_mul, abs_one] at hh
    have hmul : |(riemannZeta (1 / 2 : ℂ)).re| *
        |alpha U - actualCriticalMoebiusHalf U| ≤ Z * (1 + H) :=
      mul_le_mul_of_nonneg_left hab (abs_nonneg _)
    exact (add_le_add hh hp).trans (by linarith)
  have hcal : H ≤ 2 * Real.sqrt (U : ℝ) + Z + 1 :=
    finiteHalfHarmonic_le_calibrated_sqrt U hU
  have hs : (1 : ℝ) ≤ Real.sqrt (U : ℝ) := by
    have hn : (1 : ℝ) ≤ (U : ℝ) := by exact_mod_cast hU
    simpa using Real.sqrt_le_sqrt hn
  have hZ : 0 ≤ Z := abs_nonneg _
  have hHbound : 1 + H ≤ (4 + Z) * Real.sqrt (U : ℝ) := by
    nlinarith [mul_nonneg hZ (sub_nonneg.mpr hs)]
  unfold actualCriticalHalfCrudeConstant
  change |actualCenteredHalfZetaMain U| ≤ (Z + 1) * (4 + Z) * Real.sqrt (U : ℝ)
  calc
    _ ≤ (Z + 1) * (1 + H) := by nlinarith [hm]
    _ ≤ (Z + 1) * ((4 + Z) * Real.sqrt (U : ℝ)) :=
      mul_le_mul_of_nonneg_left hHbound (by positivity)
    _ = _ := by ring

end
end FormalResearch.RiemannHypothesis.RootActualCriticalHalfCrude
