# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedSourceFilterAudit.Variant84f7712e8e3ca14ef51a000a5f10393799db2a2daa0903c7517e404654f028f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14e61fe0f134723f1293a5d7a23550ee551bbcb0` · SHA-256 `b0980e986cb8213d2339f47d0b38185239f0831610e7b24d6667af7896128daa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedBump.Variant76656b06f026a4bbf19ac5ef7994efa36b24656f6273efcc6c4bada6fe882c3c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76656b06f026a4bbf19ac5ef7994efa36b24656f6273efcc6c4bada6fe882c3c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.FixedBump.Variant76656b06f026a4bbf19ac5ef7994efa36b24656f6273efcc6c4bada6fe882c3c","mathematical_subject":"Analysis.Calculus","original_sha256":"76656b06f026a4bbf19ac5ef7994efa36b24656f6273efcc6c4bada6fe882c3c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-zero-energy/FixedSourceFilterAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.PoleCancellation
import FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondMoment
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedBump.Variant76656b06f026a4bbf19ac5ef7994efa36b24656f6273efcc6c4bada6fe882c3c

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

set_option pp.universes true
#print FixedSourceFilterScratch.fixedBump
#print axioms FixedSourceFilterScratch.fixedBump
#print FixedSourceFilterScratch.fixedBumpFirst
#print axioms FixedSourceFilterScratch.fixedBumpFirst
#print FixedSourceFilterScratch.v
#print axioms FixedSourceFilterScratch.v
#print FixedSourceFilterScratch.V
#print axioms FixedSourceFilterScratch.V
#print FixedSourceFilterScratch.sourceNormalization_one
#print axioms FixedSourceFilterScratch.sourceNormalization_one
#print FixedSourceFilterScratch.fixedBump_eq_scaled
#print axioms FixedSourceFilterScratch.fixedBump_eq_scaled
#print FixedSourceFilterScratch.fixedBump_weak_second_derivative
#print axioms FixedSourceFilterScratch.fixedBump_weak_second_derivative
#print FixedSourceFilterScratch.fixedBump_hasDerivAt
#print axioms FixedSourceFilterScratch.fixedBump_hasDerivAt
#print FixedSourceFilterScratch.fixedBumpFirst_hasDerivAt
#print axioms FixedSourceFilterScratch.fixedBumpFirst_hasDerivAt
#print FixedSourceFilterScratch.fixedBump_deriv
#print axioms FixedSourceFilterScratch.fixedBump_deriv
#print FixedSourceFilterScratch.fixedBump_second_deriv
#print axioms FixedSourceFilterScratch.fixedBump_second_deriv
#print FixedSourceFilterScratch.v_eq_fixed_differential
#print axioms FixedSourceFilterScratch.v_eq_fixed_differential
#print FixedSourceFilterScratch.v_contDiff
#print axioms FixedSourceFilterScratch.v_contDiff
#print FixedSourceFilterScratch.v_hasCompactSupport
#print axioms FixedSourceFilterScratch.v_hasCompactSupport
#print FixedSourceFilterScratch.v_zero_of_one_le_abs
#print axioms FixedSourceFilterScratch.v_zero_of_one_le_abs
#print FixedSourceFilterScratch.v_support_subset
#print axioms FixedSourceFilterScratch.v_support_subset
#print FixedSourceFilterScratch.v_even
#print axioms FixedSourceFilterScratch.v_even
#print FixedSourceFilterScratch.v_integrable
#print axioms FixedSourceFilterScratch.v_integrable
#print FixedSourceFilterScratch.v_memLp_two
#print axioms FixedSourceFilterScratch.v_memLp_two
#print FixedSourceFilterScratch.v_square_integrable
#print axioms FixedSourceFilterScratch.v_square_integrable
#print FixedSourceFilterScratch.v_square_integral
#print axioms FixedSourceFilterScratch.v_square_integral
#print FixedSourceFilterScratch.v_deriv_hasCompactSupport
#print axioms FixedSourceFilterScratch.v_deriv_hasCompactSupport
#print FixedSourceFilterScratch.v_deriv_bounded
#print axioms FixedSourceFilterScratch.v_deriv_bounded
#print FixedSourceFilterScratch.v_complex_eq_actual
#print axioms FixedSourceFilterScratch.v_complex_eq_actual
#print FixedSourceFilterScratch.V_integrable
#print axioms FixedSourceFilterScratch.V_integrable
#print FixedSourceFilterScratch.V_eq_bilateral
#print axioms FixedSourceFilterScratch.V_eq_bilateral
#print FixedSourceFilterScratch.V_eq_closed_formula
#print axioms FixedSourceFilterScratch.V_eq_closed_formula
#print FixedSourceFilterScratch.V_positive_pole_zero
#print axioms FixedSourceFilterScratch.V_positive_pole_zero
#print FixedSourceFilterScratch.V_negative_pole_zero
#print axioms FixedSourceFilterScratch.V_negative_pole_zero
#print FixedSourceFilterScratch.removedFilter
#print axioms FixedSourceFilterScratch.removedFilter
#print FixedSourceFilterScratch.positivePoleSlope
#print axioms FixedSourceFilterScratch.positivePoleSlope
#print FixedSourceFilterScratch.V_eq_removedFilter
#print axioms FixedSourceFilterScratch.V_eq_removedFilter
#print FixedSourceFilterScratch.removedFilter_differentiableAt
#print axioms FixedSourceFilterScratch.removedFilter_differentiableAt
#print FixedSourceFilterScratch.removedFilter_positive_pole
#print axioms FixedSourceFilterScratch.removedFilter_positive_pole
#print FixedSourceFilterScratch.positivePoleSlope_pos
#print axioms FixedSourceFilterScratch.positivePoleSlope_pos
#print FixedSourceFilterScratch.V_hasDerivAt_positive_pole
#print axioms FixedSourceFilterScratch.V_hasDerivAt_positive_pole
#print FixedSourceFilterScratch.V_deriv_positive_pole
#print axioms FixedSourceFilterScratch.V_deriv_positive_pole
#print FixedSourceFilterScratch.V_deriv_positive_pole_ne_zero
#print axioms FixedSourceFilterScratch.V_deriv_positive_pole_ne_zero
#print FixedSourceFilterScratch.V_removed_pole_limit
#print axioms FixedSourceFilterScratch.V_removed_pole_limit
```
