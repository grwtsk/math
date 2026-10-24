# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.DyadicNormBudget

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c9ac095a156a4517e278cc9378ce0e0d4b267e7` · SHA-256 `87857393157bb5fbdf14aea59055c8918d5cfb996104de53ff9d54aef5ad64a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib
import GRWTSK.Analysis.AsymptoticAnalysis.MassWeightedRecurrence

/-!
Research direction: grwtsk contributors.
Implementation prepared with ChatGPT assistance. Ordinary mathematical lemmas
and Mathlib retain their authorship. Kernel compilation has not been run for
this additive source. No arithmetic growth hypothesis is asserted.
-/

noncomputable section
namespace GRWTSK.Analysis.DyadicNormBudget
open scoped BigOperators

lemma mass_eq_sum (loss : ℕ → ℝ) (J : ℕ) :
    ASBNP04.mass loss J = ∑ j ∈ Finset.range J, loss j := by
  induction J with
  | zero => simp [ASBNP04.mass]
  | succ J ih => simp [ASBNP04.mass, Finset.sum_range_succ, ih]

/-- Reuse the existing homogeneous iteration, with an exact finite-sum adapter. -/
theorem finite_iteration (L loss : ℕ → ℝ)
    (hstep : ∀ j, L (j+1) ≤ Real.exp (loss j) * L j) :
    ∀ J, L J ≤ Real.exp (∑ j ∈ Finset.range J, loss j) * L 0 := by
  intro J
  have h := ASBNP04.shifted_homogeneous_iteration L loss 1 0
    (fun j => by simpa only [add_zero, one_mul] using hstep j) J
  simpa only [add_zero, one_mul, mass_eq_sum] using h

/-- An all-depth logarithmic budget is an explicit hypothesis. -/
theorem normalized_log_le (L loss : ℕ → ℝ) (hL : ∀ n, 0 < L n)
    (hstep : ∀ j, L (j+1) ≤ Real.exp (loss j) * L j) (J : ℕ) :
    Real.log (L J) / (2:ℝ)^J ≤
      (Real.log (L 0) + ∑ j ∈ Finset.range J, loss j) / (2:ℝ)^J := by
  have h := Real.log_le_log (hL J) (finite_iteration L loss hstep J)
  rw [Real.log_mul (Real.exp_ne_zero _) (hL 0).ne', Real.log_exp] at h
  apply div_le_div_of_nonneg_right _ (pow_nonneg (by norm_num : (0:ℝ) ≤ 2) J)
  linarith

/-- The analytic limit of the complete loss budget remains a visible premise. -/
theorem dyadic_log_tendsto_zero (L loss : ℕ → ℝ)
    (hL : ∀ n, 1 ≤ L n)
    (hstep : ∀ j, L (j+1) ≤ Real.exp (loss j) * L j)
    (hbudget : Filter.Tendsto
      (fun J => (Real.log (L 0)+∑ j ∈ Finset.range J, loss j)/(2:ℝ)^J)
      Filter.atTop (nhds 0)) :
    Filter.Tendsto (fun J => Real.log (L J)/(2:ℝ)^J) Filter.atTop (nhds 0) := by
  apply squeeze_zero
  · intro J
    exact div_nonneg (Real.log_nonneg (hL J)) (pow_nonneg (by norm_num) J)
  · intro J
    exact normalized_log_le L loss (fun n => lt_of_lt_of_le (by norm_num) (hL n)) hstep J
  · exact hbudget

end GRWTSK.Analysis.DyadicNormBudget
#print axioms GRWTSK.Analysis.DyadicNormBudget.finite_iteration
#print axioms GRWTSK.Analysis.DyadicNormBudget.dyadic_log_tendsto_zero
```
