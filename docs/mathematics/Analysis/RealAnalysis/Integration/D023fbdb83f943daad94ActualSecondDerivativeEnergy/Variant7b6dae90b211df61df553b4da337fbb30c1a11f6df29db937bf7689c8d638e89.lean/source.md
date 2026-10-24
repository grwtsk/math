# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.D023fbdb83f943daad94ActualSecondDerivativeEnergy.Variant7b6dae90b211df61df553b4da337fbb30c1a11f6df29db937bf7689c8d638e89

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d1c485f0abee5c41f7d28c6fc97ce4f18227559` · SHA-256 `83c4b3aeb393bc631f6e988e9326bbf6a8ac22d0cf6ea5fa2487e146c76629e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.UnitFourth.Variantd023fbdb83f943daad944dece03f22c43985141ff212ca56fde1fcca47e0c646","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d023fbdb83f943daad944dece03f22c43985141ff212ca56fde1fcca47e0c646","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.UnitFourth.Variantd023fbdb83f943daad944dece03f22c43985141ff212ca56fde1fcca47e0c646","mathematical_subject":"Analysis.Integration","original_sha256":"d023fbdb83f943daad944dece03f22c43985141ff212ca56fde1fcca47e0c646","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/d023fbdb83f943daad94-ActualSecondDerivativeEnergy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import CubicCoefficientCalibration
import FormalResearch.RiemannHypothesis.SourceDerivativeEnergy

/-!
Actual second spatial derivative energy of the unchanged normalized source.
The ordinary second derivative is identified almost everywhere with a
piecewise polynomial. The two support endpoints are excluded from that
identification: the second-derivative profile has nonzero interior traces.
No global C2 source, H3 source, C4 correlation or cubic arithmetic bridge is
asserted. AI attribution: OpenAI Codex independent mathematical research.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.UnitFourth.Variantd023fbdb83f943daad944dece03f22c43985141ff212ca56fde1fcca47e0c646

set_option autoImplicit false

namespace RH16IndependentChallengeNext

open MeasureTheory Set
open FormalResearch.RiemannHypothesis
open SourcePairing SourceDerivativeEnergy SourceDerivativeCoefficientBound GevreyPolynomial
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity BridgeNormalization

noncomputable section

/-- Interior fourth derivative of the actual unit bump. Its endpoint traces are 384. -/
def unitFourth (x : ℝ) : ℝ := 144 - 1440 * x ^ 2 + 1680 * x ^ 4

def fourthInterior (A x : ℝ) : ℝ := unitFourth (x / A) / (A ^ 4 * Real.sqrt A)

def normalizedInteriorSecond (A x : ℝ) : ℝ :=
  (fourthInterior A x - secondInterior A x / 4) / Real.sqrt (sourceNormalization A)

def unitSecondEnergyProfile (theta : ℝ) : ℝ → ℝ :=
  (Icc (-1 : ℝ) 1).indicator (fun x => theta * unitFourth x - unitSecond x / 4)

/-- Actual scaled polynomial, with the same normalization and complete zero extension. -/
def actualSecondProfile (A x : ℝ) : ℝ :=
  (A ^ 2)⁻¹ * unitSecondEnergyProfile ((A ^ 2)⁻¹) (x / A) /
    (Real.sqrt A * Real.sqrt (sourceNormalization A))

theorem thirdInterior_hasDerivAt_fourth (A x : ℝ) :
    HasDerivAt (thirdInterior A) (fourthInterior A x) x := by
  have hy := (hasDerivAt_id x).div_const A
  have hd := (((hy.const_mul 144).sub ((hy.pow 3).const_mul 480)).add
    ((hy.pow 5).const_mul 336)).div_const (A ^ 3 * Real.sqrt A)
  convert hd using 1 <;> try rfl
  unfold fourthInterior unitFourth
  simp only [div_eq_mul_inv, mul_inv_rev, id_eq]
  ring

theorem normalizedInteriorDerivative_hasDerivAt_second (A x : ℝ) :
    HasDerivAt (normalizedInteriorDerivative A) (normalizedInteriorSecond A x) x :=
  ((thirdInterior_hasDerivAt_fourth A x).sub
    ((firstInterior_hasDerivAt A x).div_const 4)).div_const _

theorem actual_first_derivative_eq_indicator (A : ℝ) (hA : 0 < A) :
    deriv (normalizedTest explicitSecondDerivative A) =
      (Icc (-A) A).indicator (normalizedInteriorDerivative A) := by
  rw [normalizedTest_eq_indicator A hA]
  exact funext fun x => (indicator_hasDerivAt (normalizedInterior_hasDerivAt A)
    (normalizedInterior_frontier A hA) x).deriv

theorem actual_second_derivative_eq_interior (A x : ℝ) (hA : 0 < A)
    (hx : x ∈ Ioo (-A) A) :
    deriv (deriv (normalizedTest explicitSecondDerivative A)) x =
      normalizedInteriorSecond A x := by
  have he : EqOn (deriv (normalizedTest explicitSecondDerivative A))
      (normalizedInteriorDerivative A) (Ioo (-A) A) := by
    intro y hy
    rw [actual_first_derivative_eq_indicator A hA,
      indicator_of_mem (Ioo_subset_Icc_self hy)]
  rw [he.deriv isOpen_Ioo hx, (normalizedInteriorDerivative_hasDerivAt_second A x).deriv]

theorem scaled_unit_interval_iff (A x : ℝ) (hA : 0 < A) :
    x / A ∈ Icc (-1 : ℝ) 1 ↔ x ∈ Icc (-A) A := by
  simp only [mem_Icc, le_div_iff₀ hA, div_le_iff₀ hA]
  ring_nf

theorem actualSecondProfile_eq_interior (A x : ℝ) (hA : 0 < A)
    (hx : x ∈ Icc (-A) A) :
    actualSecondProfile A x = normalizedInteriorSecond A x := by
  unfold actualSecondProfile unitSecondEnergyProfile
  rw [indicator_of_mem ((scaled_unit_interval_iff A x hA).mpr hx)]
  unfold normalizedInteriorSecond fourthInterior secondInterior unitFourth unitSecond
  field_simp

/-- Excluding both support endpoints is essential; no false ordinary seam derivative is used. -/
theorem actual_second_derivative_ae_eq_profile (A : ℝ) (hA : 0 < A) :
    deriv (deriv (normalizedTest explicitSecondDerivative A)) =ᵐ[volume]
      actualSecondProfile A := by
  filter_upwards [volume.ae_ne (-A), volume.ae_ne A] with x hx0 hx1
  by_cases hm : x ∈ Icc (-A) A
  · rw [actual_second_derivative_eq_interior A x hA
      ⟨lt_of_le_of_ne hm.1 hx0.symm, lt_of_le_of_ne hm.2 hx1⟩,
      actualSecondProfile_eq_interior A x hA hm]
  · have he : EqOn (deriv (normalizedTest explicitSecondDerivative A))
        (fun _ => (0 : ℝ)) ((Icc (-A) A)ᶜ) := by
      intro y hy
      rw [actual_first_derivative_eq_indicator A hA, indicator_of_notMem hy]
    rw [he.deriv isClosed_Icc.isOpen_compl hm, deriv_const]
    have hmu : x / A ∉ Icc (-1 : ℝ) 1 :=
      (scaled_unit_interval_iff A x hA).not.mpr hm
    simp [actualSecondProfile, unitSecondEnergyProfile, indicator_of_notMem hmu]

theorem unitFourth_square_integral :
    (∫ x : ℝ in (-1)..1, unitFourth x ^ 2) = (32768 : ℝ) := by
  have he : (fun x : ℝ => unitFourth x ^ 2) = fun x =>
      20736 - 414720 * x ^ 2 + 2557440 * x ^ 4 -
        4838400 * x ^ 6 + 2822400 * x ^ 8 := by
    funext x
    unfold unitFourth
    ring
  rw [he]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
      intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num

theorem unitFourth_mul_second_integral :
    (∫ x : ℝ in (-1)..1, unitFourth x * unitSecond x) = -(65536 / 77 : ℝ) := by
  have he : (fun x : ℝ => unitFourth x * unitSecond x) = fun x =>
      -1152 + 21888 * x ^ 2 - 134400 * x ^ 4 + 301824 * x ^ 6 -
        282240 * x ^ 8 + 94080 * x ^ 10 := by
    funext x
    unfold unitFourth unitSecond
    ring
  rw [he]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
      intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num

theorem unitSecondEnergyProfile_square_integrable (theta : ℝ) :
    Integrable (fun x => unitSecondEnergyProfile theta x ^ 2) := by
  have hc : Continuous (fun x : ℝ => (theta * unitFourth x - unitSecond x / 4) ^ 2) := by
    unfold unitFourth unitSecond
    fun_prop
  have hi := hc.continuousOn.integrableOn_Icc (μ := volume) (a := (-1 : ℝ)) (b := 1)
  have hh := (integrable_indicator_iff measurableSet_Icc).mpr hi
  have he : (fun x => unitSecondEnergyProfile theta x ^ 2) =
      (Icc (-1 : ℝ) 1).indicator (fun x => (theta * unitFourth x - unitSecond x / 4) ^ 2) := by
    funext x
    simp only [unitSecondEnergyProfile, indicator_apply]
    split_ifs <;> simp
  rw [he]
  exact hh

theorem unitSecondEnergyProfile_square_integral (theta : ℝ) :
    (∫ x : ℝ, unitSecondEnergyProfile theta x ^ 2) =
      fourthDisplacementEnergyPolynomial theta := by
  have he : (fun x => unitSecondEnergyProfile theta x ^ 2) =
      (Icc (-1 : ℝ) 1).indicator (fun x => (theta * unitFourth x - unitSecond x / 4) ^ 2) := by
    funext x
    simp only [unitSecondEnergyProfile, indicator_apply]
    split_ifs <;> simp
  rw [he, zeroExtension_integral _ (-1) 1 (by norm_num)]
  have hh : (fun x : ℝ => (theta * unitFourth x - unitSecond x / 4) ^ 2) =
      fun x => theta ^ 2 * (unitFourth x ^ 2) -
        (theta / 2) * (unitFourth x * unitSecond x) + unitSecond x ^ 2 / 16 := by
    funext x
    ring
  rw [hh]
  simp (disch := (
    apply Continuous.intervalIntegrable
    dsimp [unitFourth, unitSecond]
    fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
      intervalIntegral.integral_const_mul, intervalIntegral.integral_div,
      unitFourth_square_integral, unitFourth_mul_second_integral, unitSecond_square_integral]
  unfold fourthDisplacementEnergyPolynomial
  ring

/-- Integrability is a conclusion from the actual AE representation, not a premise. -/
theorem actual_second_derivative_square_integrable (A : ℝ) (hA : 0 < A) :
    Integrable (fun x => (deriv (deriv (normalizedTest explicitSecondDerivative A)) x) ^ 2) := by
  have hi := (unitSecondEnergyProfile_square_integrable ((A ^ 2)⁻¹)).comp_mul_right'
    (inv_ne_zero hA.ne')
  have hs := (hi.const_mul ((A ^ 2)⁻¹ ^ 2)).div_const
    ((Real.sqrt A * Real.sqrt (sourceNormalization A)) ^ 2)
  have hp : Integrable (fun x => actualSecondProfile A x ^ 2) := by
    convert hs using 1
    funext x
    simp only [actualSecondProfile, div_eq_mul_inv, mul_pow]
    ring
  apply hp.congr
  filter_upwards [actual_second_derivative_ae_eq_profile A hA] with x hx
  rw [hx]

/-- Exact energy of the unchanged normalized source, for every positive real scale. -/
theorem actual_second_derivative_energy_eq (A : ℝ) (hA : 0 < A) :
    A ^ 4 * (∫ x : ℝ,
      (deriv (deriv (normalizedTest explicitSecondDerivative A)) x) ^ 2) =
      fourthDisplacementEnergyPolynomial ((A ^ 2)⁻¹) /
        normPolynomial ((A ^ 2)⁻¹) := by
  have hz : 0 < sourceNormalization A := by
    unfold sourceNormalization
    positivity
  have he : (fun x => (deriv (deriv (normalizedTest explicitSecondDerivative A)) x) ^ 2)
      =ᵐ[volume] fun x => actualSecondProfile A x ^ 2 := by
    filter_upwards [actual_second_derivative_ae_eq_profile A hA] with x hx
    rw [hx]
  rw [integral_congr_ae he]
  have hexpand : (fun x => actualSecondProfile A x ^ 2) = fun x =>
      unitSecondEnergyProfile ((A ^ 2)⁻¹) (x / A) ^ 2 /
        (A ^ 5 * sourceNormalization A) := by
    funext x
    unfold actualSecondProfile
    rw [div_pow, mul_pow, mul_pow, Real.sq_sqrt hA.le, Real.sq_sqrt hz.le]
    field_simp
  rw [hexpand, integral_div, Measure.integral_comp_div
    (fun y => unitSecondEnergyProfile ((A ^ 2)⁻¹) y ^ 2) A,
    abs_of_pos hA, smul_eq_mul, unitSecondEnergyProfile_square_integral]
  have hden : sourceNormalization A = normPolynomial ((A ^ 2)⁻¹) := by
    unfold sourceNormalization normPolynomial
    field_simp
    ring
  rw [hden]
  field_simp

end
end RH16IndependentChallengeNext
```
