# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FrozenSourceTransferStatements.Variant84bb92ad6f9909579d95ad23d277931bde1b86600a07936b15af87ffa505cb78

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef5f6d1e3115a4d850dd204f45ed7e4e957e9659` · SHA-256 `c2c897fe7c4b44e4b3c08c8efbe58b62ac579891b0bfbb0a78ccbfa5913e39b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedBump.Variant3bf8977aeae16454f409d0cf3be841d6e9fffad5ff77e92fdf367cc0e9b595b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3bf8977aeae16454f409d0cf3be841d6e9fffad5ff77e92fdf367cc0e9b595b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.FixedBump.Variant3bf8977aeae16454f409d0cf3be841d6e9fffad5ff77e92fdf367cc0e9b595b5","mathematical_subject":"Analysis.Calculus","original_sha256":"3bf8977aeae16454f409d0cf3be841d6e9fffad5ff77e92fdf367cc0e9b595b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-zero-energy/FrozenSourceTransferStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.PoleCancellation
import FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondMoment
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Topology.Piecewise
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedBump.Variant3bf8977aeae16454f409d0cf3be841d6e9fffad5ff77e92fdf367cc0e9b595b5

set_option autoImplicit false
namespace FixedSourceFilterScratch
open MeasureTheory Set
open scoped Topology ContDiff
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourceComparison
open Realization CorrelationRegularity BridgeNormalization ZeroSideTargets
noncomputable section

/-- The unchanged source bump at unit scale. -/
def fixedBump : ℝ → ℝ := sourceBump

/-- Its first interior derivative, with the same zero extension. -/
def fixedBumpFirst : ℝ → ℝ := (Icc (-1 : ℝ) 1).indicator (firstInterior 1)

/-- The fixed filter is the actual normalized source at scale one. -/
def v : ℝ → ℝ := normalizedTest explicitSecondDerivative 1

/-- Its bilateral transform is defined by the genuine source integral. -/
def V (z : ℂ) : ℂ := ∫ x : ℝ, (v x : ℂ) * Complex.exp (z * (x : ℂ))

theorem sourceNormalization_one : sourceNormalization 1 = (45056 / 1105 : ℝ) := by
  norm_num [sourceNormalization]

theorem fixedBump_eq_scaled : fixedBump = scaledBump 1 := by
  funext x
  simp [fixedBump, scaledBump]

theorem fixedBump_weak_second_derivative :
    IsWeakSecondDerivative fixedBump (explicitSecondDerivative 1) := by
  rw [fixedBump_eq_scaled]
  exact scaledBump_weak_second_derivative 1 le_rfl

theorem fixedBump_hasDerivAt (x : ℝ) : HasDerivAt fixedBump (fixedBumpFirst x) x := by
  rw [fixedBump_eq_scaled, scaledBump_eq_indicator 1 (by norm_num)]
  apply indicator_hasDerivAt (bumpInterior_hasDerivAt 1)
  intro y hy
  rw [frontier_Icc (by norm_num : (-1 : ℝ) ≤ 1)] at hy
  rcases hy with rfl | rfl <;> norm_num [bumpInterior, firstInterior]

theorem fixedBumpFirst_hasDerivAt (x : ℝ) :
    HasDerivAt fixedBumpFirst (explicitSecondDerivative 1 x) x := by
  apply indicator_hasDerivAt (firstInterior_hasDerivAt 1)
  intro y hy
  rw [frontier_Icc (by norm_num : (-1 : ℝ) ≤ 1)] at hy
  rcases hy with rfl | rfl <;> norm_num [firstInterior, secondInterior]

theorem fixedBump_deriv : deriv fixedBump = fixedBumpFirst := by
  funext x
  exact (fixedBump_hasDerivAt x).deriv

theorem fixedBump_second_deriv : deriv (deriv fixedBump) = explicitSecondDerivative 1 := by
  rw [fixedBump_deriv]
  funext x
  exact (fixedBumpFirst_hasDerivAt x).deriv

theorem v_eq_fixed_differential (x : ℝ) :
    v x = (deriv (deriv fixedBump) x - fixedBump x / 4) /
      Real.sqrt (45056 / 1105 : ℝ) := by
  rw [fixedBump_second_deriv, fixedBump_eq_scaled]
  simp only [v, normalizedTest, dilationTest, sourceNormalization_one]

theorem v_contDiff : ContDiff ℝ 1 v := normalizedTest_contDiff 1 (by norm_num)

theorem v_hasCompactSupport : HasCompactSupport v :=
  normalizedTest_hasCompactSupport 1 (by norm_num)

theorem v_zero_of_one_le_abs (x : ℝ) (hx : 1 ≤ |x|) : v x = 0 :=
  normalizedTest_zero_of_le_abs 1 x (by norm_num) hx

theorem v_support_subset : Function.support v ⊆ Icc (-1 : ℝ) 1 := by
  intro x hx
  by_contra h
  have hxabs : 1 ≤ |x| := by
    simp only [mem_Icc, not_and_or, not_le] at h
    rcases h with h | h
    · exact le_trans (by linarith) (neg_le_abs x)
    · exact le_trans (by linarith) (le_abs_self x)
  exact hx (v_zero_of_one_le_abs x hxabs)

theorem v_even : Function.Even v := CorrelationSecondMoment.normalizedTest_even 1 le_rfl

theorem v_integrable : Integrable v volume := normalizedTest_integrable 1 (by norm_num)

theorem v_memLp_two : MemLp v 2 volume :=
  v_contDiff.continuous.memLp_of_hasCompactSupport v_hasCompactSupport

theorem v_square_integrable : Integrable (fun x ↦ v x ^ 2) volume :=
  normalized_square_integrable 1 le_rfl

theorem v_square_integral : (∫ x, v x ^ 2) = 1 := normalized_square_integral 1 le_rfl

theorem v_deriv_hasCompactSupport : HasCompactSupport (deriv v) := v_hasCompactSupport.deriv

theorem v_deriv_bounded : ∃ C : ℝ, ∀ x : ℝ, ‖deriv v x‖ ≤ C := by
  exact v_deriv_hasCompactSupport.exists_bound_of_continuous v_contDiff.continuous_deriv_one

theorem v_complex_eq_actual (x : ℝ) :
    (v x : ℂ) = (actualTest 1 x : ℂ) / (Real.sqrt (45056 / 1105 : ℝ) : ℂ) := by
  simp only [v, normalizedTest, actualTest, sourceNormalization_one, Complex.ofReal_div]

theorem V_integrable (z : ℂ) :
    Integrable (fun x : ℝ ↦ (v x : ℂ) * Complex.exp (z * (x : ℂ))) volume := by
  have h := (ZeroTransform.actual_integrable 1 (by norm_num) z).div_const
    (Real.sqrt (45056 / 1105 : ℝ) : ℂ)
  convert h using 1
  funext x
  rw [v_complex_eq_actual]
  ring

theorem V_eq_bilateral (z : ℂ) :
    V z = bilateralTransform 1 z / (Real.sqrt (45056 / 1105 : ℝ) : ℂ) := by
  unfold V bilateralTransform
  rw [← integral_div]
  apply integral_congr_ae
  filter_upwards [] with x
  rw [v_complex_eq_actual]
  ring

theorem V_eq_closed_formula (z : ℂ) (hz : z ≠ 0) :
    V z = dividedTransform 1 z / (Real.sqrt (45056 / 1105 : ℝ) : ℂ) := by
  rw [V_eq_bilateral, ZeroTransform.actual_transform 1 (by norm_num) z hz]

theorem V_positive_pole_zero : V (1 / 2) = 0 := by
  rw [V_eq_bilateral, PoleCancellation.actual_positive_bilateral 1 le_rfl, zero_div]

theorem V_negative_pole_zero : V (-1 / 2) = 0 := by
  rw [V_eq_bilateral, PoleCancellation.actual_negative_bilateral 1 le_rfl, zero_div]


/-- The remaining analytic factor in the exact source formula; only z=0 is excluded. -/
def removedFilter (z : ℂ) : ℂ :=
  384 * (Complex.exp z * transformPolynomial z -
    Complex.exp (-z) * transformPolynomial (-z)) /
      (z ^ 9 * (Real.sqrt (45056 / 1105 : ℝ) : ℂ))

/-- The exact real coefficient of the simple zero at the positive pole. -/
def positivePoleSlope : ℝ :=
  12288 * (1001 * Real.exp (1 / 2) - 2721 * Real.exp (-1 / 2)) /
    Real.sqrt (45056 / 1105 : ℝ)

theorem V_eq_removedFilter (z : ℂ) (hz : z ≠ 0) :
    V z = (z ^ 2 - 1 / 4) * removedFilter z := by
  rw [V_eq_closed_formula z hz]
  norm_num [dividedTransform, removedFilter]
  ring

theorem removedFilter_differentiableAt (z : ℂ) (hz : z ≠ 0) :
    DifferentiableAt ℂ removedFilter z := by
  have hc : (Real.sqrt (45056 / 1105 : ℝ) : ℂ) ≠ 0 := by
    exact_mod_cast (Real.sqrt_pos.mpr (by norm_num : (0 : ℝ) < 45056 / 1105)).ne'
  unfold removedFilter transformPolynomial
  fun_prop (disch := positivity)

theorem removedFilter_positive_pole : removedFilter (1 / 2) = (positivePoleSlope : ℂ) := by
  norm_num [removedFilter, positivePoleSlope, transformPolynomial,
    Complex.ofReal_div, Complex.ofReal_mul, Complex.ofReal_sub, Complex.ofReal_exp]
  ring

theorem positivePoleSlope_pos : 0 < positivePoleSlope := by
  have he := Real.sum_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 1) 11
  norm_num [Finset.sum_range_succ, Nat.factorial] at he
  have he' : (2721 : ℝ) < 1001 * Real.exp 1 := by linarith
  have hp : 0 < Real.exp (-1 / 2 : ℝ) := Real.exp_pos _
  have hexp : Real.exp (1 / 2 : ℝ) = Real.exp 1 * Real.exp (-1 / 2) := by
    rw [← Real.exp_add]
    norm_num
  have hd : 0 < 1001 * Real.exp (1 / 2 : ℝ) - 2721 * Real.exp (-1 / 2) := by
    rw [hexp]
    nlinarith [mul_pos (sub_pos.mpr he') hp]
  unfold positivePoleSlope
  positivity

theorem V_hasDerivAt_positive_pole :
    HasDerivAt V (positivePoleSlope : ℂ) (1 / 2) := by
  have hd := (removedFilter_differentiableAt (1 / 2) (by norm_num)).hasDerivAt
  have hpoly := ((hasDerivAt_id (1 / 2 : ℂ)).pow 2).sub_const (1 / 4)
  have hprod := hpoly.mul hd
  have h : HasDerivAt (fun z : ℂ ↦ (z ^ 2 - 1 / 4) * removedFilter z)
      (positivePoleSlope : ℂ) (1 / 2) := by
    convert hprod using 1 <;> first | rfl | norm_num [removedFilter_positive_pole]
  apply h.congr_of_eventuallyEq
  filter_upwards [isOpen_compl_singleton.mem_nhds (by norm_num : (1 / 2 : ℂ) ≠ 0)] with z hz
  exact V_eq_removedFilter z hz

theorem V_deriv_positive_pole : deriv V (1 / 2) = (positivePoleSlope : ℂ) :=
  V_hasDerivAt_positive_pole.deriv

theorem V_deriv_positive_pole_ne_zero : deriv V (1 / 2) ≠ 0 := by
  rw [V_deriv_positive_pole]
  exact_mod_cast positivePoleSlope_pos.ne'


/-- Dividing by the removed simple zero has this genuine nonzero limiting value. -/
theorem V_removed_pole_limit :
    Filter.Tendsto (fun z : ℂ ↦ V z / (z - 1 / 2))
      (𝓝[≠] (1 / 2)) (𝓝 (positivePoleSlope : ℂ)) := by
  have hs : slope V (1 / 2) = (fun z : ℂ ↦ V z / (z - 1 / 2)) := by
    funext z
    rw [slope_def_field, V_positive_pole_zero, sub_zero]
  rw [← hs]
  exact V_hasDerivAt_positive_pole.tendsto_slope

end
end FixedSourceFilterScratch

set_option autoImplicit false
namespace FrozenSourceTransferScratch
open Filter Set FixedSourceFilterScratch
open scoped Topology
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
noncomputable section

/-- The pointwise transfer product, whose value at the zeta pole is not the repaired value. -/
def transferProduct (z : ℂ) : ℂ :=
  Complex.exp (-z) * riemannZeta (1 / 2 + z) * V z

/-- The nonzero removed-pole value is obtained from the actual source's simple-zero slope. -/
def removedPoleValue : ℂ := Complex.exp (-(1 / 2 : ℂ)) * (positivePoleSlope : ℂ)

/-- Translation carries the source puncture to the zeta puncture. -/
theorem positive_pole_shift_tendsto :
    Tendsto (fun z : ℂ ↦ 1 / 2 + z) (𝓝[≠] (1 / 2)) (𝓝[≠] 1) := by
  apply tendsto_nhdsWithin_iff.mpr
  constructor
  · have h : Tendsto (fun z : ℂ ↦ (1 / 2 : ℂ) + z)
        (𝓝[≠] (1 / 2)) (𝓝 ((1 / 2 : ℂ) + 1 / 2)) :=
      tendsto_const_nhds.add (tendsto_id.mono_left nhdsWithin_le_nhds)
    convert h using 1
    norm_num
  · filter_upwards [self_mem_nhdsWithin] with z hz
    simp only [mem_compl_iff, mem_singleton_iff] at hz ⊢
    intro h
    apply hz
    linear_combination h

/-- The residue-one theorem is transported to the actual shifted source variable. -/
theorem shifted_zeta_residue :
    Tendsto (fun z : ℂ ↦ (z - 1 / 2) * riemannZeta (1 / 2 + z))
      (𝓝[≠] (1 / 2)) (𝓝 1) := by
  convert riemannZeta_residue_one.comp positive_pole_shift_tendsto using 1
  funext z
  simp only [Function.comp_apply]
  congr 1
  ring

/-- The actual product has a genuine punctured limit, using both source slope and zeta residue. -/
theorem transferProduct_removed_pole_limit :
    Tendsto transferProduct (𝓝[≠] (1 / 2)) (𝓝 removedPoleValue) := by
  have he : Tendsto (fun z : ℂ ↦ Complex.exp (-z))
      (𝓝[≠] (1 / 2)) (𝓝 (Complex.exp (-(1 / 2 : ℂ)))) :=
    (Complex.continuous_exp.comp continuous_neg).continuousAt.tendsto.mono_left
      nhdsWithin_le_nhds
  have hp := (he.mul shifted_zeta_residue).mul V_removed_pole_limit
  simp only [mul_one] at hp
  apply hp.congr'
  filter_upwards [self_mem_nhdsWithin] with z hz
  have hz' : z - 1 / 2 ≠ 0 := sub_ne_zero.mpr hz
  unfold transferProduct
  rw [show V z / (z - 1 / 2) = V z * (z - 1 / 2)⁻¹ by rw [div_eq_mul_inv]]
  calc
    _ = Complex.exp (-z) * riemannZeta (1 / 2 + z) * V z *
        ((z - 1 / 2) * (z - 1 / 2)⁻¹) := by ring
    _ = _ := by rw [mul_inv_cancel₀ hz', mul_one]

/-- Repair exactly the source pole, leaving every other transfer-product value untouched. -/
def repairedTransfer : ℂ → ℂ := by
  classical
  exact Function.update transferProduct (1 / 2) removedPoleValue

/-- The repaired transfer has precisely the prescribed pole value. -/
theorem repairedTransfer_at_pole : repairedTransfer (1 / 2) = removedPoleValue := by
  classical
  simp [repairedTransfer]

/-- Away from the pole, the original complex product is retained verbatim. -/
theorem repairedTransfer_eq_product (z : ℂ) (hz : z ≠ 1 / 2) :
    repairedTransfer z = Complex.exp (-z) * riemannZeta (1 / 2 + z) * V z := by
  classical
  simp only [repairedTransfer, Function.update_of_ne hz, transferProduct]

/-- The repaired value makes the actual transfer genuinely continuous at the removed pole. -/
theorem repairedTransfer_continuousAt_pole : ContinuousAt repairedTransfer (1 / 2) := by
  classical
  exact continuousAt_update_same.mpr transferProduct_removed_pole_limit

/-- The pole cancellation produces a nonzero value, rather than a retained artificial zero. -/
theorem removedPoleValue_ne_zero : removedPoleValue ≠ 0 := by
  apply mul_ne_zero (Complex.exp_ne_zero _)
  exact_mod_cast positivePoleSlope_pos.ne'

/-- In particular, the repaired transfer cannot vanish at the pole. -/
theorem repairedTransfer_pole_ne_zero : repairedTransfer (1 / 2) ≠ 0 := by
  rw [repairedTransfer_at_pole]
  exact removedPoleValue_ne_zero

/-- A genuine zeta zero away from its pole gives a zero of the repaired source transfer. -/
theorem repairedTransfer_zero_of_zeta_zero (ρ : ℂ) (hρ : riemannZeta ρ = 0)
    (hρ1 : ρ ≠ 1) : repairedTransfer (ρ - 1 / 2) = 0 := by
  have hz : ρ - 1 / 2 ≠ 1 / 2 := by
    intro h
    apply hρ1
    linear_combination h
  rw [repairedTransfer_eq_product _ hz]
  rw [show (1 / 2 : ℂ) + (ρ - 1 / 2) = ρ by ring, hρ]
  simp

/-- The unchanged nontrivial-zero predicate supplies all required zero and pole guards. -/
theorem repairedTransfer_zero_of_nontrivial (ρ : ℂ)
    (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ) :
    repairedTransfer (ρ - 1 / 2) = 0 :=
  repairedTransfer_zero_of_zeta_zero ρ hρ.1 hρ.2.2

/-- Every occurrence retains its own source zero, including every analytic multiplicity slot. -/
theorem repairedTransfer_zero_occurrence (o : ZeroObject.ZeroOccurrence) :
    repairedTransfer (ZeroObject.shiftedValue o) = 0 := by
  rw [repairedTransfer_eq_product _ (ZeroObject.shiftedValue_ne_half o)]
  rw [show (1 / 2 : ℂ) + ZeroObject.shiftedValue o = o.1.val by
    unfold ZeroObject.shiftedValue; ring, o.1.property.1]
  simp

/-- Any finite-valued replacement of zeta retains the source's zero at the pole. -/
theorem finite_factor_product_at_pole (E : ℂ → ℂ) :
    Complex.exp (-(1 / 2 : ℂ)) * E (1 / 2) * V (1 / 2) = 0 := by
  rw [V_positive_pole_zero, mul_zero]

/-- A continuous finite factor has zero product limit and cannot provide the repaired pole value. -/
theorem finite_factor_product_limit (E : ℂ → ℂ) (hE : ContinuousAt E (1 / 2)) :
    Tendsto (fun z : ℂ ↦ Complex.exp (-z) * E z * V z)
      (𝓝 (1 / 2)) (𝓝 0) := by
  have h := ((Complex.continuous_exp.comp continuous_neg).continuousAt.tendsto.mul
    hE.tendsto).mul V_hasDerivAt_positive_pole.continuousAt.tendsto
  simpa only [V_positive_pole_zero, mul_zero, Function.comp_apply] using h

/-- The entire discrepancy at the removed pole persists for every finite-valued factor. -/
theorem finite_factor_pole_discrepancy (E : ℂ → ℂ) :
    ‖repairedTransfer (1 / 2) -
      Complex.exp (-(1 / 2 : ℂ)) * E (1 / 2) * V (1 / 2)‖ =
      ‖removedPoleValue‖ := by
  rw [repairedTransfer_at_pole, finite_factor_product_at_pole, sub_zero]

end
end FrozenSourceTransferScratch

namespace FrozenSourceTransferExactStatements
open Filter Set FixedSourceFilterScratch FrozenSourceTransferScratch
open scoped Topology
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
noncomputable section
example (z : ℂ) : transferProduct z =
    Complex.exp (-z) * riemannZeta (1 / 2 + z) * V z := rfl

example : removedPoleValue = Complex.exp (-(1 / 2 : ℂ)) * (positivePoleSlope : ℂ) := rfl

example : repairedTransfer = (by
    classical
    exact Function.update transferProduct (1 / 2) removedPoleValue) := rfl

example :
    Tendsto (fun z : ℂ ↦ 1 / 2 + z) (𝓝[≠] (1 / 2)) (𝓝[≠] 1) :=
  positive_pole_shift_tendsto

example :
    Tendsto (fun z : ℂ ↦ (z - 1 / 2) * riemannZeta (1 / 2 + z))
      (𝓝[≠] (1 / 2)) (𝓝 1) :=
  shifted_zeta_residue

example :
    Tendsto transferProduct (𝓝[≠] (1 / 2)) (𝓝 removedPoleValue) :=
  transferProduct_removed_pole_limit

example : repairedTransfer (1 / 2) = removedPoleValue :=
  repairedTransfer_at_pole

example (z : ℂ) (hz : z ≠ 1 / 2) :
    repairedTransfer z = Complex.exp (-z) * riemannZeta (1 / 2 + z) * V z :=
  repairedTransfer_eq_product z hz

example : ContinuousAt repairedTransfer (1 / 2) :=
  repairedTransfer_continuousAt_pole

example : removedPoleValue ≠ 0 :=
  removedPoleValue_ne_zero

example : repairedTransfer (1 / 2) ≠ 0 :=
  repairedTransfer_pole_ne_zero

example (ρ : ℂ) (hρ : riemannZeta ρ = 0)
    (hρ1 : ρ ≠ 1) : repairedTransfer (ρ - 1 / 2) = 0 :=
  repairedTransfer_zero_of_zeta_zero ρ hρ hρ1

example (ρ : ℂ)
    (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ) :
    repairedTransfer (ρ - 1 / 2) = 0 :=
  repairedTransfer_zero_of_nontrivial ρ hρ

example (o : ZeroObject.ZeroOccurrence) :
    repairedTransfer (ZeroObject.shiftedValue o) = 0 :=
  repairedTransfer_zero_occurrence o

example (E : ℂ → ℂ) :
    Complex.exp (-(1 / 2 : ℂ)) * E (1 / 2) * V (1 / 2) = 0 :=
  finite_factor_product_at_pole E

example (E : ℂ → ℂ) (hE : ContinuousAt E (1 / 2)) :
    Tendsto (fun z : ℂ ↦ Complex.exp (-z) * E z * V z)
      (𝓝 (1 / 2)) (𝓝 0) :=
  finite_factor_product_limit E hE

example (E : ℂ → ℂ) :
    ‖repairedTransfer (1 / 2) -
      Complex.exp (-(1 / 2 : ℂ)) * E (1 / 2) * V (1 / 2)‖ =
      ‖removedPoleValue‖ :=
  finite_factor_pole_discrepancy E


end
end FrozenSourceTransferExactStatements
```
