# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualComplexTransformBudget.Variantb5bc5367e08b5452d90e2a20f2649084908695842d67906da4f39d8bfe5d18f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38e5bd7bb792728a55a71115302c180cf264b074` · SHA-256 `b5bc5367e08b5452d90e2a20f2649084908695842d67906da4f39d8bfe5d18f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.ActualWeightedTransformScaling

/-!
# Complete complex magnitude input class for the unchanged native transform

The same real source kernel acts on genuinely complex inputs at every Z>0.
Its triangle bound has exactly the real weighted price. The embedded real
matching-sign input attains that price, so allowing complex phases does not
reduce or enlarge the comparison-class budget. This is an input-class norm
identity, not a signed lower bound for an arithmetic probe. Human exact-input
and source direction: grwtsk contributors. Local complex consumer: OpenAI Codex.
The source kernel, real adapter and Mathlib integral/embedding identities retain
their qualified origins.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualComplexTransformBudget
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ActualWeightedTransformNorm ActualWeightedTransformScaling MeasureTheory Set
noncomputable section
local notation "C" => sourceCorrelation Realization.explicitSecondDerivative

def complexTransformAt (A : ℝ) (J : ℝ → ℂ) (Z : ℝ) : ℂ :=
  ∫ u in (-2 * A)..(2 * A), ((C A u * Real.exp (3 * u / 16) : ℝ) : ℂ) *
    J (Z * Real.exp u)

theorem embedded_real_input_retains_literal_transform (A Z : ℝ) (J : ℝ → ℝ) :
    complexTransformAt A (fun x ↦ (J x : ℂ)) Z = (transformAt A J Z : ℂ) := by
  unfold complexTransformAt transformAt
  simp_rw [← Complex.ofReal_mul]
  exact intervalIntegral.integral_ofReal

theorem complete_complex_magnitude_triangle {A a Z : ℝ} (hA : 1 ≤ A) (hZ : 0 < Z)
    (J : ℝ → ℂ) (hJ : ∀ x : ℝ, 0 < x → ‖J x‖ ≤ x ^ a) :
    ‖complexTransformAt A J Z‖ ≤ Z ^ a * normPrice A (a + 3 / 16) := by
  have hpoint (u : ℝ) :
      ‖((C A u * Real.exp (3 * u / 16) : ℝ) : ℂ) * J (Z * Real.exp u)‖ ≤
        Z ^ a * (|C A u| * Real.exp ((a + 3 / 16) * u)) := by
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_mul,
      abs_of_pos (Real.exp_pos _)]
    calc
      _ ≤ |C A u| * Real.exp (3 * u / 16) * (Z * Real.exp u) ^ a :=
        mul_le_mul_of_nonneg_left (hJ _ (mul_pos hZ (Real.exp_pos _))) (by positivity)
      _ = _ := by
        rw [Real.mul_rpow hZ.le (Real.exp_pos _).le, ← Real.exp_mul]
        have he : Real.exp (3 * u / 16) * Real.exp (u * a) =
            Real.exp ((a + 3 / 16) * u) := by
          rw [← Real.exp_add]
          congr 1
          ring
        calc
          _ = Z ^ a * (|C A u| * (Real.exp (3 * u / 16) * Real.exp (u * a))) := by ring
          _ = _ := by rw [he]
  have h : ‖∫ u in (-2 * A)..(2 * A),
      ((C A u * Real.exp (3 * u / 16) : ℝ) : ℂ) * J (Z * Real.exp u)‖ ≤
      ∫ u in (-2 * A)..(2 * A), Z ^ a * (|C A u| * Real.exp ((a + 3 / 16) * u)) :=
    intervalIntegral.norm_integral_le_of_norm_le (by linarith)
      (Filter.Eventually.of_forall (fun u _ ↦ hpoint u))
      ((full_weighted_norm_integrand_intervalIntegrable hA _).const_mul (Z ^ a))
  rw [intervalIntegral.integral_const_mul] at h
  exact h

theorem embedded_matching_product_genuinely_intervalIntegrable {A a Z : ℝ}
    (hA : 1 ≤ A) (hZ : 0 < Z) :
    IntervalIntegrable (fun u ↦ ((C A u * Real.exp (3 * u / 16) : ℝ) : ℂ) *
      (inputAt A a Z (Z * Real.exp u) : ℂ)) volume (-2 * A) (2 * A) := by
  have hr : IntervalIntegrable (fun u ↦ C A u * Real.exp (3 * u / 16) *
      inputAt A a Z (Z * Real.exp u)) volume (-2 * A) (2 * A) := by
    simp_rw [exact_scaled_matching_integrand hZ]
    exact (full_weighted_norm_integrand_intervalIntegrable hA _).const_mul (Z ^ a)
  simp_rw [← Complex.ofReal_mul]
  exact ⟨Complex.ofRealCLM.integrable_comp hr.1, Complex.ofRealCLM.integrable_comp hr.2⟩

theorem embedded_matching_input_attains_complete_complex_price {A a Z : ℝ}
    (hA : 1 ≤ A) (hZ : 0 < Z) :
    ‖complexTransformAt A (fun x ↦ (inputAt A a Z x : ℂ)) Z‖ =
      Z ^ a * normPrice A (a + 3 / 16) := by
  rw [embedded_real_input_retains_literal_transform,
    matching_input_attains_norm_at_every_positive_scale hZ, Complex.norm_real,
    Real.norm_eq_abs, abs_of_nonneg (mul_nonneg (Real.rpow_nonneg hZ.le a)
      (full_native_norm_price_nonnegative hA _))]

theorem exact_complete_complex_input_class_budget {A a Z B : ℝ}
    (hA : 1 ≤ A) (hZ : 0 < Z) :
    (∀ J : ℝ → ℂ, (∀ x : ℝ, 0 < x → ‖J x‖ ≤ x ^ a) → ‖complexTransformAt A J Z‖ ≤ B) ↔
      Z ^ a * normPrice A (a + 3 / 16) ≤ B := by
  constructor
  · intro h
    have hm := h (fun x ↦ (inputAt A a Z x : ℂ)) (fun x hx ↦ by
      simpa only [Complex.norm_real, Real.norm_eq_abs] using
        matching_input_retains_class_at_every_scale hZ A a x hx)
    rw [embedded_matching_input_attains_complete_complex_price hA hZ] at hm
    exact hm
  · intro h J hJ
    exact (complete_complex_magnitude_triangle hA hZ J hJ).trans h

end
end GRWTSK.RiemannHypothesis.Conversation.ActualComplexTransformBudget
```
