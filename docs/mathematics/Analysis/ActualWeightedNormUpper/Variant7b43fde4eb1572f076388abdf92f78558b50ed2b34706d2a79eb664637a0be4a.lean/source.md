# Complete source: GRWTSK.Analysis.ActualWeightedNormUpper.Variant7b43fde4eb1572f076388abdf92f78558b50ed2b34706d2a79eb664637a0be4a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5760518b62ea8536492fdff50d5af69f331cd861` · SHA-256 `7b43fde4eb1572f076388abdf92f78558b50ed2b34706d2a79eb664637a0be4a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.ActualCorrelationOverlapUpper
import FormalResearch.RiemannHypothesis.Conversation.ActualWeightedNormBarrier
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral

/-!
# Two-sided exponential-over-ninth-power price for the actual weighted norm

The complete source overlap upper profile integrates against a positive
exponential tail. Its constant is defined by that convergent polynomial tail,
independently of A. Together with the checked actual-source shell this gives
two positive radius-independent constants for every fixed theta>0. Sharp
paper constants and the sixth-power census remain separate, and the actual
signed arithmetic input is not replaced. Human exact-kernel and fixed-weight
uniformity direction: grwtsk contributors. Local tail and two-sided norm consumer:
OpenAI Codex. Source and Mathlib identities retain their qualified origins.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualWeightedNormUpper
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ActualCorrelationOverlapUpper ActualWeightedTransformNorm ActualWeightedNormBarrier
open MeasureTheory Set Filter
noncomputable section
local notation "C" => sourceCorrelation Realization.explicitSecondDerivative

def tailPolynomial (y : ℝ) : ℝ := 576 * y ^ 5 * (64 + y ^ 2) ^ 2
def tailPrice (θ y : ℝ) : ℝ := tailPolynomial y * Real.exp (-θ * y)
def upperConstant (θ : ℝ) : ℝ := ∫ y in Ioi (0 : ℝ), tailPrice θ y

theorem fixed_positive_weight_tail_integrable {θ : ℝ} (hθ : 0 < θ) :
    IntegrableOn (tailPrice θ) (Ioi 0) volume := by
  have hm (n : ℕ) : IntegrableOn (fun y : ℝ ↦ y ^ n * Real.exp (-θ * y))
      (Ioi 0) volume := by
    simpa only [Real.rpow_natCast, Real.rpow_one] using
      (integrableOn_rpow_mul_exp_neg_mul_rpow (s := (n : ℝ)) (p := 1) (b := θ)
        (lt_of_lt_of_le (by norm_num : (-1 : ℝ) < 0) (Nat.cast_nonneg n)) (by norm_num) hθ)
  have heq : tailPrice θ = fun y ↦
      2359296 * (y ^ 5 * Real.exp (-θ * y)) +
        73728 * (y ^ 7 * Real.exp (-θ * y)) +
          576 * (y ^ 9 * Real.exp (-θ * y)) := by
    funext y
    unfold tailPrice tailPolynomial
    ring
  rw [heq]
  exact (((hm 5).const_mul 2359296).add ((hm 7).const_mul 73728)).add
    ((hm 9).const_mul 576)

theorem positive_weight_tail_bounds_every_finite_interval {θ T : ℝ}
    (hθ : 0 < θ) (hT : 0 ≤ T) :
    (∫ y in (0 : ℝ)..T, tailPrice θ y) ≤ upperConstant θ := by
  rw [intervalIntegral.integral_of_le hT]
  apply setIntegral_mono_set (fixed_positive_weight_tail_integrable hθ)
  · filter_upwards [ae_restrict_mem measurableSet_Ioi] with y hy
    have hy0 : 0 < y := hy
    unfold tailPrice tailPolynomial
    positivity
  · exact (show Ioc (0 : ℝ) T ⊆ Ioi 0 from fun y hy ↦ hy.1).eventuallyLE

theorem full_actual_weighted_norm_upper {A θ : ℝ} (hA : 1 ≤ A) (hθ : 0 < θ) :
    normPrice A θ ≤ (Real.exp (2 * θ * A) / A ^ 9) * upperConstant θ := by
  have hpos : 0 < A := by linarith
  let F := fun u : ℝ ↦ (tailPolynomial (2 * A - u) / A ^ 9) * Real.exp (θ * u)
  have hF : Continuous F := by unfold F tailPolynomial; fun_prop
  have hmono : normPrice A θ ≤ ∫ u in (-2 * A)..(2 * A), F u := by
    apply intervalIntegral.integral_mono_on (by linarith)
      (full_weighted_norm_integrand_intervalIntegrable hA θ) (hF.intervalIntegrable _ _)
    intro u hu
    have h := actual_complete_correlation_absolute_upper hA
      (by linarith [hu.2] : 0 ≤ 2 * A - u)
    have heq : 2 * A - (2 * A - u) = u := by ring
    rw [heq] at h
    exact mul_le_mul_of_nonneg_right h (Real.exp_pos _).le
  have hpoint (u : ℝ) : F u =
      (Real.exp (2 * θ * A) / A ^ 9) * tailPrice θ (2 * A - u) := by
    have he : Real.exp (θ * u) = Real.exp (2 * θ * A) *
        Real.exp (-θ * (2 * A - u)) := by
      rw [← Real.exp_add]
      congr 1
      ring
    unfold F tailPrice
    rw [he]
    ring
  have hvalue : (∫ u in (-2 * A)..(2 * A), F u) =
      (Real.exp (2 * θ * A) / A ^ 9) * (∫ y in (0 : ℝ)..(4 * A), tailPrice θ y) := by
    simp_rw [hpoint]
    rw [intervalIntegral.integral_const_mul, intervalIntegral.integral_comp_sub_left]
    congr 2 <;> ring
  rw [hvalue] at hmono
  exact hmono.trans (mul_le_mul_of_nonneg_left
    (positive_weight_tail_bounds_every_finite_interval hθ (by positivity)) (by positivity))

theorem actual_weighted_norm_has_two_fixed_positive_constants {θ : ℝ} (hθ : 0 < θ) :
    ∃ c K : ℝ, 0 < c ∧ 0 < K ∧ ∀ A : ℝ, 8 ≤ A →
      c * (Real.exp (2 * θ * A) / A ^ 9) ≤ normPrice A θ ∧
        normPrice A θ ≤ K * (Real.exp (2 * θ * A) / A ^ 9) := by
  refine ⟨Real.exp (-2 * θ) / 512, max 1 (upperConstant θ), by positivity,
    lt_of_lt_of_le zero_lt_one (le_max_left _ _), ?_⟩
  intro A hA
  constructor
  · have h := full_actual_weighted_norm_lower hA hθ.le
    have heq : Real.exp (-2 * θ) / 512 * (Real.exp (2 * θ * A) / A ^ 9) =
        Real.exp (θ * (2 * A - 2)) / (512 * A ^ 9) := by
      rw [div_mul_div_comm, ← Real.exp_add]
      congr 2
      ring
    rw [heq]
    exact h
  · have h := full_actual_weighted_norm_upper (by linarith : 1 ≤ A) hθ
    have hm := mul_le_mul_of_nonneg_left (le_max_right 1 (upperConstant θ))
      (by positivity : 0 ≤ Real.exp (2 * θ * A) / A ^ 9)
    exact h.trans (by simpa only [mul_comm] using hm)

end
end GRWTSK.RiemannHypothesis.Conversation.ActualWeightedNormUpper
```
