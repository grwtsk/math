/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.ComputerScience.AlgorithmsInComputerScience.AdaptiveIntegerCodingRate

import Mathlib.Algebra.BigOperators.Fin

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.ComputerScience.AdaptiveIntegerCoding

private theorem twice_rescaled_total_bounds (counts : List Nat)
    (hpos : ∀ c ∈ counts, 0 < c) :
    2 * (counts.map rescaleCount).sum ≤ counts.sum + counts.length ∧
      (counts.length < counts.sum →
        2 * (counts.map rescaleCount).sum < counts.sum + counts.length) := by
  induction counts with
  | nil => simp
  | cons c rest ih =>
    have hc : 0 < c := hpos c List.mem_cons_self
    have hrest : ∀ d ∈ rest, 0 < d := fun d hd => hpos d (List.mem_cons_of_mem c hd)
    obtain ⟨htail, hstrict⟩ := ih hrest
    have hcount : 2 * rescaleCount c ≤ c + 1 := by
      unfold rescaleCount
      omega
    simp only [List.map_cons, List.sum_cons, List.length_cons]
    refine ⟨by omega, ?_⟩
    intro hlarge
    by_cases h : 1 < c
    · have hcount' : 2 * rescaleCount c < c + 1 := by
        unfold rescaleCount
        omega
      omega
    · have hlarge' : rest.length < rest.sum := by omega
      have htail' := hstrict hlarge'
      omega

/-- The actual post-rescale total leaves room for at least the displayed
number of further non-reset increments before another rescale. -/
theorem rescaleInput_successor_deficit (cfg : Config) (s : State) (byte : Fin 256)
    (hs : ValidState cfg s) (counts : List Nat)
    (hevent : rescaleInput cfg s byte = some counts) :
    (update cfg s byte).weights.sum + ((cfg.threshold - (cfg.direct + 1)) / 2 + 1) ≤
      cfg.threshold := by
  obtain ⟨hlen, hpos, hsum, hweights⟩ := rescaleInput_spec cfg s byte hs counts hevent
  have hlarge : counts.length < counts.sum := by simpa only [hlen, hsum] using cfg.countRoom
  have hdrop := (twice_rescaled_total_bounds counts hpos).2 hlarge
  rw [hlen, hsum] at hdrop
  rw [hweights]
  have hroom := cfg.countRoom
  omega

/-- The population drop at each actual event, in trace order. Reset positions
do not add an entry. -/
def rescaleDrops (cfg : Config) (s : State) : List (Fin 256) → List Nat
  | [] => []
  | byte :: tail =>
    let next := update cfg s byte
    let rest := rescaleDrops cfg next tail
    if (rescaleInput cfg s byte).isSome then
      (cfg.threshold - next.weights.sum) :: rest
    else rest

private theorem rescaleDrops_append (cfg : Config) (s : State) (xs ys : List (Fin 256)) :
    rescaleDrops cfg s (xs ++ ys) =
      rescaleDrops cfg s xs ++ rescaleDrops cfg (xs.foldl (update cfg) s) ys := by
  induction xs generalizing s with
  | nil => rfl
  | cons byte xs ih =>
    simp only [List.cons_append, rescaleDrops, List.foldl_cons, ih]
    split <;> rfl

private def rescaleAt (cfg : Config) (s : State) (xs : List (Fin 256)) (i : Nat) : Bool :=
  match xs[i]? with
  | none => false
  | some byte => (rescaleInput cfg ((xs.take i).foldl (update cfg) s) byte).isSome

private theorem rescaleDrops_length_eq_sum (cfg : Config) (s : State) (xs : List (Fin 256)) :
    (rescaleDrops cfg s xs).length =
      ∑ i : Fin xs.length, if rescaleAt cfg s xs i.val then 1 else 0 := by
  induction xs generalizing s with
  | nil => simp [rescaleDrops]
  | cons byte xs ih =>
    simp only [List.length_cons, Fin.sum_univ_succ, Fin.val_zero, Fin.val_succ]
    simp only [rescaleAt, List.getElem?_cons_zero, List.getElem?_cons_succ,
      List.take_zero, List.foldl_nil, List.take_succ_cons, List.foldl_cons]
    change (rescaleDrops cfg s (byte :: xs)).length =
      (if (rescaleInput cfg s byte).isSome then 1 else 0) +
        ∑ i : Fin xs.length, if rescaleAt cfg (update cfg s byte) xs i.val then 1 else 0
    rw [← ih (update cfg s byte)]
    simp only [rescaleDrops]
    split <;> simp [Nat.add_comm, *]

/-- The eligible scan uses exactly the events in the scorer's finite index set. -/
theorem card_followingRescaleIndices_eq_eligibleDrops (cfg : Config) (s : State)
    (xs : List (Fin 256)) :
    (followingRescaleIndices cfg s xs).card =
      (rescaleDrops cfg s (xs.take (xs.length - 1))).length := by
  rw [rescaleDrops_length_eq_sum, followingRescaleIndices, Finset.card_eq_sum_ones,
    Finset.sum_filter]
  let n := xs.length - 1
  have hn : n ≤ xs.length := Nat.sub_le _ _
  have hlen : (xs.take n).length = n := List.length_take_of_le hn
  refine Fintype.sum_equiv (finCongr hlen.symm) _ _ fun i => ?_
  have hi : i.val < xs.length := Nat.lt_of_lt_of_le i.isLt hn
  have hit : i.val < xs.length - 1 := i.isLt
  simp [rescaleAt, List.getElem?_take_of_lt hit, List.getElem?_eq_getElem hi,
    List.take_take, Nat.min_eq_left hit.le]

private theorem no_reset_phase (cfg : Config) (s : State) (byte : Fin 256)
    (h : s.phase + 1 ≠ cfg.resetEvery) :
    (update cfg s byte).phase = s.phase + 1 := by
  simp [update, h]

private theorem reset_free_balance (cfg : Config) (s : State) (xs : List (Fin 256))
    (hs : ValidState cfg s) (hroom : s.phase + xs.length < cfg.resetEvery) :
    (xs.foldl (update cfg) s).phase = s.phase + xs.length ∧
    (xs.foldl (update cfg) s).weights.sum + (rescaleDrops cfg s xs).sum =
      s.weights.sum + xs.length := by
  induction xs generalizing s with
  | nil => simp [rescaleDrops]
  | cons byte xs ih =>
    let next := update cfg s byte
    have hr : s.phase + 1 ≠ cfg.resetEvery := by simp at hroom; omega
    have hphase : next.phase = s.phase + 1 := no_reset_phase cfg s byte hr
    have htail : next.phase + xs.length < cfg.resetEvery := by rw [hphase]; simp at hroom; omega
    obtain ⟨hp, hsum⟩ := ih next (update_valid cfg s byte hs) htail
    refine ⟨by rw [List.foldl_cons, hp, hphase, List.length_cons]; omega, ?_⟩
    cases he : rescaleInput cfg s byte with
    | none =>
      have hu := update_total_of_no_reset_no_rescale cfg s byte hs hr he
      simp only [List.foldl_cons, rescaleDrops, he, Option.isSome_none, Bool.false_eq_true,
        ite_false, List.length_cons]
      change (xs.foldl (update cfg) next).weights.sum + (rescaleDrops cfg next xs).sum = _
      change next.weights.sum = _ at hu
      omega
    | some counts =>
      have hb := ((rescaleInput_isSome_iff cfg s byte hs).mp (by simp [he])).2
      have hv := (update_valid cfg s byte hs).total_lt
      change next.weights.sum < cfg.threshold at hv
      simp only [List.foldl_cons, rescaleDrops, he, Option.isSome_some, ite_true,
        List.sum_cons, List.length_cons]
      change (xs.foldl (update cfg) next).weights.sum +
        (cfg.threshold - next.weights.sum + (rescaleDrops cfg next xs).sum) = _
      omega

/-- Event number j+1 occurs immediately after a prefix with j drops. Its
one-based time within the reset-free block equals the initial deficit plus
those actual drops. -/
theorem rescale_event_time_of_prefix (cfg : Config) (s : State)
    (prior : List (Fin 256)) (byte : Fin 256) (j : Nat)
    (hs : ValidState cfg s) (hroom : s.phase + prior.length < cfg.resetEvery)
    (hj : (rescaleDrops cfg s prior).length = j)
    (hevent : (rescaleInput cfg (prior.foldl (update cfg) s) byte).isSome = true) :
    prior.length + 1 = cfg.threshold - s.weights.sum +
      ((rescaleDrops cfg s prior).take j).sum := by
  have hbalance := (reset_free_balance cfg s prior hs hroom).2
  have hhit := ((rescaleInput_isSome_iff cfg _ byte (replay_valid cfg s prior hs)).mp hevent).2
  have hstart := hs.total_lt
  rw [← hj, List.take_length]
  omega

/-- At an eligible event in an initialized block, the one-based block
time equals the initial deficit plus all earlier drops in that block. -/
theorem followingRescale_event_time_of_block (cfg : Config) (xs : List (Fin 256))
    (i : Fin (xs.length - 1)) (start j : Nat) (hstart : start ≤ i.val)
    (hinit : (xs.take start).foldl (update cfg) (initial cfg) = initial cfg)
    (hroom : i.val - start < cfg.resetEvery)
    (hi : i ∈ followingRescaleIndices cfg (initial cfg) xs)
    (hj : (rescaleDrops cfg (initial cfg) ((xs.drop start).take (i.val - start))).length = j) :
    i.val - start + 1 = cfg.threshold - (cfg.direct + 1) +
      ((rescaleDrops cfg (initial cfg) ((xs.drop start).take (i.val - start))).take j).sum := by
  have hi' : i.val < xs.length := by have := i.isLt; omega
  let prior := (xs.drop start).take (i.val - start)
  have hlen : prior.length = i.val - start := by
    change ((xs.drop start).take (i.val - start)).length = _
    apply List.length_take_of_le
    rw [List.length_drop]
    omega
  have hsplit : xs.take i.val = xs.take start ++ prior := by
    have h := List.take_add (l := xs) (i := start) (j := i.val - start)
    rwa [Nat.add_sub_cancel' hstart] at h
  have he :
      (rescaleInput cfg (prior.foldl (update cfg) (initial cfg)) xs[i.val]).isSome = true := by
    simpa [followingRescaleIndices, hsplit, List.foldl_append, hinit] using hi
  have h := rescale_event_time_of_prefix cfg (initial cfg) prior xs[i.val] j
    (initial_valid cfg) (by simpa [initial, hlen] using hroom) hj he
  simpa only [hlen, initial, List.sum_replicate_nat, Nat.mul_one] using h

private theorem reset_free_count_spacing (cfg : Config) (s : State) (xs : List (Fin 256))
    (hs : ValidState cfg s) (hroom : s.phase + xs.length < cfg.resetEvery) :
    let gap := (cfg.threshold - (cfg.direct + 1)) / 2 + 1
    let count := (rescaleDrops cfg s xs).length
    0 < count → cfg.threshold - s.weights.sum + (count - 1) * gap ≤ xs.length := by
  let gap := (cfg.threshold - (cfg.direct + 1)) / 2 + 1
  change 0 < (rescaleDrops cfg s xs).length →
    cfg.threshold - s.weights.sum + ((rescaleDrops cfg s xs).length - 1) * gap ≤ xs.length
  induction xs generalizing s with
  | nil => simp [rescaleDrops]
  | cons byte xs ih =>
    let next := update cfg s byte
    let k := (rescaleDrops cfg next xs).length
    have hr : s.phase + 1 ≠ cfg.resetEvery := by simp at hroom; omega
    have hp : next.phase = s.phase + 1 := no_reset_phase cfg s byte hr
    have htail : next.phase + xs.length < cfg.resetEvery := by rw [hp]; simp at hroom; omega
    have hv := update_valid cfg s byte hs
    have hind : 0 < k → cfg.threshold - next.weights.sum + (k - 1) * gap ≤ xs.length :=
      ih next hv htail
    cases he : rescaleInput cfg s byte with
    | none =>
      have hu : next.weights.sum = s.weights.sum + 1 :=
        update_total_of_no_reset_no_rescale cfg s byte hs hr he
      have ht : next.weights.sum < cfg.threshold := hv.total_lt
      simp only [rescaleDrops, he, Option.isSome_none, Bool.false_eq_true, ite_false, List.length_cons]
      change 0 < k → cfg.threshold - s.weights.sum + (k - 1) * gap ≤ xs.length + 1
      intro hk
      have := hind hk
      omega
    | some counts =>
      have hb := ((rescaleInput_isSome_iff cfg s byte hs).mp (by simp [he])).2
      have hg : next.weights.sum + gap ≤ cfg.threshold :=
        rescaleInput_successor_deficit cfg s byte hs counts he
      simp only [rescaleDrops, he, Option.isSome_some, ite_true, List.length_cons]
      change 0 < k + 1 → cfg.threshold - s.weights.sum + (k + 1 - 1) * gap ≤ xs.length + 1
      intro _
      cases hk : k with
      | zero => omega
      | succ k' =>
        have h := hind (by omega)
        rw [hk, Nat.succ_sub_one] at h
        rw [Nat.add_sub_cancel, Nat.succ_mul]
        omega

/-- Maximum number of events allowed by the threshold and minimum gap in
a non-reset block of the specified length. -/
def rescaleBlockBound (cfg : Config) (m : Nat) : Nat :=
  let deficit := cfg.threshold - (cfg.direct + 1)
  if m < deficit then 0 else 1 + (m - deficit) / (deficit / 2 + 1)

private theorem rescaleDrops_initial_block_le (cfg : Config) (xs : List (Fin 256))
    (hroom : xs.length < cfg.resetEvery) :
    (rescaleDrops cfg (initial cfg) xs).length ≤ rescaleBlockBound cfg xs.length := by
  let d := cfg.threshold - (cfg.direct + 1)
  let g := d / 2 + 1
  let k := (rescaleDrops cfg (initial cfg) xs).length
  change k ≤ if xs.length < d then 0 else 1 + (xs.length - d) / g
  by_cases hk : 0 < k
  · have h : d + (k - 1) * g ≤ xs.length := by
      simpa [initial, d, g, k] using
        reset_free_count_spacing cfg (initial cfg) xs (initial_valid cfg)
          (by simpa [initial] using hroom) hk
    rw [ite_eq_right (by omega : ¬ xs.length < d)]
    have hd : k - 1 ≤ (xs.length - d) / g :=
      (Nat.le_div_iff_mul_le (by omega : 0 < g)).mpr (by omega)
    omega
  · have hz : k = 0 := by omega
    simp [hz]

/-- A complete reset period splits into its non-reset prefix and one
uncharged reset. The suffix starts from the original initial state. -/
theorem rescaleDrops_split_full_period (cfg : Config) (xs : List (Fin 256))
    (hlen : cfg.resetEvery ≤ xs.length) :
    rescaleDrops cfg (initial cfg) xs =
      rescaleDrops cfg (initial cfg) (xs.take (cfg.resetEvery - 1)) ++
        rescaleDrops cfg (initial cfg) (xs.drop cfg.resetEvery) := by
  let k := cfg.resetEvery - 1
  have hpos := cfg.positivePeriod
  have hk : k + 1 = cfg.resetEvery := by dsimp [k]; omega
  have hi : k < xs.length := by omega
  let front := xs.take k
  let s := front.foldl (update cfg) (initial cfg)
  have hf : front.length = k := List.length_take_of_le (by omega)
  have hroom : (initial cfg).phase + front.length < cfg.resetEvery := by
    simp only [initial, hf, Nat.zero_add]
    omega
  have hphase : s.phase + 1 = cfg.resetEvery := by
    have hp := (reset_free_balance cfg (initial cfg) front (initial_valid cfg) hroom).1
    change s.phase = _ at hp
    simp [initial, hf] at hp
    omega
  have hsplit : xs = front ++ xs[k] :: xs.drop cfg.resetEvery := by
    have ht := List.take_succ_eq_append_getElem hi
    rw [hk] at ht
    calc
      xs = xs.take cfg.resetEvery ++ xs.drop cfg.resetEvery :=
        (List.take_append_drop _ _).symm
      _ = _ := by simp only [ht, front, List.append_assoc, List.singleton_append]
  conv_lhs => rw [hsplit, rescaleDrops_append]
  change rescaleDrops cfg (initial cfg) front ++
    rescaleDrops cfg s (xs[k] :: xs.drop cfg.resetEvery) = _
  simp [rescaleDrops, rescaleInput, update, hphase, front, k]

private theorem rescaleDrops_initial_length_le (cfg : Config) (xs : List (Fin 256)) :
    (rescaleDrops cfg (initial cfg) xs).length ≤
      (xs.length / cfg.resetEvery) * rescaleBlockBound cfg (cfg.resetEvery - 1) +
        rescaleBlockBound cfg (xs.length % cfg.resetEvery) := by
  let p := cfg.resetEvery
  let u := rescaleBlockBound cfg (p - 1)
  have hp : 0 < p := cfg.positivePeriod
  change (rescaleDrops cfg (initial cfg) xs).length ≤
    (xs.length / p) * u + rescaleBlockBound cfg (xs.length % p)
  induction hn : xs.length using Nat.strong_induction_on generalizing xs with
  | h n ih =>
    by_cases hshort : n < p
    · have h := rescaleDrops_initial_block_le cfg xs (by omega)
      simpa [Nat.div_eq_of_lt hshort, Nat.mod_eq_of_lt hshort, hn] using h
    · have hfull : p ≤ xs.length := by omega
      let suffix := xs.drop p
      have hs : suffix.length = n - p := by simp [suffix, hn]
      have hf : (xs.take (p - 1)).length = p - 1 := List.length_take_of_le (by omega)
      have hfront : (rescaleDrops cfg (initial cfg) (xs.take (p - 1))).length ≤ u := by
        simpa [hf, u] using
          rescaleDrops_initial_block_le cfg (xs.take (p - 1)) (by omega)
      have htail := ih (n - p) (by omega) suffix hs
      have hn' : n = (n - p) + p := by omega
      have hdiv : n / p = (n - p) / p + 1 := by
        conv_lhs => rw [hn', Nat.add_div_right _ hp]
      have hmod : n % p = (n - p) % p := by
        conv_lhs => rw [hn', Nat.add_mod_right]
      rw [rescaleDrops_split_full_period cfg xs hfull, List.length_append, hdiv, hmod,
        Nat.add_mul, Nat.one_mul]
      change (rescaleDrops cfg (initial cfg) (xs.take (p - 1))).length +
        (rescaleDrops cfg (initial cfg) suffix).length ≤ _
      omega

/-- Threshold-sensitive bound on the actual following-byte rescale index set. -/
theorem card_followingRescaleIndices_initial_threshold_le (cfg : Config) (xs : List (Fin 256)) :
    (followingRescaleIndices cfg (initial cfg) xs).card ≤
      ((xs.length - 1) / cfg.resetEvery) * rescaleBlockBound cfg (cfg.resetEvery - 1) +
        rescaleBlockBound cfg ((xs.length - 1) % cfg.resetEvery) := by
  rw [card_followingRescaleIndices_eq_eligibleDrops]
  have hlen : (xs.take (xs.length - 1)).length = xs.length - 1 :=
    List.length_take_of_le (Nat.sub_le _ _)
  simpa only [hlen] using rescaleDrops_initial_length_le cfg (xs.take (xs.length - 1))

/-- The sharper event cardinality multiplies the original ideal charge. -/
theorem sum_followingRescaleLoss_initial_threshold_le (cfg : Config) (xs : List (Fin 256)) :
    (∑ i ∈ followingRescaleIndices cfg (initial cfg) xs,
      followingRescaleLoss cfg (initial cfg) xs i) ≤
      ((((xs.length - 1) / cfg.resetEvery) * rescaleBlockBound cfg (cfg.resetEvery - 1) +
        rescaleBlockBound cfg ((xs.length - 1) % cfg.resetEvery) : Nat) : ℝ) *
        Real.logb 2 (128 / 43) := by
  refine (sum_followingRescaleLoss_le cfg (initial cfg) xs (initial_valid cfg)).trans ?_
  exact mul_le_mul_of_nonneg_right
    (by exact_mod_cast card_followingRescaleIndices_initial_threshold_le cfg xs)
    (Real.logb_nonneg (by norm_num) (by norm_num))

/-- The same event-count multiplier applies to the two-bin ideal bound. -/
theorem sum_followingRescaleLoss_binary_initial_threshold_le (cfg : Config)
    (xs : List (Fin 256)) (hdirect : cfg.direct = 1) :
    (∑ i ∈ followingRescaleIndices cfg (initial cfg) xs,
      followingRescaleLoss cfg (initial cfg) xs i) ≤
      ((((xs.length - 1) / cfg.resetEvery) * rescaleBlockBound cfg (cfg.resetEvery - 1) +
        rescaleBlockBound cfg ((xs.length - 1) % cfg.resetEvery) : Nat) : ℝ) *
        Real.logb 2 (3 / 2) := by
  refine (sum_followingRescaleLoss_binary_le cfg (initial cfg) xs
    (initial_valid cfg) hdirect).trans ?_
  exact mul_le_mul_of_nonneg_right
    (by exact_mod_cast card_followingRescaleIndices_initial_threshold_le cfg xs)
    (Real.logb_nonneg (by norm_num) (by norm_num))

end GRWTSK.ComputerScience.AdaptiveIntegerCoding
