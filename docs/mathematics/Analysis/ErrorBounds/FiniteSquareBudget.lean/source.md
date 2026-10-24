# Complete source: GRWTSK.Analysis.ErrorBounds.FiniteSquareBudget

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4d07c567a78a75231a4d1e7595ab41255ca76d7` · SHA-256 `c42064ca786453cdc23264a92e68a687b859c47915673222ed0b43a9f980249a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

/-!
# Finite square-error budgets

Pure finite inequalities for #189/#194/#209. The functions below are arbitrary
real functions, not automatically Chebyshev errors or source-certified outputs.
Applications must supply the exact arithmetic identity and correction bounds.
No asymptotic estimate, zero-divisor tail, or prime-existence theorem is assumed
or constructed. These declarations are an isolated source draft pending replay.
-/

namespace GRWTSK.Analysis.ErrorBounds.FiniteSquareBudget

open scoped BigOperators

variable {ι : Type*}

/-- Changing an observable charges the complete square norm of its correction. -/
theorem sum_sub_sq_le (S : Finset ι) (f g : ι → ℝ) :
    (∑ i ∈ S, (f i - g i) ^ 2) ≤
      2 * (∑ i ∈ S, f i ^ 2) + 2 * (∑ i ∈ S, g i ^ 2) := by
  calc
    _ ≤ ∑ i ∈ S, (2 * f i ^ 2 + 2 * g i ^ 2) := by
      apply Finset.sum_le_sum
      intro i _
      nlinarith [sq_nonneg (f i + g i)]
    _ = _ := by simp only [Finset.sum_add_distrib, Finset.mul_sum]

/-- The same correction is charged when recovering the original observable. -/
theorem sum_sq_le_twice_sub_sq (S : Finset ι) (f g : ι → ℝ) :
    (∑ i ∈ S, f i ^ 2) ≤
      2 * (∑ i ∈ S, (f i - g i) ^ 2) + 2 * (∑ i ∈ S, g i ^ 2) := by
  calc
    _ ≤ ∑ i ∈ S, (2 * (f i - g i) ^ 2 + 2 * g i ^ 2) := by
      apply Finset.sum_le_sum
      intro i _
      nlinarith [sq_nonneg (f i - 2 * g i)]
    _ = _ := by simp only [Finset.sum_add_distrib, Finset.mul_sum]

/-- An exceptional set with a nonnegative error margin consumes square budget. -/
theorem card_mul_sq_le (S B : Finset ι) (e : ι → ℝ) (margin : ℝ)
    (hBS : B ⊆ S) (hm : 0 ≤ margin)
    (hlarge : ∀ i ∈ B, margin ≤ |e i|) :
    (B.card : ℝ) * margin ^ 2 ≤ ∑ i ∈ S, e i ^ 2 := by
  classical
  calc
    (B.card : ℝ) * margin ^ 2 = ∑ _i ∈ B, margin ^ 2 := by simp
    _ ≤ ∑ i ∈ B, e i ^ 2 := by
      apply Finset.sum_le_sum
      intro i hi
      calc
        margin ^ 2 ≤ |e i| ^ 2 :=
          (sq_le_sq₀ hm (abs_nonneg (e i))).2 (hlarge i hi)
        _ = e i ^ 2 := sq_abs (e i)
    _ ≤ ∑ i ∈ S, e i ^ 2 :=
      Finset.sum_le_sum_of_subset_of_nonneg hBS (fun i _ _ ↦ sq_nonneg (e i))

/-- A zero observed value forces a deficit only after charging the correction. -/
theorem card_mul_sq_le_of_zero (S B : Finset ι) (q h e p : ι → ℝ) (H U : ℝ)
    (hBS : B ⊆ S) (hmargin : 0 ≤ H - U)
    (hid : ∀ i ∈ S, q i = h i + e i - p i)
    (hzero : ∀ i ∈ B, q i = 0)
    (hmain : ∀ i ∈ B, H ≤ h i)
    (hcorr : ∀ i ∈ B, p i ≤ U) :
    (B.card : ℝ) * (H - U) ^ 2 ≤ ∑ i ∈ S, e i ^ 2 := by
  apply card_mul_sq_le S B e (H - U) hBS hmargin
  intro i hi
  have heq := hid i (hBS hi)
  have hz := hzero i hi
  have hh := hmain i hi
  have hp := hcorr i hi
  have he : H - U ≤ -e i := by linarith
  exact he.trans (neg_le_abs (e i))

/-- A proved strict lower margin, not a small plot discrepancy, gives positivity. -/
theorem positive_of_complete_budget (q h s r p approx err rLower pUpper : ℝ)
    (hid : q = h - s + r - p)
    (herror : |s - approx| ≤ err)
    (hr : rLower ≤ r) (hp : p ≤ pUpper)
    (hmargin : 0 < h - approx + rLower - err - pUpper) : 0 < q := by
  have hs := (abs_le.mp herror).2
  linarith

/-- Omitting a correction can report a positive main term when the output is zero. -/
theorem correction_omission_control : (0 : ℝ) = 1 + 0 - 1 ∧ ¬ (0 : ℝ) < 0 := by
  constructor <;> norm_num

/-- Equality of correction and main term leaves zero margin, even with zero error. -/
theorem zero_margin_control :
    (1 : ℝ) * (1 - 1) ^ 2 ≤ 0 ^ 2 ∧ ¬ (0 : ℝ) < 1 - 1 := by
  constructor <;> norm_num

end GRWTSK.Analysis.ErrorBounds.FiniteSquareBudget
```
