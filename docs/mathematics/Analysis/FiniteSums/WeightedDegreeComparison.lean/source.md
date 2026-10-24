# Complete source: GRWTSK.Analysis.FiniteSums.WeightedDegreeComparison

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a85f0a5322d692386b9f7c37fa18d3d4fc0851b` · SHA-256 `52fb3135a2169053de029a58bfbf740dc79586f4fa96a715cfa474dee9436cbf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Real.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic

/-!
Finite weighted degree expressions. The motivating source is Scholze--Stix,
Why abc is still a conjecture, section 1.3, printed page 4, (1.5)--(1.6).
These are exact real identities with an explicit error variable. No arithmetic
degree interpretation or source approximation is a premise of this module.
Direction: grwtsk contributors. Formalization assistance: OpenAI Codex. MIT.
-/

namespace GRWTSK.Analysis.FiniteSums.WeightedDegreeComparison

open scoped BigOperators

noncomputable section

theorem sum_first (n : ℕ) :
    (∑ j ∈ Finset.range n, ((j : ℝ) + 1)) = (n : ℝ) * ((n : ℝ) + 1) / 2 := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Finset.sum_range_succ, ih]
    push_cast
    ring

theorem sum_squares (n : ℕ) :
    (∑ j ∈ Finset.range n, ((j : ℝ) + 1) ^ 2) =
      (n : ℝ) * ((n : ℝ) + 1) * (2 * (n : ℝ) + 1) / 6 := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Finset.sum_range_succ, ih]
    push_cast
    ring

def weighted (n : ℕ) (D Q : ℝ) : ℝ :=
  (∑ j ∈ Finset.range n,
    (((j : ℝ) + 1) * D - ((j : ℝ) + 1) ^ 2 * Q / (2 * (2 * (n : ℝ) + 1)))) /
    (n : ℝ)

def unweighted (n : ℕ) (D Q : ℝ) : ℝ :=
  (∑ j ∈ Finset.range n,
    (((j : ℝ) + 1) * D - Q / (2 * (2 * (n : ℝ) + 1)))) / (n : ℝ)

theorem weighted_eq (n : ℕ) (hn : 0 < n) (D Q : ℝ) :
    weighted n D Q = ((n : ℝ) + 1) / 2 * (D - Q / 6) := by
  have hn' : (n : ℝ) ≠ 0 := by positivity
  have hl : 2 * (n : ℝ) + 1 ≠ 0 := by positivity
  unfold weighted
  rw [Finset.sum_sub_distrib, ← Finset.sum_mul, ← Finset.sum_div,
    ← Finset.sum_mul, sum_first, sum_squares]
  field_simp

theorem unweighted_eq (n : ℕ) (hn : 0 < n) (D Q : ℝ) :
    unweighted n D Q = ((n : ℝ) + 1) / 2 * D - Q / (2 * (2 * (n : ℝ) + 1)) := by
  have hn' : (n : ℝ) ≠ 0 := by positivity
  unfold unweighted
  rw [Finset.sum_sub_distrib, ← Finset.sum_mul, sum_first]
  simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
  field_simp

/-- All approximation error is retained as the additive variable `E`.
The coefficient on Q is positive precisely when n > 1. -/
theorem weighted_inequality (n : ℕ) (hn : 0 < n) (D Q E : ℝ) :
    -Q / (2 * (2 * (n : ℝ) + 1)) ≤ weighted n D Q + E ↔
      (((n : ℝ) + 1) / 12 - 1 / (2 * (2 * (n : ℝ) + 1))) * Q ≤
        ((n : ℝ) + 1) / 2 * D + E := by
  rw [weighted_eq n hn]
  constructor <;> intro h <;> linear_combination h

theorem unweighted_inequality (n : ℕ) (hn : 0 < n) (D Q E : ℝ) :
    -Q / (2 * (2 * (n : ℝ) + 1)) ≤ unweighted n D Q + E ↔
      0 ≤ ((n : ℝ) + 1) / 2 * D + E := by
  rw [unweighted_eq n hn]
  constructor <;> intro h <;> linear_combination h

theorem coefficient_pos (n : ℕ) (hn : 1 < n) :
    0 < ((n : ℝ) + 1) / 12 - 1 / (2 * (2 * (n : ℝ) + 1)) := by
  have hn' : (2 : ℝ) ≤ (n : ℝ) := by exact_mod_cast hn
  have hd : 0 < 2 * (2 * (n : ℝ) + 1) := by positivity
  apply sub_pos.mpr
  apply (div_lt_iff₀ hd).2
  nlinarith

/-- The weighted premise supplies a genuine upper bound when its coefficient
is positive; the bound still depends on the stated error and degree D. -/
theorem weighted_upper_bound (n : ℕ) (hn : 1 < n) (D Q E : ℝ)
    (h : -Q / (2 * (2 * (n : ℝ) + 1)) ≤ weighted n D Q + E) :
    Q ≤ (((n : ℝ) + 1) / 2 * D + E) /
      (((n : ℝ) + 1) / 12 - 1 / (2 * (2 * (n : ℝ) + 1))) := by
  apply (le_div_iff₀ (coefficient_pos n hn)).2
  simpa only [mul_comm] using
    (weighted_inequality n (by omega) D Q E).1 h

/-- The unweighted inequality at D=E=0 holds for every Q, so it gives no
uniform upper bound on Q. This does not interpret Q as an arithmetic degree. -/
theorem unweighted_no_upper_bound (n : ℕ) (hn : 0 < n) (B : ℝ) :
    ∃ Q : ℝ, B < Q ∧
      -Q / (2 * (2 * (n : ℝ) + 1)) ≤ unweighted n 0 Q := by
  refine ⟨B + 1, by linarith, ?_⟩
  have h := (unweighted_inequality n hn 0 (B + 1) 0).2 (by norm_num)
  simpa using h

end

end GRWTSK.Analysis.FiniteSums.WeightedDegreeComparison
```
