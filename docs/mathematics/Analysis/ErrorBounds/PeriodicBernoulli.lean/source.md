# Complete source: GRWTSK.Analysis.ErrorBounds.PeriodicBernoulli

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00e86f3c36823ce4ec2de71f75c78414a55d02bc` · SHA-256 `728b5715ca97f0db22488b3ef691ca2b45c8460acd2a59a16054038da11644e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.NumberTheory.BernoulliPolynomials
import Mathlib.Analysis.Calculus.Deriv.Polynomial
import Mathlib.MeasureTheory.Function.Floor
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Actual Bernoulli polynomials on unit cells and a rational coefficient majorant

The polynomial and number sources are upstream, with B1 = -1/2. The periodic
extension uses Int.fract, not a new coefficient table. Its integer seams are
used only where the endpoint identity is valid (degree other than one).
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.ErrorBounds.PeriodicBernoulli

open Set
open scoped BigOperators

/-- Coefficient-sum upper bound, not the maximum of the polynomial. -/
def majorant (m : ℕ) : ℚ :=
  ∑ i ∈ Finset.range (m + 1), |(_root_.bernoulli i) * (m.choose i : ℚ)|

noncomputable section

/-- The upstream rational polynomial evaluated in the reals. -/
def value (m : ℕ) (x : ℝ) : ℝ :=
  (Polynomial.bernoulli m).eval₂ (algebraMap ℚ ℝ) x

def periodic (m : ℕ) (t : ℝ) : ℝ := value m (Int.fract t)

theorem value_expansion (m : ℕ) (x : ℝ) :
    value m x = ∑ i ∈ Finset.range (m + 1),
      (((_root_.bernoulli i) * (m.choose i : ℚ) : ℚ) : ℝ) * x ^ (m - i) := by
  simp [value, Polynomial.bernoulli, Polynomial.eval₂_finsetSum,
    Polynomial.eval₂_monomial]

theorem majorant_nonneg (m : ℕ) : 0 ≤ majorant m :=
  Finset.sum_nonneg (fun _ _ => abs_nonneg _)

/-- A bound at every point of the closed unit interval, not only its endpoints. -/
theorem abs_value_le (m : ℕ) {x : ℝ} (hx : x ∈ Icc 0 1) :
    |value m x| ≤ (majorant m : ℝ) := by
  rw [value_expansion]
  calc
    _ ≤ ∑ i ∈ Finset.range (m + 1),
        |(((_root_.bernoulli i) * (m.choose i : ℚ) : ℚ) : ℝ) * x ^ (m - i)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ i ∈ Finset.range (m + 1),
        |(((_root_.bernoulli i) * (m.choose i : ℚ) : ℚ) : ℝ)| := by
      apply Finset.sum_le_sum
      intro i _
      rw [abs_mul, abs_pow, abs_of_nonneg hx.1]
      exact mul_le_of_le_one_right (abs_nonneg _) (pow_le_one₀ hx.1 hx.2)
    _ = (majorant m : ℝ) := by simp [majorant]

theorem abs_periodic_le (m : ℕ) (t : ℝ) : |periodic m t| ≤ (majorant m : ℝ) :=
  abs_value_le m ⟨Int.fract_nonneg t, (Int.fract_lt_one t).le⟩

theorem continuous_value (m : ℕ) : Continuous (value m) := by
  simpa only [value, Polynomial.aeval_def] using
    ((Polynomial.bernoulli m).differentiable_aeval (𝕜 := ℝ)).continuous

theorem measurable_periodic (m : ℕ) : Measurable (periodic m) :=
  (continuous_value m).measurable.comp measurable_fract

/-- The analytic derivative is transported from the actual polynomial identity. -/
theorem hasDerivAt_value_succ (m : ℕ) (x : ℝ) :
    HasDerivAt (value (m + 1)) (((m : ℝ) + 1) * value m x) x := by
  simpa [value, Polynomial.aeval_def, Polynomial.derivative_bernoulli_add_one]
    using (Polynomial.bernoulli (m + 1)).hasDerivAt_aeval (𝕜 := ℝ) x

@[simp] theorem value_zero (m : ℕ) : value m 0 = (_root_.bernoulli m : ℝ) := by
  change (Polynomial.bernoulli m).eval₂ (algebraMap ℚ ℝ) ((algebraMap ℚ ℝ) 0) = _
  rw [Polynomial.eval₂_at_apply, Polynomial.bernoulli_eval_zero]
  simp

/-- The right endpoint agrees with the left except in the degree-one case. -/
theorem value_one {m : ℕ} (hm : m ≠ 1) :
    value m 1 = (_root_.bernoulli m : ℝ) := by
  simp [value, Polynomial.eval₂_at_one, Polynomial.bernoulli_eval_one,
    ← _root_.bernoulli_eq_bernoulli'_of_ne_one hm]

@[simp] theorem value_first (x : ℝ) : value 1 x = x - 1 / 2 := by
  simp [value, Polynomial.bernoulli_one]

theorem periodic_first (t : ℝ) : periodic 1 t = Int.fract t - 1 / 2 := by
  simp [periodic]

/-- Each open unit cell uses exactly one translated polynomial. -/
theorem periodic_on_cell (m k : ℕ) {t : ℝ}
    (ht : t ∈ Ioo (k : ℝ) ((k : ℝ) + 1)) :
    periodic m t = value m (t - k) := by
  have hf : ⌊t⌋ = (k : ℤ) := Int.floor_eq_iff.mpr (by exact_mod_cast ⟨ht.1.le, ht.2⟩)
  simp [periodic, Int.fract, hf]

/-- Actual seam equality: degree one is deliberately excluded. -/
theorem seam {m : ℕ} (hm : m ≠ 1) : value m 1 = value m 0 := by
  rw [value_one hm, value_zero]

/-- This jump cannot be silently treated as a continuous seam. -/
theorem first_seam_control : value 1 1 - value 1 0 = 1 := by norm_num [value_first]

theorem sixteenth_majorant : majorant 16 = 327039 / 170 := by decide

theorem sixteenth_majorant_le : majorant 16 ≤ 2000 := by
  rw [sixteenth_majorant]
  norm_num

end
end GRWTSK.Analysis.ErrorBounds.PeriodicBernoulli
```
