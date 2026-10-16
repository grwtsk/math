/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.TestFunctions.PolynomialBumpSecondEnergy
import GRWTSK.Analysis.Convolution.AutocorrelationSecondDerivative
import Mathlib.Analysis.Calculus.ParametricIntegral
import Mathlib.Algebra.QuadraticDiscriminant
import Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun

/-!
# Higher derivatives of the literal source correlation

Source: Batch 26, `signed-primitive-certificates.md`, section 1, at
`0dc367dd6a95a34dc8252edd8f7a4ee07c578b3c`. Differentiation under the
integral uses a global Lipschitz bound on the first source derivative and
excludes the two seams only in an almost-everywhere statement.

Human mathematical direction: grwtsk contributors. Formalization developed
with OpenAI Codex, using Mathlib and the unchanged compact source.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.BranchCorrelationHigher

open MeasureTheory Set Filter Function
open scoped Topology Convolution
open SourcePairing SourceDerivativeEnergy SourceCorrelationCurvature
open BranchSecondDerivativeEnergy
open GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- The first source derivative is globally Lipschitz, including the two support seams. -/
theorem actual_first_derivative_lipschitz {A : ℝ} (hA : 0 < A) :
    ∃ K : NNReal, LipschitzWith K (deriv (normalizedTest explicitSecondDerivative A)) := by
  have hab : -A ≤ A := by linarith
  have hc : Continuous (normalizedSecondInterior A) := by
    change Continuous (fun x : ℝ ↦ normalizedSecondInterior A x)
    dsimp [normalizedSecondInterior, fourthInterior, unitFourth, secondInterior]
    fun_prop
  obtain ⟨B, hB⟩ := isCompact_Icc.exists_bound_of_continuousOn hc.continuousOn
  let K : NNReal := ⟨max B 0, le_max_right _ _⟩
  have hl : LipschitzOnWith K (normalizedInteriorDerivative A) (Icc (-A) A) := by
    apply (convex_Icc (-A) A).lipschitzOnWith_of_nnnorm_hasDerivWithin_le
      (fun x _ ↦ (normalizedInteriorDerivative_hasDerivAt A x).hasDerivWithinAt)
    intro x hx
    exact_mod_cast (hB x hx).trans (le_max_left B 0)
  have heq : deriv (normalizedTest explicitSecondDerivative A) =
      fun x ↦ normalizedInteriorDerivative A (projIcc (-A) A hab x) := by
    rw [actual_first_derivative_eq_indicator hA]
    funext x
    by_cases hx : x ∈ Icc (-A) A
    · rw [indicator_of_mem hx, projIcc_of_mem hab hx]
    · rw [indicator_of_notMem hx]
      have houtside : x < -A ∨ A < x := by simpa only [mem_Icc, not_and_or, not_le] using hx
      rcases houtside with hx | hx
      · rw [projIcc_of_le_left hab hx.le]
        exact (normalizedInterior_frontier A hA (-A)
          (by rw [frontier_Icc hab]; simp)).2.symm
      · rw [projIcc_of_right_le hab hx.le]
        exact (normalizedInterior_frontier A hA A
          (by rw [frontier_Icc hab]; simp)).2.symm
  refine ⟨K, ?_⟩
  rw [heq]
  apply LipschitzWith.of_dist_le_mul
  intro x y
  have hp : dist (projIcc (-A) A hab x : ℝ) (projIcc (-A) A hab y : ℝ) ≤ dist x y := by
    simpa only [NNReal.coe_one, one_mul, Subtype.dist_eq] using
      (LipschitzWith.projIcc hab).dist_le_mul x y
  exact (hl.dist_le_mul _ (projIcc (-A) A hab x).property
    _ (projIcc (-A) A hab y).property).trans
      (mul_le_mul_of_nonneg_left hp K.coe_nonneg)

/-- At every point off the seams, the representative is the actual derivative of q'. -/
theorem actual_first_derivative_hasDerivAt_off_endpoints {A x : ℝ} (hA : 0 < A)
    (hleft : x ≠ -A) (hright : x ≠ A) :
    HasDerivAt (deriv (normalizedTest explicitSecondDerivative A))
      (secondRepresentative A x) x := by
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
    rw [secondRepresentative, indicator_of_mem (interior_subset hi)]
    exact (normalizedInteriorDerivative_hasDerivAt A x).congr_of_eventuallyEq heq
  · have heq : (Icc (-A) A).indicator (normalizedInteriorDerivative A) =ᶠ[𝓝 x]
        fun _ ↦ 0 := by
      filter_upwards [isOpen_interior.mem_nhds hi] with y hy
      exact indicator_of_notMem (interior_subset hy) _
    rw [secondRepresentative, indicator_of_notMem (interior_subset hi)]
    exact (hasDerivAt_const x (0 : ℝ)).congr_of_eventuallyEq heq

/-- The piecewise second derivative is measurable and integrable on the full line. -/
theorem secondRepresentative_integrable (A : ℝ) : Integrable (secondRepresentative A) := by
  change Integrable ((Icc (-A) A).indicator (normalizedSecondInterior A))
  apply integrable_zeroExtension
  change Continuous (fun x : ℝ ↦ normalizedSecondInterior A x)
  dsimp [normalizedSecondInterior, fourthInterior, unitFourth, secondInterior]
  fun_prop

/-- A translated first derivative can be differentiated under any integrable weight. -/
theorem translated_first_derivative_integral_hasDerivAt {A : ℝ} (hA : 0 < A)
    {g : ℝ → ℝ} (hg : Integrable g) (t : ℝ)
    (hint : Integrable (fun x ↦ deriv (normalizedTest explicitSecondDerivative A) (x + t) *
      g x)) :
    Integrable (fun x ↦ secondRepresentative A (x + t) * g x) ∧
      HasDerivAt (fun s ↦ ∫ x : ℝ,
        deriv (normalizedTest explicitSecondDerivative A) (x + s) * g x)
        (∫ x : ℝ, secondRepresentative A (x + t) * g x) t := by
  obtain ⟨K, hK⟩ := actual_first_derivative_lipschitz hA
  have hd := (normalizedTest_contDiff A hA).continuous_deriv_one
  have hm : AEStronglyMeasurable (fun x ↦ secondRepresentative A (x + t)) volume := by
    have hc : Continuous (normalizedSecondInterior A) := by
      change Continuous (fun x : ℝ ↦ normalizedSecondInterior A x)
      dsimp [normalizedSecondInterior, fourthInterior, unitFourth, secondInterior]
      fun_prop
    exact ((hc.stronglyMeasurable.indicator measurableSet_Icc).comp_measurable
      (measurable_id.add_const t)).aestronglyMeasurable
  apply hasDerivAt_integral_of_dominated_loc_of_lip (s := univ)
    (F := fun s x ↦ deriv (normalizedTest explicitSecondDerivative A) (x + s) * g x)
    (x₀ := t)
    (bound := fun x ↦ (K : ℝ) * |g x|) (by simp)
    (Eventually.of_forall fun s ↦
      ((hd.comp (continuous_id.add continuous_const)).aestronglyMeasurable.mul
        hg.aestronglyMeasurable)) hint (hm.mul hg.aestronglyMeasurable)
  · filter_upwards [] with x
    apply LipschitzOnWith.of_dist_le_mul
    intro s _ u _
    simp only [Real.dist_eq, ← sub_mul, abs_mul]
    have hk := hK.dist_le_mul (x + s) (x + u)
    simp only [Real.dist_eq, add_sub_add_left_eq_sub] at hk
    simpa only [Real.coe_nnabs, abs_mul, abs_of_nonneg K.coe_nonneg, abs_abs,
      mul_assoc, mul_comm, mul_left_comm] using mul_le_mul_of_nonneg_right hk (abs_nonneg (g x))
  · exact hg.abs.const_mul (K : ℝ)
  · filter_upwards [volume.ae_ne (-A - t), volume.ae_ne (A - t)] with x hl hr
    have hp := actual_first_derivative_hasDerivAt_off_endpoints hA
      (x := x + t) (by intro h; apply hl; linarith) (by intro h; apply hr; linarith)
    have hs := hp.comp t ((hasDerivAt_id t).const_add x)
    convert! hs.mul_const (g x) using 1
    simp only [mul_one, Pi.mul_apply]

private theorem translated_product_integral (f g : ℝ → ℝ) (t : ℝ) :
    (∫ x : ℝ, f (x + t) * g x) = ∫ x : ℝ, f x * g (x - t) := by
  have h := integral_sub_right_eq_self (μ := volume) (fun x : ℝ ↦ f (x + t) * g x) t
  simpa only [sub_add_cancel] using h.symm

/-- The third correlation derivative has the signed q''/q' formula on the whole line. -/
theorem sourceCorrelation_third_deriv_eq_integral {A : ℝ} (hA : 0 < A) (t : ℝ) :
    deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t =
      -(∫ x : ℝ, secondRepresentative A x *
        deriv (normalizedTest explicitSecondDerivative A) (x - t)) := by
  let f := deriv (normalizedTest explicitSecondDerivative A)
  have hc := (normalizedTest_contDiff A hA).continuous_deriv_one
  have hi : Integrable (fun x ↦ f (x + t) * f x) :=
    ((hc.comp (continuous_id.add continuous_const)).mul hc).integrable_of_hasCompactSupport
      (normalizedTest_hasCompactSupport A hA).deriv.mul_left
  have hd := (translated_first_derivative_integral_hasDerivAt hA
    (normalizedTest_deriv_integrable hA) t hi).2.neg
  have he : deriv (deriv (sourceCorrelation explicitSecondDerivative A)) =
      fun s ↦ -(∫ x : ℝ, f (x + s) * f x) := by
    funext s
    rw [sourceCorrelation_second_deriv_eq_integral hA, translated_product_integral]
  rw [he]
  change deriv (-(fun s ↦ ∫ x : ℝ, f (x + s) * f x)) t = _
  rw [hd.deriv, translated_product_integral]

/-- The third derivative integrand is integrable for every shift, with no seam hypothesis. -/
theorem sourceCorrelation_third_deriv_integrand_integrable {A : ℝ} (hA : 0 < A) (t : ℝ) :
    Integrable (fun x : ℝ ↦ secondRepresentative A x *
      deriv (normalizedTest explicitSecondDerivative A) (x - t)) := by
  have hc := (normalizedTest_contDiff A hA).continuous_deriv_one
  have he : (fun x : ℝ ↦ secondRepresentative A x *
      deriv (normalizedTest explicitSecondDerivative A) (x - t)) =
      (Icc (-A) A).indicator (fun x ↦ normalizedSecondInterior A x *
        deriv (normalizedTest explicitSecondDerivative A) (x - t)) := by
    funext x
    simp only [secondRepresentative, indicator_apply]
    split_ifs <;> simp
  rw [he]
  apply integrable_zeroExtension
  have hp : Continuous (normalizedSecondInterior A) := by
    change Continuous (fun x : ℝ ↦ normalizedSecondInterior A x)
    dsimp [normalizedSecondInterior, fourthInterior, unitFourth, secondInterior]
    fun_prop
  exact hp.mul (hc.comp (continuous_id.sub continuous_const))

/-- The third derivative is continuous because its other convolution factor is continuous. -/
theorem sourceCorrelation_third_deriv_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))) := by
  have he : deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) =
      fun t ↦ -((secondRepresentative A ⋆
        fun x ↦ deriv (normalizedTest explicitSecondDerivative A) (-x)) t) := by
    funext t
    rw [sourceCorrelation_third_deriv_eq_integral hA]
    simp only [convolution, ContinuousLinearMap.lsmul_apply, smul_eq_mul, neg_sub]
  rw [he]
  have hs := (normalizedTest_hasCompactSupport A hA).deriv.comp_homeomorph
    (Homeomorph.neg ℝ)
  exact (hs.continuous_convolution_right (ContinuousLinearMap.lsmul ℝ ℝ)
    (secondRepresentative_integrable A).locallyIntegrable
    ((normalizedTest_contDiff A hA).continuous_deriv_one.comp continuous_neg)).neg

/-- The actual correlation is globally C³ across its origin and both support boundaries. -/
theorem sourceCorrelation_contDiff_three {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 3 (sourceCorrelation explicitSecondDerivative A) := by
  have hc2 := sourceCorrelation_contDiff_two hA
  have hd : Differentiable ℝ (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) := by
    intro t
    let f := deriv (normalizedTest explicitSecondDerivative A)
    have hc := (normalizedTest_contDiff A hA).continuous_deriv_one
    have hi : Integrable (fun x ↦ f (x + t) * f x) :=
      ((hc.comp (continuous_id.add continuous_const)).mul hc).integrable_of_hasCompactSupport
        (normalizedTest_hasCompactSupport A hA).deriv.mul_left
    have h := (translated_first_derivative_integral_hasDerivAt hA
      (normalizedTest_deriv_integrable hA) t hi).2.neg
    have he : deriv (deriv (sourceCorrelation explicitSecondDerivative A)) =
        fun s ↦ -(∫ x : ℝ, f (x + s) * f x) := by
      funext s
      rw [sourceCorrelation_second_deriv_eq_integral hA, translated_product_integral]
    rw [he]
    exact h.differentiableAt
  have hc1 : ContDiff ℝ 1 (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) := by
    rw [contDiff_one_iff_deriv]
    exact ⟨hd, sourceCorrelation_third_deriv_continuous hA⟩
  have hc2d : ContDiff ℝ 2 (deriv (sourceCorrelation explicitSecondDerivative A)) := by
    rw [show (2 : WithTop ℕ∞) = 1 + 1 from rfl, contDiff_succ_iff_deriv]
    exact ⟨hc2.deriv'.differentiable_one, by norm_num, hc1⟩
  rw [show (3 : WithTop ℕ∞) = 2 + 1 from rfl, contDiff_succ_iff_deriv]
  exact ⟨hc2.differentiable (by norm_num), by norm_num, hc2d⟩

private theorem integral_mul_square_le {f g : ℝ → ℝ}
    (hf : Integrable (fun x ↦ f x ^ 2)) (hg : Integrable (fun x ↦ g x ^ 2))
    (hm : Integrable (fun x ↦ f x * g x)) :
    (∫ x : ℝ, f x * g x) ^ 2 ≤ (∫ x : ℝ, f x ^ 2) * (∫ x : ℝ, g x ^ 2) := by
  have hquad (c : ℝ) : 0 ≤ (∫ x : ℝ, g x ^ 2) * (c * c) +
      (-2 * (∫ x : ℝ, f x * g x)) * c + (∫ x : ℝ, f x ^ 2) := by
    have hn : 0 ≤ ∫ x : ℝ, (f x - c * g x) ^ 2 := integral_nonneg (fun x ↦ sq_nonneg _)
    have he : (fun x ↦ (f x - c * g x) ^ 2) =
        fun x ↦ f x ^ 2 - (2 * c) * (f x * g x) + c ^ 2 * g x ^ 2 := by
      funext x
      ring
    rw [he, integral_add
      (f := fun x : ℝ ↦ f x ^ 2 - (2 * c) * (f x * g x))
      (g := fun x : ℝ ↦ c ^ 2 * g x ^ 2)
      (hf.sub (hm.const_mul _)) (hg.const_mul _),
      integral_sub (f := fun x : ℝ ↦ f x ^ 2)
        (g := fun x : ℝ ↦ (2 * c) * (f x * g x)) hf (hm.const_mul _),
      integral_const_mul, integral_const_mul] at hn
    nlinarith
  have h := discrim_le_zero hquad
  dsimp [discrim] at h
  nlinarith

/-- Cauchy–Schwarz retains the actual first and second source energies. -/
theorem sourceCorrelation_third_deriv_square_le_energy_product {A : ℝ} (hA : 0 < A) (t : ℝ) :
    (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t) ^ 2 ≤
      (∫ x : ℝ, deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2) *
        (∫ x : ℝ, deriv (normalizedTest explicitSecondDerivative A) x ^ 2) := by
  rw [sourceCorrelation_third_deriv_eq_integral hA, neg_sq]
  have he : (∫ x : ℝ, secondRepresentative A x ^ 2) =
      ∫ x : ℝ, deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2 := by
    apply integral_congr_ae
    filter_upwards [actual_second_derivative_ae_eq hA] with x hx
    rw [hx]
  have h := integral_mul_square_le (secondRepresentative_square_integrable A)
    ((actual_derivative_square_integrable hA).comp_sub_right t)
    (sourceCorrelation_third_deriv_integrand_integrable hA t)
  rw [he, integral_sub_right_eq_self
    (fun x : ℝ ↦ deriv (normalizedTest explicitSecondDerivative A) x ^ 2) t] at h
  exact h

/-- The literal third correlation derivative has the note's uniform coefficient 132. -/
theorem sourceCorrelation_third_deriv_abs_le {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    |deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t| ≤ 132 / A ^ 3 := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hs := sourceCorrelation_third_deriv_square_le_energy_product hp t
  have hb := actual_first_second_energy_product_lt hA
  have hscaled := mul_le_mul_of_nonneg_left hs (show 0 ≤ A ^ 6 by positivity)
  have hprice : A ^ 6 *
      ((∫ x : ℝ, deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2) *
        (∫ x : ℝ, deriv (normalizedTest explicitSecondDerivative A) x ^ 2)) < 132 ^ 2 := by
    convert hb using 1
    ring
  apply abs_le_of_sq_le_sq ?_ (by positivity)
  rw [div_pow, ← pow_mul]
  apply (le_div_iff₀ (show 0 < A ^ (3 * 2) by positivity)).2
  norm_num only at ⊢
  nlinarith [hscaled.trans_lt hprice]

/-- Fourth differentiation pairs the two piecewise second derivatives with a positive sign. -/
theorem sourceCorrelation_third_deriv_hasDerivAt_integral {A : ℝ} (hA : 0 < A) (t : ℝ) :
    Integrable (fun x : ℝ ↦ secondRepresentative A x * secondRepresentative A (x - t)) ∧
      HasDerivAt (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))))
        (∫ x : ℝ, secondRepresentative A x * secondRepresentative A (x - t)) t := by
  have hi : Integrable (fun x : ℝ ↦
      deriv (normalizedTest explicitSecondDerivative A) (x + -t) * secondRepresentative A x) := by
    simpa only [← sub_eq_add_neg, mul_comm] using
      sourceCorrelation_third_deriv_integrand_integrable hA t
  obtain ⟨hint, hd⟩ := translated_first_derivative_integral_hasDerivAt hA
    (secondRepresentative_integrable A) (-t) hi
  have he : deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) =
      fun s ↦ -(∫ x : ℝ,
        deriv (normalizedTest explicitSecondDerivative A) (x + -s) * secondRepresentative A x) := by
    funext s
    rw [sourceCorrelation_third_deriv_eq_integral hA]
    simp only [← sub_eq_add_neg, mul_comm]
  refine ⟨by simpa only [← sub_eq_add_neg, mul_comm] using hint, ?_⟩
  rw [he]
  have hc := (hd.comp t (hasDerivAt_neg t)).neg
  convert! hc using 1
  simp only [← sub_eq_add_neg, neg_mul, one_mul, neg_neg, mul_comm]

/-- The fourth ordinary derivative is the actual second-derivative autocorrelation. -/
theorem sourceCorrelation_fourth_deriv_eq_integral {A : ℝ} (hA : 0 < A) (t : ℝ) :
    deriv (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))) t =
      ∫ x : ℝ, secondRepresentative A x * secondRepresentative A (x - t) :=
  (sourceCorrelation_third_deriv_hasDerivAt_integral hA t).2.deriv

/-- The second derivative representative is bounded, including its assigned endpoint values. -/
theorem secondRepresentative_bounded (A : ℝ) :
    ∃ B : ℝ, 0 ≤ B ∧ ∀ x : ℝ, |secondRepresentative A x| ≤ B := by
  have hc : Continuous (normalizedSecondInterior A) := by
    change Continuous (fun x : ℝ ↦ normalizedSecondInterior A x)
    dsimp [normalizedSecondInterior, fourthInterior, unitFourth, secondInterior]
    fun_prop
  obtain ⟨B, hB⟩ := isCompact_Icc.exists_bound_of_continuousOn hc.continuousOn
  refine ⟨max B 0, le_max_right _ _, ?_⟩
  intro x
  by_cases hx : x ∈ Icc (-A) A
  · rw [secondRepresentative, indicator_of_mem hx]
    exact (hB x hx).trans (le_max_left _ _)
  · rw [secondRepresentative, indicator_of_notMem hx, abs_zero]
    exact le_max_right _ _

/-- The second representative is continuous away from its two finite jump locations. -/
theorem secondRepresentative_continuousAt_off_endpoints {A x : ℝ} (hA : 0 < A)
    (hleft : x ≠ -A) (hright : x ≠ A) : ContinuousAt (secondRepresentative A) x := by
  have hc : Continuous (normalizedSecondInterior A) := by
    change Continuous (fun y : ℝ ↦ normalizedSecondInterior A y)
    dsimp [normalizedSecondInterior, fourthInterior, unitFourth, secondInterior]
    fun_prop
  have hx : x ∉ frontier (Icc (-A) A) := by
    rw [frontier_Icc (by linarith : -A ≤ A), mem_insert_iff, mem_singleton_iff]
    exact not_or.mpr ⟨hleft, hright⟩
  have hdich : x ∈ interior (Icc (-A) A) ∨ x ∈ interior (Icc (-A) A)ᶜ := by
    simpa only [← mem_compl_iff, compl_frontier_eq_union_interior, mem_union] using hx
  rcases hdich with hi | hi
  · have heq : secondRepresentative A =ᶠ[𝓝 x] normalizedSecondInterior A := by
      filter_upwards [isOpen_interior.mem_nhds hi] with y hy
      exact indicator_of_mem (interior_subset hy) _
    exact hc.continuousAt.congr heq.symm
  · have heq : secondRepresentative A =ᶠ[𝓝 x] fun _ ↦ 0 := by
      filter_upwards [isOpen_interior.mem_nhds hi] with y hy
      exact indicator_of_notMem (interior_subset hy) _
    exact continuousAt_const.congr heq.symm

/-- Dominated convergence gives continuity of the q'' autocorrelation at every moving seam. -/
theorem sourceCorrelation_fourth_deriv_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (deriv (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))))) := by
  have he : deriv (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))) =
      fun t ↦ ∫ x : ℝ, secondRepresentative A x * secondRepresentative A (x - t) :=
    funext (sourceCorrelation_fourth_deriv_eq_integral hA)
  rw [he, continuous_iff_continuousAt]
  intro t
  obtain ⟨B, _, hB⟩ := secondRepresentative_bounded A
  have hc : Continuous (normalizedSecondInterior A) := by
    change Continuous (fun x : ℝ ↦ normalizedSecondInterior A x)
    dsimp [normalizedSecondInterior, fourthInterior, unitFourth, secondInterior]
    fun_prop
  have hm : StronglyMeasurable (secondRepresentative A) :=
    hc.stronglyMeasurable.indicator measurableSet_Icc
  apply continuousAt_of_dominated (bound := fun x ↦ |secondRepresentative A x| * B)
  · exact Eventually.of_forall fun s ↦ hm.aestronglyMeasurable.mul
      ((hm.comp_measurable (measurable_id.sub_const s)).aestronglyMeasurable)
  · filter_upwards [] with s
    filter_upwards [] with x
    rw [Real.norm_eq_abs, abs_mul]
    exact mul_le_mul_of_nonneg_left (hB (x - s)) (abs_nonneg _)
  · exact (secondRepresentative_integrable A).abs.mul_const B
  · filter_upwards [volume.ae_ne (-A + t), volume.ae_ne (A + t)] with x hl hr
    have hp := secondRepresentative_continuousAt_off_endpoints hA (x := x - t)
      (by intro h; apply hl; linarith) (by intro h; apply hr; linarith)
    exact continuousAt_const.mul (hp.comp (by fun_prop))

/-- The unchanged source correlation is globally C⁴; no global C² source premise is used. -/
theorem sourceCorrelation_contDiff_four {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 4 (sourceCorrelation explicitSecondDerivative A) := by
  have hc3 := sourceCorrelation_contDiff_three hA
  have hcd2 : ContDiff ℝ 2 (deriv (sourceCorrelation explicitSecondDerivative A)) := hc3.deriv'
  have hc1 : ContDiff ℝ 1
      (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))) := by
    rw [contDiff_one_iff_deriv]
    exact ⟨fun t ↦ (sourceCorrelation_third_deriv_hasDerivAt_integral hA t).2.differentiableAt,
      sourceCorrelation_fourth_deriv_continuous hA⟩
  have hc2 : ContDiff ℝ 2 (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) := by
    rw [show (2 : WithTop ℕ∞) = 1 + 1 from rfl, contDiff_succ_iff_deriv]
    exact ⟨hcd2.deriv'.differentiable_one, by norm_num, hc1⟩
  have hc3d : ContDiff ℝ 3 (deriv (sourceCorrelation explicitSecondDerivative A)) := by
    rw [show (3 : WithTop ℕ∞) = 2 + 1 from rfl, contDiff_succ_iff_deriv]
    exact ⟨hcd2.differentiable (by norm_num), by norm_num, hc2⟩
  rw [show (4 : WithTop ℕ∞) = 3 + 1 from rfl, contDiff_succ_iff_deriv]
  exact ⟨hc3.differentiable (by norm_num), by norm_num, hc3d⟩

/-- The fourth derivative is bounded by the actual second spatial derivative energy. -/
theorem sourceCorrelation_fourth_deriv_abs_le_energy {A : ℝ} (hA : 0 < A) (t : ℝ) :
    |deriv (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))) t| ≤
      ∫ x : ℝ, deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2 := by
  rw [sourceCorrelation_fourth_deriv_eq_integral hA]
  let f := secondRepresentative A
  have hf := secondRepresentative_square_integrable A
  have hg := hf.comp_sub_right t
  have hm := (sourceCorrelation_third_deriv_hasDerivAt_integral hA t).1
  have he : (∫ x : ℝ, f x ^ 2) =
      ∫ x : ℝ, deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2 := by
    apply integral_congr_ae
    filter_upwards [actual_second_derivative_ae_eq hA] with x hx
    rw [hx]
  calc
    |∫ x : ℝ, f x * f (x - t)| ≤ ∫ x : ℝ, |f x * f (x - t)| :=
      abs_integral_le_integral_abs
    _ ≤ ∫ x : ℝ, (f x ^ 2 + f (x - t) ^ 2) / 2 := by
      apply integral_mono hm.abs ((hf.add hg).div_const 2)
      intro x
      change |f x * f (x - t)| ≤ (f x ^ 2 + f (x - t) ^ 2) / 2
      rw [abs_mul]
      nlinarith [sq_nonneg (|f x| - |f (x - t)|), sq_abs (f x), sq_abs (f (x - t))]
    _ = ∫ x : ℝ, f x ^ 2 := by
      rw [integral_div, integral_add hf hg,
        integral_sub_right_eq_self (fun x : ℝ ↦ f x ^ 2) t]
      ring
    _ = _ := he

/-- The actual fourth correlation derivative satisfies the stated coefficient 815. -/
theorem sourceCorrelation_fourth_deriv_abs_le {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    |deriv (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))) t| ≤
      815 / A ^ 4 := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  apply (sourceCorrelation_fourth_deriv_abs_le_energy hp t).trans
  apply (le_div_iff₀ (show 0 < A ^ 4 by positivity)).2
  have h := (actual_second_energy_upper hA).trans squaredCoefficient_lt_815.le
  nlinarith

/-- The first source derivative is absolutely continuous on every compact interval. -/
theorem actual_first_derivative_absolutelyContinuous {A : ℝ} (hA : 0 < A) (a b : ℝ) :
    AbsolutelyContinuousOnInterval (deriv (normalizedTest explicitSecondDerivative A)) a b := by
  obtain ⟨K, hK⟩ := actual_first_derivative_lipschitz hA
  exact hK.lipschitzOnWith.absolutelyContinuousOnInterval

/-- The second representative is the genuine weak derivative, with no endpoint atom in FTC. -/
theorem secondRepresentative_integral_eq_sub {A : ℝ} (hA : 0 < A) (a b : ℝ) :
    (∫ x in a..b, secondRepresentative A x) =
      deriv (normalizedTest explicitSecondDerivative A) b -
        deriv (normalizedTest explicitSecondDerivative A) a := by
  rw [← (actual_first_derivative_absolutelyContinuous hA a b).integral_deriv_eq_sub]
  apply intervalIntegral.integral_congr_ae
  filter_upwards [actual_second_derivative_ae_eq hA] with x hx _
  exact hx.symm

/-- Integration by parts identifies the weak second derivative against every C¹ test function. -/
theorem secondRepresentative_integration_by_parts {A : ℝ} (hA : 0 < A)
    {φ : ℝ → ℝ} (hφ : ContDiff ℝ 1 φ) (a b : ℝ) :
    (∫ x in a..b, deriv (normalizedTest explicitSecondDerivative A) x * deriv φ x) =
      deriv (normalizedTest explicitSecondDerivative A) b * φ b -
        deriv (normalizedTest explicitSecondDerivative A) a * φ a -
          ∫ x in a..b, secondRepresentative A x * φ x := by
  have hac := actual_first_derivative_absolutelyContinuous hA a b
  have h := hac.integral_mul_deriv_eq_deriv_mul
    (ContDiffOn.absolutelyContinuousOnInterval hφ.contDiffOn)
  have he : (∫ x in a..b, deriv (deriv (normalizedTest explicitSecondDerivative A)) x * φ x) =
      ∫ x in a..b, secondRepresentative A x * φ x := by
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actual_second_derivative_ae_eq hA] with x hx _
    rw [hx]
  rw [he] at h
  exact h

end GRWTSK.RiemannHypothesis.BranchCorrelationHigher
