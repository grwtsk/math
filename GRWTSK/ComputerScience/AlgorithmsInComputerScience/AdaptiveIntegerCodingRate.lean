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

/-- At an actual rescale event, the cost bound compares the post-increment
count table with the successor state's weights, for the same valid bin. -/
theorem rescaleInput_logMass_le (cfg : Config) (s : State) (byte : Fin 256)
    (hs : ValidState cfg s) (counts : List ℕ)
    (hevent : rescaleInput cfg s byte = some counts) (j : Fin counts.length) :
    Real.logb 2 ((counts[j] : ℝ) / counts.sum) -
        Real.logb 2
          (((((update cfg s byte).weights[j.val]?).getD 0 : ℕ) : ℝ) /
            (update cfg s byte).weights.sum) ≤
      Real.logb 2 (128 / 43) := by
  obtain ⟨hlen, hp, _, hweights⟩ := rescaleInput_spec cfg s byte hs counts hevent
  have hsize : counts.length ≤ 256 := by
    rw [hlen]
    exact cfg.directBound
  rw [hweights]
  simpa [rescaleLoss, List.getElem?_map, List.getElem?_eq_getElem j.isLt] using
    rescaleLoss_le counts hsize hp counts[j] (List.getElem_mem j.isLt)

set_option maxRecDepth 4096 in
/-- The sharp table occurs on the second zero byte from initialization for a
valid configuration, before its reset. The selected bin for that byte is zero. -/
theorem rescaleLoss_sharp_reachable :
    ∃ cfg : Config, ∃ counts : List ℕ,
      let zero : Fin 256 := 0
      let s := update cfg (initial cfg) zero
      ValidState cfg s ∧ rescaleInput cfg s zero = some counts ∧
        rescaleLoss counts ((counts[binOf cfg zero]?).getD 0) = Real.logb 2 (128 / 43) := by
  let cfg : Config := ⟨255, 258, 3, by decide, by decide, by decide, by decide, by decide⟩
  refine ⟨cfg, 3 :: List.replicate 255 1, ?_, ?_, ?_⟩
  · exact update_valid cfg (initial cfg) 0 (initial_valid cfg)
  · rfl
  · exact rescaleLoss_sharp

/-- The rescale events after which the trace has another byte to score. Index
`i` processes byte `i` and charges the next byte, at index `i + 1`. -/
def followingRescaleIndices (cfg : Config) (initialState : State) (xs : List (Fin 256)) :
    Finset (Fin (xs.length - 1)) :=
  Finset.univ.filter fun i =>
    let before := (xs.take i.val).foldl (update cfg) initialState
    let byte := xs[i.val]'(by have := i.isLt; omega)
    (rescaleInput cfg before byte).isSome

/-- At a rescale event, the following byte is scored in the post-increment
table and in the actual successor table. A position without a rescale has
zero charge. -/
noncomputable def followingRescaleLoss (cfg : Config) (initialState : State)
    (xs : List (Fin 256)) (i : Fin (xs.length - 1)) : ℝ :=
  let before := (xs.take i.val).foldl (update cfg) initialState
  let byte := xs[i.val]'(by have := i.isLt; omega)
  let next := xs[i.val + 1]'(by have := i.isLt; omega)
  let bin := binOf cfg next
  match rescaleInput cfg before byte with
  | none => 0
  | some counts =>
    let after := (update cfg before byte).weights
    Real.logb 2 (((counts[bin]?).getD 0 : ℕ) / (counts.sum : ℝ)) -
      Real.logb 2 (((after[bin]?).getD 0 : ℕ) / (after.sum : ℝ))

/-- On an adaptive trace, the total increase in ideal bit cost charged to bytes
immediately following a rescale is at most log₂(128/43) per such byte. -/
theorem sum_followingRescaleLoss_le (cfg : Config) (initialState : State)
    (xs : List (Fin 256)) (hvalid : ValidState cfg initialState) :
    (∑ i ∈ followingRescaleIndices cfg initialState xs,
      followingRescaleLoss cfg initialState xs i) ≤
      ((followingRescaleIndices cfg initialState xs).card : ℝ) *
        Real.logb 2 (128 / 43) := by
  calc
    _ ≤ ∑ _i ∈ followingRescaleIndices cfg initialState xs, Real.logb 2 (128 / 43) := by
      refine Finset.sum_le_sum fun i hi => ?_
      let before := (xs.take i.val).foldl (update cfg) initialState
      let byte := xs[i.val]'(by have := i.isLt; omega)
      let next := xs[i.val + 1]'(by have := i.isLt; omega)
      have hstate : ValidState cfg before := replay_valid cfg initialState (xs.take i.val) hvalid
      have hs : (rescaleInput cfg before byte).isSome = true := by
        simpa [followingRescaleIndices, before, byte] using hi
      cases he : rescaleInput cfg before byte with
      | none => simp [he] at hs
      | some counts =>
        have hlen := (rescaleInput_spec cfg before byte hstate counts he).1
        have hj : binOf cfg next < counts.length := by
          rw [hlen]
          exact Nat.lt_succ_of_le (Nat.min_le_right _ _)
        let bin : Fin counts.length := ⟨binOf cfg next, hj⟩
        have hcost := rescaleInput_logMass_le cfg before byte hstate counts he bin
        have hstep := he
        simp only [before, byte] at hstep
        have hindex := hj
        simp only [next] at hindex
        simpa only [followingRescaleLoss, hstep, Fin.getElem_fin, List.getElem?_eq_getElem hindex,
          Option.getD_some, bin, before, byte, next] using hcost
    _ = _ := by simp

end GRWTSK.ComputerScience.AdaptiveIntegerCoding
