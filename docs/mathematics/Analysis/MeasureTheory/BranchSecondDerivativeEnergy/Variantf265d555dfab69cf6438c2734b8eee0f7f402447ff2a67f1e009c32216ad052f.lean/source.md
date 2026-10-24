# Complete source: GRWTSK.Analysis.MeasureTheory.BranchSecondDerivativeEnergy.Variantf265d555dfab69cf6438c2734b8eee0f7f402447ff2a67f1e009c32216ad052f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14784bb6b9bf586b3dd01f08381ef3c6b68e8664` · SHA-256 `f265d555dfab69cf6438c2734b8eee0f7f402447ff2a67f1e009c32216ad052f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceDerivativeEnergy
import Mathlib.MeasureTheory.Function.L2Space

/-!
# Second spatial derivative energy of the literal source

Source: Batch 26, `signed-primitive-certificates.md`, section 1, at
`0dc367dd6a95a34dc8252edd8f7a4ee07c578b3c`. The first derivative energy is
reused from `SourceDerivativeEnergy`. The fourth bump derivative is used only
away from the two support endpoints; no global C⁴ bump hypothesis is added.

Human mathematical direction: grwtsk contributors. Formalization developed
with OpenAI Codex, using Mathlib and the existing source calculus.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.BranchSecondDerivativeEnergy

open MeasureTheory Set Filter
open scoped Topology
open SourcePairing GevreyPolynomial SourceDerivativeEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity BridgeNormalization

/-- Fourth derivative of the unit polynomial on the interior of its support. -/
def unitFourth (x : ℝ) : ℝ := 144 - 1440 * x ^ 2 + 1680 * x ^ 4

/-- Fourth interior derivative at the unchanged source scale. -/
def fourthInterior (A x : ℝ) : ℝ :=
  unitFourth (x / A) / (A ^ 4 * Real.sqrt A)

/-- Interior second derivative of the normalized, pole-annihilated source. -/
def normalizedSecondInterior (A x : ℝ) : ℝ :=
  (fourthInterior A x - secondInterior A x / 4) /
    Real.sqrt (sourceNormalization A)

/-- Closed-interval representative of the second derivative, equal almost everywhere. -/
def secondRepresentative (A : ℝ) : ℝ → ℝ :=
  (Icc (-A) A).indicator (normalizedSecondInterior A)

/-- Direct differentiation of the interior third polynomial. -/
theorem thirdInterior_hasDerivAt (A x : ℝ) :
    HasDerivAt (thirdInterior A) (fourthInterior A x) x := by
  have hy := (hasDerivAt_id x).div_const A
  have hd := (((hy.const_mul 144).sub ((hy.pow 3).const_mul 480)).add
    ((hy.pow 5).const_mul 336)).div_const (A ^ 3 * Real.sqrt A)
  convert hd using 1 <;> try rfl
  dsimp [fourthInterior, unitFourth]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

/-- The second interior derivative retains the literal normalization constant. -/
theorem normalizedInteriorDerivative_hasDerivAt (A x : ℝ) :
    HasDerivAt (normalizedInteriorDerivative A) (normalizedSecondInterior A x) x :=
  ((thirdInterior_hasDerivAt A x).sub
    ((firstInterior_hasDerivAt A x).div_const 4)).div_const _

/-- First differentiation is valid at every point, including both seams. -/
theorem actual_first_derivative_eq_indicator {A : ℝ} (hA : 0 < A) :
    deriv (normalizedTest explicitSecondDerivative A) =
      (Icc (-A) A).indicator (normalizedInteriorDerivative A) := by
  rw [normalizedTest_eq_indicator A hA]
  exact funext fun x ↦
    (indicator_hasDerivAt (normalizedInterior_hasDerivAt A)
      (normalizedInterior_frontier A hA) x).deriv

/-- Second differentiation agrees with the representative off the two seams. -/
theorem actual_second_derivative_eq_off_endpoints {A x : ℝ} (hA : 0 < A)
    (hleft : x ≠ -A) (hright : x ≠ A) :
    deriv (deriv (normalizedTest explicitSecondDerivative A)) x =
      secondRepresentative A x := by
  rw [actual_first_derivative_eq_indicator hA]
  have hx : x ∉ frontier (Icc (-A) A) := by
    rw [frontier_Icc (by linarith : -A ≤ A), mem_insert_iff, mem_singleton_iff]
    exact not_or.mpr ⟨hleft, hright⟩
  have hdich : x ∈ interior (Icc (-A) A) ∨ x ∈ interior (Icc (-A) A)ᶜ := by
    simpa only [← mem_compl_iff, compl_frontier_eq_union_interior, mem_union] using hx
  rcases hdich with hi | hi
  · have heq : (Icc (-A) A).indicator (normalizedInteriorDerivative A) =ᶠ[𝓝 x]
        normalizedInteriorDerivative A := by
      filter_upwards [isOpen_interior.mem_nhds hi] with y hy
      exact indicator_of_mem (interior_subset hy) _
    rw [(normalizedInteriorDerivative_hasDerivAt A x).congr_of_eventuallyEq heq |>.deriv]
    exact (indicator_of_mem (interior_subset hi) _).symm
  · have heq : (Icc (-A) A).indicator (normalizedInteriorDerivative A) =ᶠ[𝓝 x]
        fun _ ↦ 0 := by
      filter_upwards [isOpen_interior.mem_nhds hi] with y hy
      exact indicator_of_notMem (interior_subset hy) _
    rw [(hasDerivAt_const x (0 : ℝ)).congr_of_eventuallyEq heq |>.deriv]
    exact (indicator_of_notMem (interior_subset hi) _).symm

/-- The exceptional support endpoints have zero Lebesgue measure. -/
theorem actual_second_derivative_ae_eq {A : ℝ} (hA : 0 < A) :
    deriv (deriv (normalizedTest explicitSecondDerivative A)) =ᵐ[volume]
      secondRepresentative A := by
  filter_upwards [volume.ae_ne (-A), volume.ae_ne A] with x hleft hright
  exact actual_second_derivative_eq_off_endpoints hA hleft hright

/-- Direct polynomial integration gives the fourth interior derivative energy. -/
theorem unitFourth_square_integral :
    (∫ x : ℝ in (-1)..1, unitFourth x ^ 2) = (32768 : ℝ) := by
  have expand : (fun x : ℝ ↦ unitFourth x ^ 2) =
      fun x ↦ 20736 - 414720 * x ^ 2 + 2557440 * x ^ 4 -
        4838400 * x ^ 6 + 2822400 * x ^ 8 := by
    funext x
    dsimp [unitFourth]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
      intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num

/-- The mixed fourth/second integral has the negative third derivative energy. -/
theorem unitFourth_mul_second_integral :
    (∫ x : ℝ in (-1)..1, unitFourth x * unitSecond x) = -(65536 / 77 : ℝ) := by
  have expand : (fun x : ℝ ↦ unitFourth x * unitSecond x) =
      fun x ↦ -1152 + 21888 * x ^ 2 - 134400 * x ^ 4 +
        301824 * x ^ 6 - 282240 * x ^ 8 + 94080 * x ^ 10 := by
    funext x
    dsimp [unitFourth, unitSecond]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
      intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num

/-- The second derivative numerator on the unit interval, before normalization. -/
theorem unit_second_energy (A : ℝ) :
    (∫ x : ℝ in (-1)..1, (unitFourth x / A ^ 4 - unitSecond x / (4 * A ^ 2)) ^ 2) =
      32768 / A ^ 8 + (32768 / 77 : ℝ) / A ^ 6 + (12288 / 5005 : ℝ) / A ^ 4 := by
  have expand : (fun x : ℝ ↦ (unitFourth x / A ^ 4 - unitSecond x / (4 * A ^ 2)) ^ 2) =
      fun x ↦ unitFourth x ^ 2 / A ^ 8 -
        (unitFourth x * unitSecond x) / (2 * A ^ 6) + unitSecond x ^ 2 / (16 * A ^ 4) := by
    funext x
    ring
  rw [expand]
  simp (disch := (
    apply Continuous.intervalIntegrable
    dsimp [unitFourth, unitSecond]
    fun_prop)) only [intervalIntegral.integral_add, intervalIntegral.integral_sub]
  simp only [intervalIntegral.integral_div, unitFourth_square_integral,
    unitFourth_mul_second_integral, unitSecond_square_integral]
  ring

/-- The second representative is a compact-interval polynomial, hence square integrable. -/
theorem secondRepresentative_square_integrable (A : ℝ) :
    Integrable (fun x ↦ secondRepresentative A x ^ 2) := by
  have heq : (fun x ↦ secondRepresentative A x ^ 2) =
      (Icc (-A) A).indicator (fun x ↦ normalizedSecondInterior A x ^ 2) := by
    funext x
    simp only [secondRepresentative, indicator_apply]
    split_ifs <;> simp
  rw [heq]
  apply integrable_zeroExtension
  dsimp [normalizedSecondInterior, fourthInterior, unitFourth, secondInterior]
  fun_prop

/-- Square integrability of the actual ordinary second derivative follows by ae transport. -/
theorem actual_second_derivative_square_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (fun x ↦ deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2) := by
  apply (secondRepresentative_square_integrable A).congr
  filter_upwards [actual_second_derivative_ae_eq hA] with x hx
  rw [hx]

/-- Squaring the literal interior leaves exactly the original scale and normalization factors. -/
theorem normalizedSecondInterior_square {A : ℝ} (hA : 0 < A) (x : ℝ) :
    normalizedSecondInterior A x ^ 2 =
      (unitFourth (x / A) / A ^ 4 - unitSecond (x / A) / (4 * A ^ 2)) ^ 2 /
        A / sourceNormalization A := by
  have hz : 0 < sourceNormalization A := by
    unfold sourceNormalization
    positivity
  have factor : fourthInterior A x - secondInterior A x / 4 =
      (unitFourth (x / A) / A ^ 4 - unitSecond (x / A) / (4 * A ^ 2)) /
        Real.sqrt A := by
    dsimp [fourthInterior, secondInterior, unitSecond]
    ring
  rw [normalizedSecondInterior, factor, div_pow, div_pow,
    Real.sq_sqrt hA.le, Real.sq_sqrt hz.le]

/-- Exact full-line second derivative energy of the unchanged normalized source. -/
theorem actual_second_energy_integral {A : ℝ} (hA : 0 < A) :
    (∫ x : ℝ, deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2) =
      (32768 / A ^ 8 + (32768 / 77 : ℝ) / A ^ 6 + (12288 / 5005 : ℝ) / A ^ 4) /
        sourceNormalization A := by
  have heq : (fun x ↦ secondRepresentative A x ^ 2) =
      (Icc (-A) A).indicator (fun x ↦ normalizedSecondInterior A x ^ 2) := by
    funext x
    simp only [secondRepresentative, indicator_apply]
    split_ifs <;> simp
  have hae : (fun x ↦ deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2)
      =ᵐ[volume]
      fun x ↦ secondRepresentative A x ^ 2 := by
    filter_upwards [actual_second_derivative_ae_eq hA] with x hx
    rw [hx]
  rw [integral_congr_ae hae, heq, zeroExtension_integral _ (-A) A (by linarith)]
  simp_rw [normalizedSecondInterior_square hA]
  rw [intervalIntegral.integral_div, intervalIntegral.integral_div,
    intervalIntegral.integral_comp_div
      (fun x ↦ (unitFourth x / A ^ 4 - unitSecond x / (4 * A ^ 2)) ^ 2) hA.ne']
  simp only [neg_div, div_self hA.ne', smul_eq_mul, unit_second_energy]
  rw [mul_div_cancel_left₀ _ hA.ne']

/-- The integer denominator after multiplying both source polynomials by the same
positive factor. -/
def denominator (s : ℝ) : ℝ := 7344 * s ^ 2 + 272 * s + 7

/-- The integer numerator for the dimensionless second derivative energy. -/
def numerator (s : ℝ) : ℝ := 6126120 * s ^ 2 + 79560 * s + 459

/-- Exact ratio constant attained by the literal source at A = 1. -/
def squaredCoefficient : ℝ := 689571 / 847

/-- The literal energy equals the claimed rational function at every positive real scale. -/
theorem actual_second_energy_eq {A : ℝ} (hA : 0 < A) :
    A ^ 4 * (∫ x : ℝ, deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2) =
      numerator ((A ^ 2)⁻¹) / denominator ((A ^ 2)⁻¹) := by
  rw [actual_second_energy_integral hA]
  unfold numerator denominator sourceNormalization
  field_simp
  ring

/-- The denominator is strictly positive on the entire nonnegative half-line. -/
theorem denominator_pos {s : ℝ} (hs : 0 ≤ s) : 0 < denominator s := by
  dsimp [denominator]
  positivity

/-- Exact factorization of the sharp coefficient gap, with no interval estimate hidden in it. -/
theorem exact_coefficient_gap (s : ℝ) :
    squaredCoefficient * denominator s - numerator s =
      (1 - s) * (124614216 * s + 4438224) / 847 := by
  dsimp [squaredCoefficient, denominator, numerator]
  ring

/-- The exact rational function is bounded by its endpoint value on [0, 1]. -/
theorem exact_ratio_upper_bound {s : ℝ} (hs0 : 0 ≤ s) (hs1 : s ≤ 1) :
    numerator s / denominator s ≤ squaredCoefficient := by
  apply (div_le_iff₀ (denominator_pos hs0)).2
  have hg : 0 ≤ (1 - s) * (124614216 * s + 4438224) / 847 := by
    apply div_nonneg
    · exact mul_nonneg (sub_nonneg.mpr hs1) (by positivity)
    · norm_num
  rw [← exact_coefficient_gap] at hg
  linarith

/-- Sharp bound for the actual source, with its full support and every real A ≥ 1. -/
theorem actual_second_energy_upper {A : ℝ} (hA : 1 ≤ A) :
    A ^ 4 * (∫ x : ℝ, deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2) ≤
      squaredCoefficient := by
  rw [actual_second_energy_eq (lt_of_lt_of_le (by norm_num) hA)]
  exact exact_ratio_upper_bound (by positivity)
    (inv_le_one_of_one_le₀ (by nlinarith))

/-- The simpler coefficient 815 strictly exceeds the exact source coefficient. -/
theorem squaredCoefficient_lt_815 : squaredCoefficient < 815 := by
  norm_num [squaredCoefficient]

/-- In particular, the literal squared second derivative energy is below 29². -/
theorem actual_second_energy_lt_twenty_nine_sq {A : ℝ} (hA : 1 ≤ A) :
    A ^ 4 * (∫ x : ℝ, deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2) <
      (29 : ℝ) ^ 2 := by
  exact lt_of_le_of_lt (actual_second_energy_upper hA) (by norm_num [squaredCoefficient])

/-- The previously checked first derivative bound has the sharper integer upper bound 22. -/
theorem actual_first_energy_lt_twenty_two {A : ℝ} (hA : 1 ≤ A) :
    A ^ 2 * (∫ x : ℝ, deriv (normalizedTest explicitSecondDerivative A) x ^ 2) < 22 := by
  exact lt_of_le_of_lt (actual_derivative_energy_upper hA) (by norm_num)

/-- Exact comparison needed for the stated third correlation derivative price. -/
theorem first_second_coefficient_gap :
    (132 : ℝ) ^ 2 - (162826 / 7623 : ℝ) * squaredCoefficient = 24569122 / 717409 := by
  norm_num [squaredCoefficient]

/-- The sharp coefficient is attained at the endpoint scale, rather than merely a loose bound. -/
theorem actual_second_energy_unit :
    (∫ x : ℝ, deriv (deriv (normalizedTest explicitSecondDerivative 1)) x ^ 2) =
      squaredCoefficient := by
  have h := actual_second_energy_eq (A := 1) (by norm_num)
  norm_num [numerator, denominator, squaredCoefficient] at h ⊢
  exact h

/-- The complete cross difference proves strict increase of the rational energy function. -/
theorem ratio_cross_difference (s t : ℝ) :
    numerator t * denominator s - numerator s * denominator t =
      (t - s) * (1082016000 * t * s + 39511944 * (t + s) + 432072) := by
  dsimp [numerator, denominator]
  ring

/-- The dimensionless energy function is strictly increasing for nonnegative inverse scales. -/
theorem ratio_strictMonoOn : StrictMonoOn (fun s ↦ numerator s / denominator s) (Ici 0) := by
  intro s hs t ht hst
  apply (div_lt_div_iff₀ (denominator_pos hs) (denominator_pos ht)).2
  have hg : 0 < (t - s) *
      (1082016000 * t * s + 39511944 * (t + s) + 432072) := by
    apply mul_pos (sub_pos.mpr hst)
    have h0 : 0 ≤ t * s := mul_nonneg ht hs
    have h1 : 0 ≤ t + s := add_nonneg ht hs
    nlinarith
  rw [← ratio_cross_difference] at hg
  linarith

/-- The actual ordinary second derivative is an L² function, with no global C² source premise. -/
theorem actual_second_derivative_memLp {A : ℝ} (hA : 0 < A) :
    MemLp (deriv (deriv (normalizedTest explicitSecondDerivative A))) 2
      (volume : Measure ℝ) := by
  have hc : Continuous (normalizedSecondInterior A) := by
    change Continuous (fun x : ℝ ↦ normalizedSecondInterior A x)
    dsimp [normalizedSecondInterior, fourthInterior, unitFourth, secondInterior]
    fun_prop
  have hm : AEStronglyMeasurable (secondRepresentative A) (volume : Measure ℝ) :=
    hc.aestronglyMeasurable.indicator measurableSet_Icc
  have hp := (memLp_two_iff_integrable_sq hm).2 (secondRepresentative_square_integrable A)
  exact (memLp_congr_ae (actual_second_derivative_ae_eq hA)).2 hp

/-- The actual two derivative energies satisfy the exact price behind the coefficient 132. -/
theorem actual_first_second_energy_product_lt {A : ℝ} (hA : 1 ≤ A) :
    (A ^ 2 * (∫ x : ℝ, deriv (normalizedTest explicitSecondDerivative A) x ^ 2)) *
      (A ^ 4 * (∫ x : ℝ, deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2)) <
        (132 : ℝ) ^ 2 := by
  have hfirst := actual_derivative_energy_upper hA
  have hsecond := actual_second_energy_upper hA
  have hnonneg : 0 ≤ A ^ 4 *
      (∫ x : ℝ, deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2) := by
    apply mul_nonneg (by positivity)
    exact integral_nonneg (fun _ ↦ sq_nonneg _)
  have hu := mul_le_mul hfirst hsecond hnonneg (by norm_num : 0 ≤ (162826 / 7623 : ℝ))
  apply lt_of_le_of_lt hu
  norm_num [squaredCoefficient]

end FormalResearch.RiemannHypothesis.BranchSecondDerivativeEnergy
```
