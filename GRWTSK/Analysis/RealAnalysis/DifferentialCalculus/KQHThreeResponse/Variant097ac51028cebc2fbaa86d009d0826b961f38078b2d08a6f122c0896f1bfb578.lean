import FormalResearch.RiemannHypothesis.KQHSourceCompression
import FormalResearch.RiemannHypothesis.SourcePeanoProfileTransport
import Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas

/-!
# The complete three-response numerator of the actual signed source

Closed-interval unique differentiation transports the actual primitive
correlation to the fourth polynomial derivative at both support endpoints.
The existing primitive filter already retains the two mixed integral signs and
their integrability. The finite arithmetic adapter keeps every prime power and
the literal closed inventory. No uniform arithmetic bound is assumed or proved.

Research direction, selection, corrections and evaluation: grwtsk contributors.
Derivation and formal construction: OpenAI Codex / ChatGPT.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.KQHThreeResponse

open Set MeasureTheory
open SourcePairing SourceBumpAutocorrelation SourcePrimitiveBumpProfile
open SourcePrimitivePrimeInteraction SourcePrimitiveCorrelationCurvature
open SourcePositivePeanoPrimitive SourcePeanoProfileTransport SourceMangoldtAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent EstimatePrimeSmoothDefect EstimateMertensResidual

private theorem deriv_eq_on_closed {f g : ℝ → ℝ} {a b : ℝ} (hab : a < b)
    (hf : Differentiable ℝ f) (hg : Differentiable ℝ g) (he : EqOn f g (Icc a b)) :
    EqOn (deriv f) (deriv g) (Icc a b) := by
  intro x hx
  have hu := uniqueDiffOn_Icc hab x hx
  rw [← (hf x).hasDerivAt.hasDerivWithinAt.derivWithin hu,
    ← (hg x).hasDerivAt.hasDerivWithinAt.derivWithin hu]
  exact derivWithin_congr he (he hx)

private theorem iteratedDeriv_two_eq (f : ℝ → ℝ) :
    iteratedDeriv 2 f = deriv (deriv f) := by
  simp only [iteratedDeriv_succ, iteratedDeriv_zero]

private theorem iteratedDeriv_four_eq (f : ℝ → ℝ) :
    iteratedDeriv 4 f = deriv (deriv (deriv (deriv f))) := by
  simp only [iteratedDeriv_succ, iteratedDeriv_zero]

/-- The independently defined normalized polynomial has the exact fourth-scale factor. -/
theorem normalizedOverlapProfile_fourth_deriv (A t : ℝ) :
    iteratedDeriv 4 (normalizedOverlapProfile A) t =
      iteratedDeriv 4 overlapProfile (t / A) / A ^ 4 / sourceNormalization A := by
  have hH : ContDiff ℝ 4 overlapProfile := by
    unfold overlapProfile overlapP0
    fun_prop
  have he : (fun s : ℝ => overlapProfile (s / A)) =
      (fun s : ℝ => overlapProfile (A⁻¹ * s)) := by
    funext s
    congr 1
    simp only [div_eq_mul_inv, mul_comm]
  change iteratedDeriv 4
    (fun s : ℝ => overlapProfile (s / A) / sourceNormalization A) t = _
  rw [iteratedDeriv_div_const, he, iteratedDeriv_comp_const_mul hH (A⁻¹)]
  rw [show A⁻¹ * t = t / A by simp only [div_eq_mul_inv, mul_comm]]
  simp only [inv_pow, div_eq_mul_inv]
  ring

/-- Two further unique differentiations retain zero and the touching endpoint 2A. -/
theorem primitiveCorrelationZero_fourth_deriv_eq_normalizedOverlapProfile
    {A : ℝ} (hA : 0 < A) :
    EqOn (iteratedDeriv 4 (primitiveCorrelationZero A))
      (iteratedDeriv 4 (normalizedOverlapProfile A)) (Icc 0 (2 * A)) := by
  have hF : ContDiff ℝ 4 (primitiveCorrelationZero A) :=
    primitiveCorrelationZero_contDiff_four hA
  have hF2 : ContDiff ℝ 2 (deriv (deriv (primitiveCorrelationZero A))) :=
    hF.deriv'.deriv'
  have hF3 : ContDiff ℝ 1 (deriv (deriv (deriv (primitiveCorrelationZero A)))) :=
    hF2.deriv'
  have hG : ContDiff ℝ 4 (normalizedOverlapProfile A) := by
    unfold normalizedOverlapProfile overlapProfile overlapP0
    fun_prop
  have hG2 : ContDiff ℝ 2 (deriv (deriv (normalizedOverlapProfile A))) :=
    hG.deriv'.deriv'
  have hG3 : ContDiff ℝ 1 (deriv (deriv (deriv (normalizedOverlapProfile A)))) :=
    hG2.deriv'
  have he3 : EqOn (deriv (deriv (deriv (primitiveCorrelationZero A))))
      (deriv (deriv (deriv (normalizedOverlapProfile A)))) (Icc 0 (2 * A)) := by
    apply deriv_eq_on_closed (by linarith)
    · exact hF2.differentiable (by norm_num)
    · exact hG2.differentiable (by norm_num)
    · exact primitiveCorrelationZero_second_deriv_eq_normalizedOverlapProfile hA
  rw [iteratedDeriv_four_eq, iteratedDeriv_four_eq]
  apply deriv_eq_on_closed (by linarith)
  · exact hF3.differentiable (by norm_num)
  · exact hG3.differentiable (by norm_num)
  · exact he3

/-- Exact fourth polynomial profile on the complete closed physical half-support. -/
theorem primitiveCorrelationZero_fourth_deriv_eq_profile {A t : ℝ} (hA : 0 < A)
    (ht0 : 0 ≤ t) (ht2 : t ≤ 2 * A) :
    iteratedDeriv 4 (primitiveCorrelationZero A) t =
      iteratedDeriv 4 overlapProfile (t / A) / A ^ 4 / sourceNormalization A := by
  rw [primitiveCorrelationZero_fourth_deriv_eq_normalizedOverlapProfile hA ⟨ht0, ht2⟩,
    normalizedOverlapProfile_fourth_deriv]

/-- The first derivative correlation carries the negative second-profile sign. -/
theorem primitiveCorrelationOne_eq_profile {A t : ℝ} (hA : 0 < A)
    (ht0 : 0 ≤ t) (ht2 : t ≤ 2 * A) :
    primitiveCorrelationOne A t =
      -iteratedDeriv 2 overlapProfile (t / A) / A ^ 2 / sourceNormalization A := by
  have he := primitiveCorrelationZero_second_deriv_eq_neg_one hA t
  rw [primitiveCorrelationZero_second_deriv_eq_profile hA ht0 ht2] at he
  rw [iteratedDeriv_two_eq]
  linarith

/-- Two signed curvature identities identify the actual second-derivative correlation. -/
theorem primitiveCorrelationTwo_eq_profile {A t : ℝ} (hA : 0 < A)
    (ht0 : 0 ≤ t) (ht2 : t ≤ 2 * A) :
    primitiveCorrelationTwo A t =
      iteratedDeriv 4 overlapProfile (t / A) / A ^ 4 / sourceNormalization A := by
  rw [← primitiveCorrelationZero_fourth_deriv hA t,
    ← iteratedDeriv_four_eq, primitiveCorrelationZero_fourth_deriv_eq_profile hA ht0 ht2]

/-- The literal source has the joint three-profile numerator, with no discarded mixed term. -/
theorem sourceCorrelation_eq_threeProfile {A t : ℝ} (hA : 0 < A)
    (ht0 : 0 ≤ t) (ht2 : t ≤ 2 * A) :
    sourceCorrelation explicitSecondDerivative A t =
      (iteratedDeriv 4 overlapProfile (t / A) / A ^ 4 -
        iteratedDeriv 2 overlapProfile (t / A) / (2 * A ^ 2) +
        overlapProfile (t / A) / 16) / sourceNormalization A := by
  rw [sourceCorrelation_eq_primitive_filter hA,
    primitiveCorrelationTwo_eq_profile hA ht0 ht2,
    primitiveCorrelationOne_eq_profile hA ht0 ht2,
    primitiveCorrelationZero_eq_profile hA ht0 ht2]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

/-- Complete closed Mangoldt responses, including higher prime powers. -/
def response (j : ℕ) (A : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A),
    ArithmeticFunction.vonMangoldt n * Real.exp (-Real.log n / 2) *
      iteratedDeriv j overlapProfile (Real.log n / A)

/-- The native exponential coefficients equal issue 432's literal inverse-square-root weights. -/
theorem response_eq_inverse_sqrt (j : ℕ) (A : ℝ) :
    response j A = ∑ n ∈ primePowerInventory (2 * A),
      ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
        iteratedDeriv j overlapProfile (Real.log n / A) := by
  unfold response
  apply Finset.sum_congr rfl
  intro n hn
  have hn' := Finset.mem_Icc.mp hn
  have hn0 : (0 : ℝ) < n := by
    exact_mod_cast (by omega : 0 < n)
  rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hn0]
  ring

def T0 (A : ℝ) : ℝ := response 0 A
def T2 (A : ℝ) : ℝ := response 2 A
def T4 (A : ℝ) : ℝ := response 4 A

/-- The unchanged joint numerator from issue 432, with s=A^-2. -/
def threeResponseNumerator (A : ℝ) : ℝ :=
  (1 / A ^ 2) ^ 2 * T4 A - ((1 / A ^ 2) / 2) * T2 A + T0 A / 16

/-- Every summand lies in the certified closed profile interval. -/
theorem closedPrimeMoment_eq_threeResponse (A : ℝ) (hA : 0 < A) :
    closedPrimeMoment A = threeResponseNumerator A / sourceNormalization A := by
  have hA0 : A ≠ 0 := ne_of_gt hA
  have hZ0 : sourceNormalization A ≠ 0 := by
    unfold sourceNormalization
    positivity
  unfold closedPrimeMoment threeResponseNumerator T0 T2 T4 response exponentialTest
  rw [Finset.mul_sum, Finset.mul_sum, Finset.sum_div,
    ← Finset.sum_sub_distrib, ← Finset.sum_add_distrib, Finset.sum_div]
  apply Finset.sum_congr rfl
  intro n hn
  have hb := mangoldtInventory_log_bounds (2 * A) n hn
  rw [sourceCorrelation_eq_threeProfile hA hb.1 hb.2]
  simp only [iteratedDeriv_zero]
  field_simp [hA0, hZ0]
  ring

/-- The actual residual has the exact complete three-response coordinates at every real A≥1. -/
theorem mertensResidual_eq_threeResponse (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = threeResponseNumerator A / sourceNormalization A := by
  rw [mertensResidual_eq_closedPrimeMoment A hA]
  exact closedPrimeMoment_eq_threeResponse A (by linarith)

/-- The actual unexpanded physical profile form equals issue 432's joint numerator. -/
theorem compression_source_eq_threeResponse (A : ℝ) (hA : 1 ≤ A) :
    KQHSourceCompression.compression A (-1 / 4) (1 / A ^ 2) =
      threeResponseNumerator A := by
  apply (div_left_inj' (ne_of_gt (source_normalization_pos A hA))).mp
  exact (KQHSourceCompression.residual_eq_compression A hA).symm.trans
    (mertensResidual_eq_threeResponse A hA)

end FormalResearch.RiemannHypothesis.KQHThreeResponse
