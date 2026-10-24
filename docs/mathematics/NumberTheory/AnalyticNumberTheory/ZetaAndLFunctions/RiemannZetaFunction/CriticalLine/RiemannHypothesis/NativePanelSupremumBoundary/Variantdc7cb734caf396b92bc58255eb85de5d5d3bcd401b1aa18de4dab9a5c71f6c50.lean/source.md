# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NativePanelSupremumBoundary.Variantdc7cb734caf396b92bc58255eb85de5d5d3bcd401b1aa18de4dab9a5c71f6c50

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a3d2c338ca4e32f75d106eeae75799543f7f31f2` · SHA-256 `dc7cb734caf396b92bc58255eb85de5d5d3bcd401b1aa18de4dab9a5c71f6c50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.NativeCellBound

/-!
# A literal native two-atom comparison has an unattained positive-panel supremum

CC01's cell monotonicity does not itself justify attainment of an infinite-tail
supremum. This separate comparison starts with negative storage at two and has
constant positive storage from three onward. Its unchanged native hinge
primitive increases to a finite limit without reaching it on [3,infinity).
A finite-horizon endpoint maximum and an infinite supremum are distinct.
This does not replace the ordinary-prime coefficients or disprove any extra
arithmetic theorem proving attainment for that source.

Human native-clock and source-fidelity direction: grwtsk contributors. Local
comparison and limit consumer: OpenAI Codex. Square roots and limits retain
Mathlib identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.NativePanelSupremumBoundary
open Filter ArithmeticPrimitive
open scoped Topology
noncomputable section

def comparisonCoefficient (n : ℕ) : ℝ := if n = 2 then -1 / 2 else if n = 3 then 3 / 2 else 0

def limitLevel : ℝ := -1 / Real.sqrt 2 + 3 / Real.sqrt 3

private theorem finite_inventory_retains_two_atoms {x : ℝ} {M : ℕ} (hM : 3 ≤ M) :
    finitePrimitive comparisonCoefficient x M = finitePrimitive comparisonCoefficient x 3 := by
  unfold finitePrimitive
  congr 1
  symm
  apply Finset.sum_subset
  · intro n hn
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1, (Finset.mem_Icc.mp hn).2.trans hM⟩
  · intro n hn hnot
    have hn2 := (Finset.mem_Icc.mp hn).1
    have hn3 : 3 < n := by
      by_contra h
      exact hnot (Finset.mem_Icc.mpr ⟨hn2, by omega⟩)
    simp [comparisonCoefficient, show n ≠ 2 by omega, show n ≠ 3 by omega]

theorem exact_comparison_tail {x : ℝ} (hx : 3 ≤ x) :
    closedPrimitive comparisonCoefficient x = limitLevel - 2 / Real.sqrt x := by
  have hm : 3 ≤ ⌊x⌋₊ := Nat.le_floor hx
  rw [closedPrimitive, finite_inventory_retains_two_atoms hm]
  norm_num [finitePrimitive, comparisonCoefficient, limitLevel, Finset.sum_Icc_succ_top]
  have h3 : (3 : ℝ) / Real.sqrt 3 = Real.sqrt 3 := by
    rw [div_eq_iff (by positivity)]
    nlinarith [Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 3)]
  simp only [div_eq_mul_inv] at h3 ⊢
  nlinarith

theorem initial_storage_negative : cumulativeDiscrepancy comparisonCoefficient 2 = -1 / 2 := by
  norm_num [cumulativeDiscrepancy, comparisonCoefficient]

theorem tail_storage_positive {N : ℕ} (hN : 3 ≤ N) :
    cumulativeDiscrepancy comparisonCoefficient N = 1 := by
  have hs : (∑ n ∈ Finset.Icc 2 N, comparisonCoefficient n) =
      ∑ n ∈ Finset.Icc 2 3, comparisonCoefficient n := by
    symm
    apply Finset.sum_subset
    · intro n hn
      exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1, (Finset.mem_Icc.mp hn).2.trans hN⟩
    · intro n hn hnot
      have hn2 := (Finset.mem_Icc.mp hn).1
      have hn3 : 3 < n := by
        by_contra h
        exact hnot (Finset.mem_Icc.mpr ⟨hn2, by omega⟩)
      simp [comparisonCoefficient, show n ≠ 2 by omega, show n ≠ 3 by omega]
  rw [cumulativeDiscrepancy, hs]
  norm_num [comparisonCoefficient, Finset.sum_Icc_succ_top]

theorem tail_limit_strictly_above_every_point {x : ℝ} (hx : 3 ≤ x) :
    closedPrimitive comparisonCoefficient x < limitLevel := by
  rw [exact_comparison_tail hx]
  have hp : 0 < 2 / Real.sqrt x := by positivity
  linarith

theorem comparison_tail_tends_to_limit :
    Tendsto (closedPrimitive comparisonCoefficient) atTop (𝓝 limitLevel) := by
  have hs : Tendsto (fun x : ℝ ↦ Real.sqrt x) atTop atTop := Real.tendsto_sqrt_atTop
  have hi := tendsto_inv_atTop_zero.comp hs
  have h := (tendsto_const_nhds : Tendsto (fun _ : ℝ ↦ limitLevel) atTop (𝓝 limitLevel)).sub
    (hi.const_mul 2)
  have hn : Tendsto (fun x : ℝ ↦ limitLevel - 2 / Real.sqrt x) atTop (𝓝 limitLevel) := by
    simpa [Function.comp_def, div_eq_mul_inv] using h
  apply hn.congr'
  filter_upwards [eventually_ge_atTop (3 : ℝ)] with x hx
  exact (exact_comparison_tail hx).symm

theorem no_attained_positive_tail_maximum :
    ¬ ∃ x : ℝ, 3 ≤ x ∧ ∀ y : ℝ, 3 ≤ y →
      closedPrimitive comparisonCoefficient y ≤ closedPrimitive comparisonCoefficient x := by
  rintro ⟨x, hx, hb⟩
  have hg := comparison_tail_tends_to_limit.eventually
    (eventually_gt_nhds (tail_limit_strictly_above_every_point hx))
  obtain ⟨y, hy, hbig⟩ := (hg.and (eventually_ge_atTop (3 : ℝ))).exists
  exact (not_lt_of_ge (hb y hbig)) hy

end
end GRWTSK.RiemannHypothesis.Conversation.NativePanelSupremumBoundary
```
