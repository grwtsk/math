# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ActualWeightedTransformNorm.Variant30c162f049be8cfa665607c88b60108ac45c876bd5a056c3a63297fc2653718f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48178d91702084295afdbcce2a6b591888750180` · SHA-256 `30c162f049be8cfa665607c88b60108ac45c876bd5a056c3a63297fc2653718f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.ActualKernelBound
import Mathlib.Data.Real.Sign

/-!
# The actual native transform attains its absolute weighted comparison norm

FL-04 retains the unchanged source correlation, full real interval [-2A,2A]
and the factor exp(3u/16). In the real-input class |J(x)|<=x^a for x>0,
the matching-sign input J(x)=x^a sign(C_A(log x)) attains exactly the integral
of |C_A(u)| exp((a+3/16)u). The product is interval-integrable despite the
input's possible sign jumps. The comparison does not identify J with an
arithmetic probe, establish its signed lower bound, or supply the endpoint
asymptotic or sixth-power census. Human exact-source and input-class direction:
grwtsk contributors. Local matching-input and integral consumer: OpenAI Codex.
The existing source correlation and Mathlib sign/integral/power identities
retain their qualified names and source provenance.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualWeightedTransformNorm
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open MeasureTheory Set
noncomputable section

local notation "C" => sourceCorrelation Realization.explicitSecondDerivative

def transform (A : ℝ) (J : ℝ → ℝ) : ℝ :=
  ∫ u in (-2 * A)..(2 * A), C A u * Real.exp (3 * u / 16) * J (Real.exp u)

def normPrice (A θ : ℝ) : ℝ :=
  ∫ u in (-2 * A)..(2 * A), |C A u| * Real.exp (θ * u)

def matchedInput (A a x : ℝ) : ℝ := x ^ a * Real.sign (C A (Real.log x))

private theorem exact_real_sign_payment (x : ℝ) : x * Real.sign x = |x| := by
  rcases lt_trichotomy x 0 with h | rfl | h
  · simp [Real.sign_of_neg h, abs_of_neg h]
  · simp
  · simp [Real.sign_of_pos h, abs_of_pos h]

theorem matching_input_keeps_the_complete_magnitude_bound (A a : ℝ) {x : ℝ}
    (hx : 0 < x) : |matchedInput A a x| ≤ x ^ a := by
  have hp := Real.rpow_pos_of_pos hx a
  rcases Real.sign_apply_eq (C A (Real.log x)) with h | h | h
  · simp [matchedInput, h, abs_of_pos hp]
  · simpa [matchedInput, h] using hp.le
  · simp [matchedInput, h, abs_of_pos hp]

theorem exact_matching_integrand (A a u : ℝ) :
    C A u * Real.exp (3 * u / 16) * matchedInput A a (Real.exp u) =
      |C A u| * Real.exp ((a + 3 / 16) * u) := by
  rw [matchedInput, Real.log_exp, ← Real.exp_mul]
  calc
    _ = (C A u * Real.sign (C A u)) *
        (Real.exp (3 * u / 16) * Real.exp (u * a)) := by ring
    _ = _ := by
      rw [exact_real_sign_payment, ← Real.exp_add]
      congr 2
      ring

theorem full_weighted_norm_integrand_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) (θ : ℝ) :
    IntervalIntegrable (fun u ↦ |C A u| * Real.exp (θ * u)) volume (-2 * A) (2 * A) := by
  have hc : Continuous (C A) :=
    (CorrelationRegularity.sourceCorrelation_contDiff A (by linarith)).continuous
  exact (hc.abs.mul (Real.continuous_exp.comp (continuous_const.mul continuous_id))).intervalIntegrable _ _

theorem matching_integrand_is_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) (a : ℝ) :
    IntervalIntegrable (fun u ↦ C A u * Real.exp (3 * u / 16) *
      matchedInput A a (Real.exp u)) volume (-2 * A) (2 * A) := by
  have heq := funext (exact_matching_integrand A a)
  rw [heq]
  exact full_weighted_norm_integrand_intervalIntegrable hA _

theorem matching_input_attains_exact_native_norm (A a : ℝ) :
    transform A (matchedInput A a) = normPrice A (a + 3 / 16) := by
  unfold transform normPrice
  exact intervalIntegral.integral_congr (fun u _ ↦ exact_matching_integrand A a u)

theorem actual_native_transform_triangle_bound {A a : ℝ} (hA : 1 ≤ A)
    (J : ℝ → ℝ) (hJ : ∀ x : ℝ, 0 < x → |J x| ≤ x ^ a) :
    |transform A J| ≤ normPrice A (a + 3 / 16) := by
  have hpoint (u : ℝ) :
      |C A u * Real.exp (3 * u / 16) * J (Real.exp u)| ≤
        |C A u| * Real.exp ((a + 3 / 16) * u) := by
    rw [abs_mul, abs_mul, abs_of_pos (Real.exp_pos _)]
    calc
      _ ≤ |C A u| * Real.exp (3 * u / 16) * (Real.exp u) ^ a :=
        mul_le_mul_of_nonneg_left (hJ _ (Real.exp_pos _)) (by positivity)
      _ = _ := by
        rw [← Real.exp_mul, mul_assoc, ← Real.exp_add]
        congr 2
        ring
  have h : ‖∫ u in (-2 * A)..(2 * A),
      C A u * Real.exp (3 * u / 16) * J (Real.exp u)‖ ≤
      ∫ u in (-2 * A)..(2 * A), |C A u| * Real.exp ((a + 3 / 16) * u) :=
    intervalIntegral.norm_integral_le_of_norm_le
    (by linarith : -2 * A ≤ 2 * A)
    (Filter.Eventually.of_forall (fun u _ ↦ by
      simpa only [Real.norm_eq_abs] using hpoint u))
    (full_weighted_norm_integrand_intervalIntegrable hA (a + 3 / 16))
  simpa only [Real.norm_eq_abs, transform, normPrice] using h

theorem full_native_norm_price_nonnegative {A : ℝ} (hA : 1 ≤ A) (θ : ℝ) :
    0 ≤ normPrice A θ := by
  apply intervalIntegral.integral_nonneg (by linarith : -2 * A ≤ 2 * A)
  intro u _
  exact mul_nonneg (abs_nonneg _) (Real.exp_pos _).le

theorem exact_complete_input_class_budget {A a B : ℝ} (hA : 1 ≤ A) :
    (∀ J : ℝ → ℝ, (∀ x : ℝ, 0 < x → |J x| ≤ x ^ a) → |transform A J| ≤ B) ↔
      normPrice A (a + 3 / 16) ≤ B := by
  constructor
  · intro h
    have hm := h (matchedInput A a)
      (fun x hx ↦ matching_input_keeps_the_complete_magnitude_bound A a hx)
    rw [matching_input_attains_exact_native_norm,
      abs_of_nonneg (full_native_norm_price_nonnegative hA _)] at hm
    exact hm
  · intro h J hJ
    exact (actual_native_transform_triangle_bound hA J hJ).trans h

end
end GRWTSK.RiemannHypothesis.Conversation.ActualWeightedTransformNorm
```
