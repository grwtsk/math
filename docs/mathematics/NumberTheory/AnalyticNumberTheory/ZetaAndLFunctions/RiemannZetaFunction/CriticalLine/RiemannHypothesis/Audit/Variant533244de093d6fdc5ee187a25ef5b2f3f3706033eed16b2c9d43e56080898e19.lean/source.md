# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Audit.Variant533244de093d6fdc5ee187a25ef5b2f3f3706033eed16b2c9d43e56080898e19

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8443268ad088ff9337085f5dc050a89dad9f8e4` · SHA-256 `533244de093d6fdc5ee187a25ef5b2f3f3706033eed16b2c9d43e56080898e19`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Tactic

/-!+# Boundary sign and finite accumulated birth majorant

Research direction: grwtsk contributors. Codex derived these finite suppliers
for the complete-hat continuation on 7 October 2026. This ignored candidate
does not assert the physical convolution join or an EstimateObligation witness.
-/

open scoped BigOperators

noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceKapitzaBirthBudget

/-- Polynomial of the actual shifted bump after applying D²-1/4. -/
def boundaryPolynomial (z w : ℝ) : ℝ :=
  12 * z ^ 2 * w ^ 4 - 32 * z ^ 3 * w ^ 3 +
    12 * z ^ 4 * w ^ 2 - z ^ 4 * w ^ 4 / 4

/-- The short endpoint collar has a positive relative polynomial margin. -/
theorem boundaryPolynomial_relative_lower {z w : ℝ}
    (hz : 0 ≤ z) (hz1 : z ≤ 1) (hw : 3 ≤ w) :
    (13 / 12 : ℝ) * z ^ 4 * w ^ 4 ≤ boundaryPolynomial z w := by
  have hw0 : 0 ≤ w := by linarith
  have hzw : 3 * z ≤ w := by linarith
  have hzsq : z ^ 2 ≤ 1 := by nlinarith
  have hcross : 32 * z * w ≤ (32 / 3 : ℝ) * w ^ 2 := by
    nlinarith [mul_nonneg (show 0 ≤ w - 3 * z by linarith) hw0]
  have hs : z ^ 2 * w ^ 2 ≤ w ^ 2 := by
    nlinarith [mul_nonneg (show 0 ≤ 1 - z ^ 2 by linarith) (sq_nonneg w)]
  have hb : 0 ≤ 12 * w ^ 2 + 12 * z ^ 2 - 32 * z * w -
      (4 / 3 : ℝ) * z ^ 2 * w ^ 2 := by
    nlinarith [sq_nonneg z]
  have hp := mul_nonneg (mul_nonneg (sq_nonneg z) (sq_nonneg w)) hb
  unfold boundaryPolynomial
  nlinarith only [hp]

/-- Actual real-scale substitution; no integer scale restriction occurs. -/
theorem boundaryPolynomial_source_collar {A z : ℝ}
    (hA : 2 ≤ A) (hz : 0 ≤ z) (hz1 : z ≤ 1) :
    (13 / 12 : ℝ) * z ^ 4 * (2 * A - z) ^ 4 ≤
      boundaryPolynomial z (2 * A - z) :=
  boundaryPolynomial_relative_lower hz hz1 (by linarith)

theorem boundaryPolynomial_source_collar_pos {A z : ℝ}
    (hA : 2 ≤ A) (hz : 0 < z) (hz1 : z ≤ 1) :
    0 < boundaryPolynomial z (2 * A - z) := by
  have hw : 0 < 2 * A - z := by linarith
  have hp : 0 < (13 / 12 : ℝ) * z ^ 4 * (2 * A - z) ^ 4 := by positivity
  exact lt_of_lt_of_le hp (boundaryPolynomial_source_collar hA hz.le hz1)

/-- Upper polynomial supplier for the quantitative finite endpoint collar. -/
theorem boundaryPolynomial_upper {z w : ℝ}
    (hz : 0 ≤ z) (hw : 0 ≤ w) (hzw : 3 * z ≤ w) :
    boundaryPolynomial z w ≤ 12 * z ^ 2 * w ^ 4 := by
  have hb : 0 ≤ 32 * w - 12 * z := by linarith
  have hp := mul_nonneg (mul_nonneg (pow_nonneg hz 3) (sq_nonneg w)) hb
  have hq : 0 ≤ z ^ 4 * w ^ 4 := mul_nonneg (pow_nonneg hz 4) (pow_nonneg hw 4)
  unfold boundaryPolynomial
  nlinarith only [hp, hq]

/-- All five entries remain present before the boundary zero traces are used. -/
def cellStencil (n sMinus sCenter sPlus leftCell rightCell : ℝ) : ℝ :=
  (n - 1) * sMinus - 2 * n * sCenter + (n + 1) * sPlus + leftCell - rightCell

theorem cellStencil_at_birth_nonneg {n sMinus leftCell : ℝ}
    (hn : 1 ≤ n) (hs : 0 ≤ sMinus) (hl : 0 ≤ leftCell) :
    0 ≤ cellStencil n sMinus 0 0 leftCell 0 := by
  simpa [cellStencil] using add_nonneg (mul_nonneg (by linarith : 0 ≤ n - 1) hs) hl

/-- The inverse-square atom is bounded by an exact telescoping difference. -/
theorem inverse_square_le_difference {j : ℝ} (hj : 1 < j) :
    1 / j ^ 2 ≤ 1 / (j - 1) - 1 / j := by
  have hj0 : 0 < j := by linarith
  have hjm : 0 < j - 1 := by linarith
  calc
    1 / j ^ 2 ≤ 1 / (j * (j - 1)) :=
      one_div_le_one_div_of_le (mul_pos hj0 hjm) (by nlinarith)
    _ = 1 / (j - 1) - 1 / j := by field_simp; ring

/-- Every closed finite tail retains the favorable terminal correction. -/
theorem inverse_square_sum_le {m N : ℕ} (hm : 2 ≤ m) (hN : m ≤ N) :
    (∑ j ∈ Finset.Icc m N, (1 : ℝ) / (j : ℝ) ^ 2) ≤
      1 / ((m : ℝ) - 1) - 1 / (N : ℝ) := by
  induction N, hN using Nat.le_induction with
  | base =>
      simpa using inverse_square_le_difference (j := (m : ℝ)) (by exact_mod_cast hm)
  | succ N hN ih =>
      rw [Finset.sum_Icc_succ_top (by omega)]
      have hn : 1 < ((N + 1 : ℕ) : ℝ) := by exact_mod_cast (show 1 < N + 1 by omega)
      have ht := inverse_square_le_difference hn
      have heq : ((N + 1 : ℕ) : ℝ) - 1 = (N : ℝ) := by push_cast; ring
      rw [heq] at ht
      linarith

/-- A finite or partially completed selection pays one uniform absolute cost. -/
theorem selected_birth_budget {s : Finset ℕ} {m N : ℕ} {κ : ℝ}
    (hm : 2 ≤ m) (hN : m ≤ N) (hκ : 0 ≤ κ)
    (hs : s ⊆ Finset.Icc m N) {jump : ℕ → ℝ}
    (hj : ∀ j ∈ s, |jump j| ≤ κ / (24 * (j : ℝ) ^ 2)) :
    |∑ j ∈ s, jump j| ≤ κ / (24 * ((m : ℝ) - 1)) := by
  have hp : 0 ≤ κ / 24 := by positivity
  have hsub : (∑ j ∈ s, (1 : ℝ) / (j : ℝ) ^ 2) ≤
      ∑ j ∈ Finset.Icc m N, (1 : ℝ) / (j : ℝ) ^ 2 :=
    Finset.sum_le_sum_of_subset_of_nonneg hs (fun j _ _ ↦ by positivity)
  have ht := inverse_square_sum_le hm hN
  have hterm : 0 ≤ (1 : ℝ) / (N : ℝ) := by positivity
  calc
    |∑ j ∈ s, jump j| ≤ ∑ j ∈ s, |jump j| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ j ∈ s, κ / (24 * (j : ℝ) ^ 2) := Finset.sum_le_sum hj
    _ = κ / 24 * (∑ j ∈ s, (1 : ℝ) / (j : ℝ) ^ 2) := by
      rw [Finset.mul_sum]
      congr 1
      ext j
      ring
    _ ≤ κ / 24 * (1 / ((m : ℝ) - 1)) := by
      exact mul_le_mul_of_nonneg_left (by linarith) hp
    _ = κ / (24 * ((m : ℝ) - 1)) := by
      simp only [div_eq_mul_inv, mul_inv_rev]
      ring

/-- Upward source births can be retained without weakening a lower bound. -/
theorem lower_increment_with_positive_births {s : Finset ℕ} {jump : ℕ → ℝ}
    (hj : ∀ j ∈ s, 0 ≤ jump j) (continuousIncrement : ℝ) :
    continuousIncrement ≤ continuousIncrement + ∑ j ∈ s, jump j := by
  exact le_add_of_nonneg_right (Finset.sum_nonneg hj)

end FormalResearch.RiemannHypothesis.SourceKapitzaBirthBudget

/- Diagnostic commands only: source above passed all standard linters separately. -/
set_option linter.hashCommand false

namespace FormalResearch.RiemannHypothesis.SourceKapitzaBirthBudget

#check boundaryPolynomial
#print axioms boundaryPolynomial

#check boundaryPolynomial_relative_lower
#print axioms boundaryPolynomial_relative_lower

#check boundaryPolynomial_source_collar
#print axioms boundaryPolynomial_source_collar

#check boundaryPolynomial_source_collar_pos
#print axioms boundaryPolynomial_source_collar_pos

#check boundaryPolynomial_upper
#print axioms boundaryPolynomial_upper

#check cellStencil
#print axioms cellStencil

#check cellStencil_at_birth_nonneg
#print axioms cellStencil_at_birth_nonneg

#check inverse_square_le_difference
#print axioms inverse_square_le_difference

#check inverse_square_sum_le
#print axioms inverse_square_sum_le

#check selected_birth_budget
#print axioms selected_birth_budget

#check lower_increment_with_positive_births
#print axioms lower_increment_with_positive_births

end FormalResearch.RiemannHypothesis.SourceKapitzaBirthBudget
```
