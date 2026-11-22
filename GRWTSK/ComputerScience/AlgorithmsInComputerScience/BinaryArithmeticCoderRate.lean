/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.ComputerScience.AlgorithmsInComputerScience.BinaryArithmeticCoder
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Base
import Mathlib.Data.Nat.Log
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# Bit accounting for binary arithmetic coding

For a bounded reference frame, the logarithms of successive selected width
ratios telescope. The fixed count and tag fields have unbounded total size as
the frame capacity grows, including on the empty word. For a streaming coder, the
analogous telescoping accounts for interval doublings. Relating doublings to
wire bits requires the coder's emission, pending-bit and finalization rules.
-/

open scoped BigOperators

namespace GRWTSK.ComputerScience.BinaryArithmeticCoder

/-- Bit accounting for a reference frame given its positive selected masses
and widths. The fixed count and canonical tag are followed by one octet per
escape. Adding the logarithms of the model-to-realized mass ratios to the
model loss gives the realized interval loss. -/
theorem boundedReferenceFrameLength_eq
    (n countBits tagBits escapes : ℕ) (width selectedMass : ℕ → ℝ)
    (width_pos : ∀ i ≤ n, 0 < width i)
    (mass_pos : ∀ i < n, 0 < selectedMass i) :
    (countBits : ℝ) + (tagBits : ℝ) + 8 * (escapes : ℝ) =
      (∑ i ∈ Finset.range n, -Real.log (selectedMass i) / Real.log 2) +
        (∑ i ∈ Finset.range n,
          Real.log (selectedMass i / (width (i + 1) / width i)) / Real.log 2) +
        8 * (escapes : ℝ) +
        ((countBits : ℝ) + ((tagBits : ℝ) - Real.log (width 0) / Real.log 2) +
          Real.log (width n) / Real.log 2) := by
  have scores :
      (∑ i ∈ Finset.range n, -Real.log (selectedMass i) / Real.log 2) +
        (∑ i ∈ Finset.range n,
          Real.log (selectedMass i / (width (i + 1) / width i)) / Real.log 2) =
        Real.log (width 0) / Real.log 2 - Real.log (width n) / Real.log 2 := by
    rw [← Finset.sum_add_distrib]
    calc
      _ = ∑ i ∈ Finset.range n,
          (Real.log (width i) / Real.log 2 - Real.log (width (i + 1)) / Real.log 2) := by
        refine Finset.sum_congr rfl ?_
        intro i hi
        have i_lt : i < n := Finset.mem_range.mp hi
        have current_ne : width i ≠ 0 := ne_of_gt (width_pos i (Nat.le_of_lt i_lt))
        have next_ne : width (i + 1) ≠ 0 :=
          ne_of_gt (width_pos (i + 1) (Nat.succ_le_of_lt i_lt))
        rw [Real.log_div (ne_of_gt (mass_pos i i_lt)) (div_ne_zero next_ne current_ne),
          Real.log_div next_ne current_ne]
        ring
      _ = _ := Finset.sum_range_sub' (fun i => Real.log (width i) / Real.log 2) n
  rw [scores]
  ring

/-- No fixed additive constant covers the empty-word overhead of all bounded
reference frames under the fixed-width layout. The table with two unit weights
encodes the empty word with zero interval loss and both fields equal to zero.
Their allotted widths are `⌈log₂(capacity + 1)⌉` and `⌈log₂(2 ^ capacity)⌉`. -/
theorem emptyReferenceFrame_no_uniform_overhead (overhead : ℝ) :
    ∃ capacity : ℕ,
      encode ⟨1, 1, by decide, by decide⟩ capacity [] = some ⟨0, 0⟩ ∧
      overhead < ((Nat.clog 2 (capacity + 1) + Nat.clog 2 (2 ^ capacity) : ℕ) : ℝ) := by
  obtain ⟨bits, hbits⟩ := exists_nat_gt overhead
  have htag : Nat.clog 2 (2 ^ bits) = bits := Nat.clog_pow 2 bits (by decide)
  refine ⟨bits, ?_, hbits.trans_le ?_⟩
  · simp only [encode, List.length_nil, Nat.zero_le, ite_true]
    rfl
  · rw [htag]
    exact_mod_cast Nat.le_add_left bits (Nat.clog 2 (bits + 1))

/-- Each post-symbol normalization doubles the selected child width. The total
number of doublings is the realized interval score plus the endpoint correction.
The widths immediately before the next split determine which interval losses
this formula accounts for. -/
theorem sum_renormalizations_eq_intervalScore_add_logWidthChange
    (n : ℕ) (width childWidth : ℕ → ℝ) (renormalizations : ℕ → ℕ)
    (width_pos : ∀ i ≤ n, 0 < width i)
    (child_pos : ∀ i < n, 0 < childWidth i)
    (next_width : ∀ i < n, width (i + 1) = 2 ^ renormalizations i * childWidth i) :
    (∑ i ∈ Finset.range n, (renormalizations i : ℝ)) =
      (∑ i ∈ Finset.range n, -Real.logb 2 (childWidth i / width i)) +
        (Real.logb 2 (width n) - Real.logb 2 (width 0)) := by
  calc
    _ = ∑ i ∈ Finset.range n,
        (-Real.logb 2 (childWidth i / width i) +
          (Real.logb 2 (width (i + 1)) - Real.logb 2 (width i))) := by
      refine Finset.sum_congr rfl ?_
      intro i hi
      have i_lt := Finset.mem_range.mp hi
      have child_ne := (child_pos i i_lt).ne'
      have width_ne := (width_pos i i_lt.le).ne'
      rw [Real.logb_div child_ne width_ne, next_width i i_lt,
        Real.logb_mul (pow_ne_zero _ (by norm_num)) child_ne,
        Real.logb_pow, Real.logb_self_eq_one (by norm_num)]
      ring
    _ = _ := by
      rw [Finset.sum_add_distrib, Finset.sum_range_sub (fun i => Real.logb 2 (width i)) n]

end GRWTSK.ComputerScience.BinaryArithmeticCoder
