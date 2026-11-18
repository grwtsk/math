/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.ComputerScience.AlgorithmsInComputerScience.AdaptiveIntegerCoding
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Base
import Mathlib.Tactic.NormNum

/-!
# Ideal bit costs of adaptive count rescaling

Each rescale event compares the normalized probability of the same selected bin
immediately before and immediately after floor-halving. The finite sum charges
one term per selected event. Resets, changes from incrementing counts, and
rounding by the arithmetic coder have their own costs.
-/

open scoped BigOperators

namespace GRWTSK.ComputerScience.AdaptiveIntegerCoding

/-- The increase in ideal bit cost for a selected bin at one rescale. -/
noncomputable def rescaleLoss (counts : List ℕ) (count : ℕ) : ℝ :=
  let oldMass := (count : ℝ) / counts.sum
  let newMass := (rescaleCount count : ℝ) / (counts.map rescaleCount).sum
  Real.logb 2 oldMass - Real.logb 2 newMass

/-- The ideal bit cost of one bin increases by at most log₂(128/43)
at a rescale of a positive count table with at most 256 bins. -/
theorem rescaleLoss_le (counts : List ℕ) (hsize : counts.length ≤ 256)
    (hpos : ∀ n ∈ counts, 0 < n) (count : ℕ) (hmem : count ∈ counts) :
    rescaleLoss counts count ≤ Real.logb 2 (128 / 43) := by
  have hc : 0 < (count : ℝ) := by exact_mod_cast hpos count hmem
  have hrescale : 0 < rescaleCount count :=
    Nat.lt_of_lt_of_le (by decide : 0 < 1) (Nat.le_max_left 1 (count / 2))
  have hr : 0 < (rescaleCount count : ℝ) := by exact_mod_cast hrescale
  have htotal : 0 < (counts.sum : ℝ) := by
    exact_mod_cast List.sum_pos_iff_exists_pos_nat.mpr ⟨count, hmem, hpos count hmem⟩
  have hscaled : 0 < ((counts.map rescaleCount).sum : ℝ) := by
    exact_mod_cast List.sum_pos_iff_exists_pos_nat.mpr
      ⟨rescaleCount count, List.mem_map_of_mem hmem, hrescale⟩
  have hbound : 43 * (count : ℝ) * (counts.map rescaleCount).sum ≤
      128 * (rescaleCount count : ℝ) * counts.sum := by
    exact_mod_cast rescale_probability_bound counts hsize hpos count hmem
  have hquot :
      ((count : ℝ) / counts.sum) / ((rescaleCount count : ℝ) / (counts.map rescaleCount).sum) ≤
        (128 / 43 : ℝ) := by
    rw [div_div_div_eq]
    apply (div_le_div_iff₀ (mul_pos htotal hr) (by norm_num : (0 : ℝ) < 43)).2
    simpa only [mul_assoc, mul_left_comm, mul_comm] using hbound
  have hp := div_pos hc htotal
  have hq := div_pos hr hscaled
  have hlog := Real.logb_le_logb_of_le (by norm_num : (1 : ℝ) < 2)
    (div_pos hp hq) hquot
  rw [Real.logb_div hp.ne' hq.ne'] at hlog
  exact hlog

/-- The table attaining the integer probability bound also attains the bit bound. -/
theorem rescaleLoss_sharp :
    rescaleLoss (3 :: List.replicate 255 1) 3 = Real.logb 2 (128 / 43) := by
  have h1 : rescaleCount 1 = 1 := rfl
  have h3 : rescaleCount 3 = 1 := rfl
  simp only [rescaleLoss, List.sum_cons, List.sum_replicate_nat, List.map_cons,
    List.map_replicate, h1, h3]
  rw [← Real.logb_div (by norm_num) (by norm_num)]
  norm_num

/-- Each index in the finite set is one rescale occurrence. The total increase
in ideal bit cost is bounded by the number of occurrences times the per-rescale
bound. The counts and selected bin may vary between occurrences. -/
theorem sum_rescaleLoss_le {ι : Type*} (events : Finset ι)
    (counts : ι → List ℕ) (selected : ι → ℕ)
    (hsize : ∀ i ∈ events, (counts i).length ≤ 256)
    (hpos : ∀ i ∈ events, ∀ n ∈ counts i, 0 < n)
    (hmem : ∀ i ∈ events, selected i ∈ counts i) :
    (∑ i ∈ events, rescaleLoss (counts i) (selected i)) ≤
      (events.card : ℝ) * Real.logb 2 (128 / 43) := by
  calc
    _ ≤ ∑ _i ∈ events, Real.logb 2 (128 / 43) :=
      Finset.sum_le_sum (fun i hi => rescaleLoss_le
        (counts i) (hsize i hi) (hpos i hi) (selected i) (hmem i hi))
    _ = _ := by simp

end GRWTSK.ComputerScience.AdaptiveIntegerCoding
