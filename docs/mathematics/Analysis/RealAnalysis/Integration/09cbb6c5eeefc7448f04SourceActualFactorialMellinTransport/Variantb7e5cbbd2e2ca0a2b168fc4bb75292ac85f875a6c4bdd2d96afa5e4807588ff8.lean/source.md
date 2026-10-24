# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport.Variantb7e5cbbd2e2ca0a2b168fc4bb75292ac85f875a6c4bdd2d96afa5e4807588ff8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e4bf48b7619584d233240b490ec314109fb4bed` · SHA-256 `5ecd2ae58d9cf9e92aa1b87d1d7e38d5db2174ec31064a6fdd532d252f73353c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ScaledFactorialDensity.Variant09cbb6c5eeefc7448f042042337feb626305e4aabd2bd0634df306f0ef5b67fa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"09cbb6c5eeefc7448f042042337feb626305e4aabd2bd0634df306f0ef5b67fa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ScaledFactorialDensity.Variant09cbb6c5eeefc7448f042042337feb626305e4aabd2bd0634df306f0ef5b67fa","mathematical_subject":"Analysis.Integration","original_sha256":"09cbb6c5eeefc7448f042042337feb626305e4aabd2bd0634df306f0ef5b67fa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/09cbb6c5eeefc7448f04-SourceActualFactorialMellinTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceFactorialMellinCancellation

/-!
The actual signed finite Moebius half-moment is transported into the same
factorial defect present in the genuine complementary source. Both-end L1
precedes finite integral exchange. No Moebius or Psi upper witness is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ScaledFactorialDensity.Variant09cbb6c5eeefc7448f042042337feb626305e4aabd2bd0634df306f0ef5b67fa

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualFactorialMellinTransport
open MeasureTheory Set
open scoped BigOperators
open SourceFactorialMellinCancellation SourceActualFactorialTailDecomposition
open SourceFullPositiveKappa SourceStrictComplementaryAbel SourceStrictComplementaryLocalization
open SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateMobiusSplit EstimateMertensAbel
noncomputable section

private theorem scaled_factorial_density {d x : ℝ} (hd : 0 < d) (hx : 0 < x) :
    factorialLogDefect (x / d) * x ^ (-(3 : ℝ) / 2) =
      d ^ (-(3 : ℝ) / 2) * factorialMellinWeight (x * d⁻¹) := by
  have hxdiv : 0 < x / d := div_pos hx hd
  have hxde : x = d * (x / d) := by field_simp
  have hp : x ^ (-(3 : ℝ) / 2) =
      d ^ (-(3 : ℝ) / 2) * (x / d) ^ (-(3 : ℝ) / 2) := by
    conv_lhs => rw [hxde]
    exact Real.mul_rpow hd.le hxdiv.le
  unfold factorialMellinWeight
  rw [hp, ← div_eq_mul_inv]
  ring

theorem scaledFactorialMellin_integrable {d : ℝ} (hd : 0 < d) :
    IntegrableOn (fun x => factorialLogDefect (x / d) * x ^ (-(3 : ℝ) / 2))
      (Ioi (0 : ℝ)) := by
  have hi : IntegrableOn (fun x => factorialMellinWeight (x * d⁻¹)) (Ioi (0 : ℝ)) := by
    apply (integrableOn_Ioi_comp_mul_right_iff factorialMellinWeight 0 (inv_pos.mpr hd)).mpr
    simpa using factorialMellinWeight_integrable
  have hii : IntegrableOn
      (fun x => d ^ (-(3 : ℝ) / 2) * factorialMellinWeight (x * d⁻¹)) (Ioi (0 : ℝ)) :=
    hi.const_mul _
  apply hii.congr_fun
  · intro x hx
    exact (scaled_factorial_density hd hx).symm
  · exact measurableSet_Ioi

theorem scaledFactorialMellin_integral {d : ℝ} (hd : 0 < d) :
    (∫ x in Ioi (0 : ℝ), factorialLogDefect (x / d) * x ^ (-(3 : ℝ) / 2)) =
      2 * fullPositiveKappa 1 / Real.sqrt d := by
  rw [setIntegral_congr_fun measurableSet_Ioi
    (fun x hx => scaled_factorial_density hd hx), integral_const_mul,
    integral_comp_mul_right_Ioi factorialMellinWeight 0 (inv_pos.mpr hd)]
  simp only [zero_mul, inv_inv, smul_eq_mul]
  have hp : d ^ (-(3 : ℝ) / 2) * d = (Real.sqrt d)⁻¹ := by
    rw [Real.sqrt_eq_rpow, ← Real.rpow_neg hd.le]
    calc
      d ^ (-(3 : ℝ) / 2) * d = d ^ (-(3 : ℝ) / 2) * d ^ (1 : ℝ) := by
        rw [Real.rpow_one]
      _ = d ^ (-(3 : ℝ) / 2 + 1) := (Real.rpow_add hd _ _).symm
      _ = _ := by norm_num
  have hm : (∫ x in Ioi (0 : ℝ), factorialMellinWeight x) = 2 * fullPositiveKappa 1 := by
    linarith [fullPositiveKappa_one_eq_factorial_mellin]
  rw [← mul_assoc, hp, hm]
  ring

/-- The genuine finite factorial inventory has full positive-axis Mellin L1. -/
theorem shortFactorialMellin_integrable (U : ℕ) :
    IntegrableOn (fun x => shortFactorialDefect U x * x ^ (-(3 : ℝ) / 2))
      (Ioi (0 : ℝ)) := by
  unfold shortFactorialDefect
  simp_rw [Finset.sum_mul]
  apply integrable_finsetSum
  intro d hd
  have hdpos : 0 < (d : ℝ) := by
    exact_mod_cast (by have := (Finset.mem_Icc.mp hd).1; omega : 0 < d)
  simpa only [mul_assoc] using (scaledFactorialMellin_integrable hdpos).const_mul
    (realMoebius d)

/-- All actual Moebius signs and the complete closed cutoff survive finite Mellin exchange. -/
theorem shortFactorialMellin_integral (U : ℕ) :
    (∫ x in Ioi (0 : ℝ), shortFactorialDefect U x * x ^ (-(3 : ℝ) / 2)) =
      2 * fullPositiveKappa 1 *
        (∑ d ∈ Finset.Icc 1 U, realMoebius d / Real.sqrt (d : ℝ)) := by
  unfold shortFactorialDefect
  simp_rw [Finset.sum_mul]
  rw [integral_finsetSum]
  · simp_rw [mul_assoc, integral_const_mul]
    simp_rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro d hd
    have hdpos : 0 < (d : ℝ) := by
      exact_mod_cast (by have := (Finset.mem_Icc.mp hd).1; omega : 0 < d)
    rw [scaledFactorialMellin_integral hdpos]
    ring
  · intro d hd
    have hdpos : 0 < (d : ℝ) := by
      exact_mod_cast (by have := (Finset.mem_Icc.mp hd).1; omega : 0 < d)
    simpa only [mul_assoc] using (scaledFactorialMellin_integrable hdpos).const_mul
      (realMoebius d)

/-- The actual first-kappa signed half inventory is the exact factorial-defect moment. -/
theorem fullKappa_signed_half_inventory_eq_factorial_integral (U : ℕ) :
    fullPositiveKappa 1 *
        (∑ d ∈ Finset.Icc 1 U, realMoebius d / Real.sqrt (d : ℝ)) =
      ∫ x in Ioi (0 : ℝ), (1 / 2 : ℝ) * shortFactorialDefect U x *
        x ^ (-(3 : ℝ) / 2) := by
  rw [show (fun x => (1 / 2 : ℝ) * shortFactorialDefect U x * x ^ (-(3 : ℝ) / 2)) =
    fun x => (1 / 2 : ℝ) * (shortFactorialDefect U x * x ^ (-(3 : ℝ) / 2)) by
      funext x; ring]
  rw [integral_const_mul, shortFactorialMellin_integral]
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualFactorialMellinTransport
```
