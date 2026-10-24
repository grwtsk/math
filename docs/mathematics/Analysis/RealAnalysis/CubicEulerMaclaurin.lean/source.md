# Complete source: GRWTSK.Analysis.Real.CubicEulerMaclaurin

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47883a7af5b108dddc7303c6a48db4c51b7fde32` · SHA-256 `ccde778c6cb245ca4c934c9a0f1d0682338c142f22540b95f997e808d24e3063`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.Calculus.Deriv.Pow
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

set_option autoImplicit false

/-!
# Finite Euler--Maclaurin with the normalized cubic Bernoulli remainder

The three functions below are B_1, B_2/2!, and B_3/3! on one cell.
The exact finite identity is derived by differentiating a single combined
primitive. No infinite sum, analytic continuation, or zeta source identity
is assumed or concluded. The remainder has a sign; it is not set to zero.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Real.CubicEulerMaclaurin

open MeasureTheory Set
open scoped Interval BigOperators

noncomputable section

/-- First normalized Bernoulli polynomial on a unit cell. -/
def first (u : ℝ) : ℝ := u - 1 / 2

/-- Second normalized Bernoulli polynomial on a unit cell. -/
def second (u : ℝ) : ℝ := (u ^ 2 - u + 1 / 6) / 2

/-- The factorization makes both zero endpoints and the complete 1/48 bound explicit. -/
def third (u : ℝ) : ℝ := u * (u - 1 / 2) * (u - 1) / 6

@[simp] theorem first_zero : first 0 = -1 / 2 := by norm_num [first]
@[simp] theorem first_one : first 1 = 1 / 2 := by norm_num [first]
@[simp] theorem second_zero : second 0 = 1 / 12 := by norm_num [second]
@[simp] theorem second_one : second 1 = 1 / 12 := by norm_num [second]
@[simp] theorem third_zero : third 0 = 0 := by norm_num [third]
@[simp] theorem third_one : third 1 = 0 := by norm_num [third]

theorem hasDerivAt_first (u : ℝ) : HasDerivAt first 1 u :=
  (hasDerivAt_id u).sub_const (1 / 2)

theorem hasDerivAt_second (u : ℝ) : HasDerivAt second (first u) u := by
  convert ((((hasDerivAt_id u).pow 2).sub (hasDerivAt_id u)).add_const (1 / 6)).div_const 2
    using 1 <;> first | rfl | (dsimp [second, first]; ring)

theorem hasDerivAt_third (u : ℝ) : HasDerivAt third (second u) u := by
  convert (((hasDerivAt_id u).mul ((hasDerivAt_id u).sub_const (1 / 2))).mul
    ((hasDerivAt_id u).sub_const 1)).div_const 6 using 1 <;>
    first | rfl | (dsimp [third, second]; ring)

/-- Uniform on the WHOLE cell, not just at the endpoints or sampled nodes. -/
theorem abs_third_le (u : ℝ) (hu : u ∈ Icc (0 : ℝ) 1) : |third u| ≤ 1 / 48 := by
  have hp : 0 ≤ u * (1 - u) := mul_nonneg hu.1 (sub_nonneg.mpr hu.2)
  have hp' : u * (1 - u) ≤ 1 / 4 := by nlinarith [sq_nonneg (u - 1 / 2)]
  have hm : |u - 1 / 2| ≤ 1 / 2 := abs_le.mpr ⟨by linarith [hu.1], by linarith [hu.2]⟩
  have he : third u = -(u * (1 - u)) * (u - 1 / 2) / 6 := by unfold third; ring
  rw [he, abs_div, abs_mul, abs_neg, abs_of_nonneg hp]
  rw [show |(6 : ℝ)| = 6 by norm_num]
  have hb := mul_le_mul hp' hm (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1 / 4)
  linarith

/-- The cubic is antisymmetric around the midpoint; its absolute value is not discarded. -/
theorem third_reflection (u : ℝ) : third (1 - u) = -third u := by unfold third; ring

/-- The derivative terms cancel only when all three normalized polynomials are retained. -/
theorem hasDerivAt_combined (f f₁ f₂ : ℝ → ℂ) (u : ℝ) (v₁ v₂ v₃ : ℂ)
    (hf : HasDerivAt f v₁ u) (hf₁ : HasDerivAt f₁ v₂ u) (hf₂ : HasDerivAt f₂ v₃ u)
    (h₁ : v₁ = f₁ u) (h₂ : v₂ = f₂ u) :
    HasDerivAt (fun t : ℝ => (first t : ℂ) * f t -
      (second t : ℂ) * f₁ t + (third t : ℂ) * f₂ t)
      (f u + (third u : ℂ) * v₃) u := by
  have hd := (((hasDerivAt_first u).ofReal_comp.mul hf).sub
    ((hasDerivAt_second u).ofReal_comp.mul hf₁)).add
    ((hasDerivAt_third u).ofReal_comp.mul hf₂)
  apply hd.congr_deriv
  rw [h₁, h₂]
  simp only [Complex.ofReal_one]
  ring

/-- Exact one-cell summation. Continuity of the third derivative is explicit. -/
theorem one_cell (f f₁ f₂ f₃ : ℝ → ℂ)
    (hf : ∀ u ∈ Icc (0 : ℝ) 1, HasDerivAt f (f₁ u) u)
    (hf₁ : ∀ u ∈ Icc (0 : ℝ) 1, HasDerivAt f₁ (f₂ u) u)
    (hf₂ : ∀ u ∈ Icc (0 : ℝ) 1, HasDerivAt f₂ (f₃ u) u)
    (hc₃ : ContinuousOn f₃ (Icc (0 : ℝ) 1)) :
    f 0 = (∫ u in (0 : ℝ)..1, f u) + (f 0 - f 1) / 2 +
      (f₁ 1 - f₁ 0) / 12 + ∫ u in (0 : ℝ)..1, (third u : ℂ) * f₃ u := by
  have hc : ContinuousOn f (Icc (0 : ℝ) 1) :=
    fun u hu => (hf u hu).continuousAt.continuousWithinAt
  have hr : ContinuousOn (fun u : ℝ => (third u : ℂ) * f₃ u) (Icc (0 : ℝ) 1) :=
    (by unfold third; fun_prop : Continuous (fun u : ℝ => (third u : ℂ))).continuousOn.mul hc₃
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (a := (0 : ℝ)) (b := 1)
    (f := fun u : ℝ => (first u : ℂ) * f u -
      (second u : ℂ) * f₁ u + (third u : ℂ) * f₂ u)
    (f' := fun u : ℝ => f u + (third u : ℂ) * f₃ u)
    (fun u hu => by
      have hu' : u ∈ Icc (0 : ℝ) 1 := (uIcc_of_le (by norm_num : (0 : ℝ) ≤ 1)) ▸ hu
      exact hasDerivAt_combined f f₁ f₂ u (f₁ u) (f₂ u) (f₃ u)
        (hf u hu') (hf₁ u hu') (hf₂ u hu') rfl rfl)
    ((hc.intervalIntegrable_of_Icc (by norm_num)).add
      (hr.intervalIntegrable_of_Icc (by norm_num)))
  rw [intervalIntegral.integral_add (hc.intervalIntegrable_of_Icc (by norm_num))
    (hr.intervalIntegrable_of_Icc (by norm_num))] at hi
  simp only [first_one, first_zero, second_one, second_zero, third_one, third_zero,
    Complex.ofReal_zero, Complex.ofReal_neg, Complex.ofReal_div, Complex.ofReal_one,
    Complex.ofReal_ofNat, zero_mul, add_zero] at hi
  linear_combination -hi

/-- A finite cell identity telescopes without discarding either terminal value.
The arrays I and R can be instantiated by the exact integrals from one_cell. -/
theorem finite_cells (f d I R : ℕ → ℂ)
    (hcell : ∀ k : ℕ, f k = I k + (f k - f (k + 1)) / 2 +
      (d (k + 1) - d k) / 12 + R k) (N : ℕ) :
    (∑ k ∈ Finset.range N, f k) = (∑ k ∈ Finset.range N, I k) +
      (f 0 - f N) / 2 + (d N - d 0) / 12 + ∑ k ∈ Finset.range N, R k := by
  induction N with
  | zero => simp
  | succ N ih =>
      simp only [Finset.sum_range_succ]
      rw [ih]
      linear_combination hcell N

end
end GRWTSK.Analysis.Real.CubicEulerMaclaurin
```
