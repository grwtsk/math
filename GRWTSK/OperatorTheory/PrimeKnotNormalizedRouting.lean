/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.PrimeKnotAlexanderSpectralTriple

/-!
# A quarter bound for row-normalized Alexander routing

Nonnegative weights on knots contribute complete, self-inclusive blocks
to the two-hop incidence matrix. A knot incident to m slots contributes
m² entries. At most m²/4 of those entries follow a successor whose first
four iterates at every slot are distinct. The result applies before
deleting any diagonal or other incidence entries.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators Classical
open Fin.NatCast

namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander

variable {Slot Prime Knot : Type*} [Fintype Slot] [Fintype Knot]

/-- The ordinary finite two-hop sum, with weights attached to knots. -/
def incidenceEntry (s : Source Prime Knot) (encode : Slot → Prime)
    (weight : Knot → ℝ) (i j : Slot) : ℝ :=
  ∑ k, weight k * (edgeWeight s (.inl (encode i)) (.inr k) *
    edgeWeight s (.inr k) (.inl (encode j)))

omit [Fintype Slot] in
private theorem successor_count_le_square (next : Slot → Slot)
    (distinct : ∀ i, Function.Injective (fun t : Fin 4 => (next^[t.val]) i))
    (S : Finset Slot) :
    4 * (S.filter fun i => next i ∈ S).card ≤ S.card ^ 2 := by
  classical
  let T := S.filter fun i => next i ∈ S
  have sub : T ⊆ S := Finset.filter_subset _ _
  have le := Finset.card_le_card sub
  by_cases large : 4 ≤ S.card
  · change 4 * T.card ≤ S.card ^ 2
    exact (Nat.mul_le_mul_left 4 le).trans (by simpa [pow_two] using Nat.mul_le_mul_right S.card large)
  by_cases empty : S = ∅
  · simp [empty]
  have strict : T.card < S.card := by
    by_contra this
    have eq : T = S := Finset.eq_of_subset_of_card_le sub (by omega)
    have closed (i : Slot) (hi : i ∈ S) : next i ∈ S :=
      (Finset.mem_filter.mp (eq ▸ hi : i ∈ T)).2
    obtain ⟨i, hi⟩ := Finset.nonempty_iff_ne_empty.mpr empty
    have member (n : ℕ) : (next^[n]) i ∈ S := by
      induction n with
      | zero => exact hi
      | succ n ih => rw [Function.iterate_succ_apply']; exact closed _ ih
    let e : Fin 4 → S := fun n => ⟨(next^[n.val]) i, member _⟩
    have inject : Function.Injective e := fun _ _ h => distinct i (congrArg Subtype.val h)
    have four := Fintype.card_le_of_injective e inject
    simp at four
    omega
  change 4 * T.card ≤ S.card ^ 2
  have positive := Finset.card_pos.mpr (Finset.nonempty_iff_ne_empty.mpr empty)
  have cases : S.card = 1 ∨ S.card = 2 ∨ S.card = 3 := by omega
  rcases cases with h | h | h <;> simp only [h] at strict ⊢ <;> omega

omit [Fintype Slot] in
private theorem incidenceEntry_eq (s : Source Prime Knot) (encode : Slot → Prime)
    (weight : Knot → ℝ) (i j : Slot) :
    incidenceEntry s encode weight i j =
      ∑ k, if Linked s (encode i) k ∧ Linked s (encode j) k then weight k else 0 := by
  classical
  unfold incidenceEntry
  apply Finset.sum_congr rfl
  intro k _
  by_cases hi : Linked s (encode i) k <;> by_cases hj : Linked s (encode j) k <;>
    simp [edgeWeight, hi, hj]

/-- The full routing deficit is a sum of individual knot deficits. -/
private theorem forward_deficit (s : Source Prime Knot) (encode : Slot → Prime)
    (weight : Knot → ℝ) (next : Slot → Slot) :
    let slots (k : Knot) := Finset.univ.filter fun i => Linked s (encode i) k
    (∑ i, ∑ j, incidenceEntry s encode weight i j) -
      4 * (∑ i, incidenceEntry s encode weight i (next i)) =
      ∑ k, (((slots k).card : ℝ)^2 -
        4 * ((slots k).filter fun i => next i ∈ slots k).card) * weight k := by
  classical
  let S (k : Knot) : Finset Slot := Finset.univ.filter fun i => Linked s (encode i) k
  have forward (k : Knot) :
      (∑ i : Slot, if Linked s (encode i) k ∧ Linked s (encode (next i)) k then weight k else 0) =
        ((S k).filter fun i => next i ∈ S k).card * weight k := by
    rw [← Finset.sum_filter]
    have setEq : (Finset.univ.filter fun i : Slot =>
        Linked s (encode i) k ∧ Linked s (encode (next i)) k) =
        (S k).filter fun i => next i ∈ S k := by ext i; simp [S]
    simp [setEq, nsmul_eq_mul]
  have allEntries (k : Knot) :
      (∑ i : Slot, ∑ j : Slot, if Linked s (encode i) k ∧ Linked s (encode j) k then weight k else 0) =
        ((S k).card : ℝ)^2 * weight k := by
    have inner (i : Slot) :
        (∑ j : Slot, if Linked s (encode i) k ∧ Linked s (encode j) k then weight k else 0) =
          if Linked s (encode i) k then (S k).card * weight k else 0 := by
      by_cases hi : Linked s (encode i) k
      · simp only [hi, true_and, ite_true]
        rw [← Finset.sum_filter]
        simp [S, nsmul_eq_mul]
      · simp [hi]
    simp_rw [inner]
    rw [← Finset.sum_filter]
    change (∑ _i ∈ S k, (S k).card * weight k) = _
    simp [nsmul_eq_mul, pow_two, mul_assoc]
  let entry (i j : Slot) (k : Knot) : ℝ :=
    if Linked s (encode i) k ∧ Linked s (encode j) k then weight k else 0
  have reorder : (∑ i, ∑ j, ∑ k, entry i j k) = ∑ k, ∑ i, ∑ j, entry i j k := by
    calc
      _ = ∑ i, ∑ k, ∑ j, entry i j k :=
        Finset.sum_congr rfl (fun i _ => Finset.sum_comm)
      _ = _ := Finset.sum_comm
  simp_rw [incidenceEntry_eq]
  change (∑ i, ∑ j, ∑ k, entry i j k) - 4 * (∑ i, ∑ k, entry i (next i) k) =
    ∑ k, (((S k).card : ℝ)^2 -
      4 * ((S k).filter fun i => next i ∈ S k).card) * weight k
  rw [reorder, Finset.sum_comm (s := Finset.univ) (t := Finset.univ)
    (f := fun i k => entry i (next i) k), Finset.mul_sum, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro k _
  change (∑ i, ∑ j, if Linked s (encode i) k ∧ Linked s (encode j) k then weight k else 0) -
    4 * (∑ i, if Linked s (encode i) k ∧ Linked s (encode (next i)) k then weight k else 0) = _
  rw [forward, allEntries]
  ring

private theorem forward_deficit_nonneg (s : Source Prime Knot) (encode : Slot → Prime)
    (weight : Knot → ℝ) (nonneg : ∀ k, 0 ≤ weight k) (next : Slot → Slot)
    (distinct : ∀ i, Function.Injective (fun t : Fin 4 => (next^[t.val]) i)) :
    0 ≤ (∑ i, ∑ j, incidenceEntry s encode weight i j) -
      4 * (∑ i, incidenceEntry s encode weight i (next i)) := by
  classical
  rw [forward_deficit]
  apply Finset.sum_nonneg
  intro k _
  have count := successor_count_le_square next distinct
    (Finset.univ.filter fun i => Linked s (encode i) k)
  exact mul_nonneg (sub_nonneg.mpr (by exact_mod_cast count)) (nonneg k)

/-- Some row devotes at most one quarter of its full mass to the desired
successor. Zero rows are excluded so the ratio represents a distribution. -/
theorem exists_normalized_forward_le_quarter [Nonempty Slot]
    (s : Source Prime Knot) (encode : Slot → Prime) (weight : Knot → ℝ)
    (nonneg : ∀ k, 0 ≤ weight k)
    (next : Slot → Slot)
    (distinct : ∀ i, Function.Injective (fun t : Fin 4 => (next^[t.val]) i))
    (active : ∀ i, 0 < ∑ j, incidenceEntry s encode weight i j) :
    ∃ i, incidenceEntry s encode weight i (next i) /
      (∑ j, incidenceEntry s encode weight i j) ≤ 1 / 4 := by
  have total := sub_nonneg.mp (forward_deficit_nonneg s encode weight nonneg next distinct)
  by_contra none
  push Not at none
  have strict : (∑ i, ∑ j, incidenceEntry s encode weight i j) <
      ∑ i, 4 * incidenceEntry s encode weight i (next i) := by
    apply Finset.sum_lt_sum_of_nonempty Finset.univ_nonempty
    intro i _
    have hi := (lt_div_iff₀ (active i)).mp (none i)
    linarith
  rw [← Finset.mul_sum] at strict
  exact (not_lt_of_ge total) strict

/-- A positive-weight knot incident to at least five encoded slots
forces some row strictly below one quarter of its full mass. -/
theorem exists_normalized_forward_lt_quarter (s : Source Prime Knot)
    (encode : Slot → Prime) (weight : Knot → ℝ) (nonneg : ∀ k, 0 ≤ weight k)
    (next : Slot → Slot)
    (distinct : ∀ i, Function.Injective (fun t : Fin 4 => (next^[t.val]) i))
    (active : ∀ i, 0 < ∑ j, incidenceEntry s encode weight i j)
    (k : Knot) (positive : 0 < weight k)
    (large : 5 ≤ (Finset.univ.filter fun i => Linked s (encode i) k).card) :
    ∃ i, incidenceEntry s encode weight i (next i) /
      (∑ j, incidenceEntry s encode weight i j) < 1 / 4 := by
  classical
  have deficit : 0 < (∑ i, ∑ j, incidenceEntry s encode weight i j) -
      4 * (∑ i, incidenceEntry s encode weight i (next i)) := by
    rw [forward_deficit]
    let S (j : Knot) := Finset.univ.filter fun i => Linked s (encode i) j
    have largeR : (5 : ℝ) ≤ (S k).card := by exact_mod_cast large
    have sub : ((S k).filter fun i => next i ∈ S k).card ≤ (S k).card :=
      Finset.card_le_card (Finset.filter_subset _ _)
    have subR : (((S k).filter fun i => next i ∈ S k).card : ℝ) ≤ (S k).card := by
      exact_mod_cast sub
    have strict : 0 < ((S k).card : ℝ)^2 -
        4 * ((S k).filter fun i => next i ∈ S k).card := by
      nlinarith [mul_nonneg (show 0 ≤ ((S k).card : ℝ) - 5 by linarith)
        (show 0 ≤ ((S k).card : ℝ) by positivity)]
    apply Finset.sum_pos'
    · intro j _
      have count := successor_count_le_square next distinct (S j)
      exact mul_nonneg (sub_nonneg.mpr (by exact_mod_cast count)) (nonneg j)
    · exact ⟨k, Finset.mem_univ k, mul_pos strict positive⟩
  by_contra none
  push Not at none
  have sumLe : (∑ i, ∑ j, incidenceEntry s encode weight i j) ≤
      ∑ i, 4 * incidenceEntry s encode weight i (next i) := by
    apply Finset.sum_le_sum
    intro i _
    have bound := (le_div_iff₀ (active i)).mp (none i)
    linarith
  rw [← Finset.mul_sum] at sumLe
  linarith

private theorem ring95_distinct (i : Fin 95) :
    Function.Injective (fun t : Fin 4 => ((fun j : Fin 95 => j + 1)^[t.val]) i) := by
  let next : Fin 95 → Fin 95 := fun i => i + 1
  have iterate (i : Fin 95) (n : ℕ) : (next^[n]) i = i + (n : Fin 95) := by
    induction n with
    | zero => simp
    | succ n h =>
      rw [Function.iterate_succ_apply', h]
      simp [next, Nat.cast_succ, add_assoc]
  intro t u h
  change (next^[t.val]) i = (next^[u.val]) i at h
  rw [iterate, iterate] at h
  have same : (t.val : Fin 95) = (u.val : Fin 95) := add_left_cancel h
  have cast := congrArg Fin.val same
  apply Fin.ext
  simpa only [Fin.val_natCast, Nat.mod_eq_of_lt (show t.val < 95 by omega),
    Nat.mod_eq_of_lt (show u.val < 95 by omega)] using cast

/-- The 95-slot directed ring satisfies the four-distinct-iterates
hypothesis, including when it wraps past its last slot. -/
theorem exists_normalized_95_forward_le_quarter
    (s : Source Prime Knot) (encode : Fin 95 → Prime) (weight : Knot → ℝ)
    (nonneg : ∀ k, 0 ≤ weight k)
    (active : ∀ i, 0 < ∑ j, incidenceEntry s encode weight i j) :
    ∃ i, incidenceEntry s encode weight i (i + 1) /
      (∑ j, incidenceEntry s encode weight i j) ≤ 1 / 4 := by
  exact exists_normalized_forward_le_quarter s encode weight nonneg _ ring95_distinct active

theorem exists_normalized_95_forward_lt_quarter
    (s : Source Prime Knot) (encode : Fin 95 → Prime) (weight : Knot → ℝ)
    (nonneg : ∀ k, 0 ≤ weight k)
    (active : ∀ i, 0 < ∑ j, incidenceEntry s encode weight i j)
    (k : Knot) (positive : 0 < weight k)
    (large : 5 ≤ (Finset.univ.filter fun i => Linked s (encode i) k).card) :
    ∃ i, incidenceEntry s encode weight i (i + 1) /
      (∑ j, incidenceEntry s encode weight i j) < 1 / 4 :=
  exists_normalized_forward_lt_quarter s encode weight nonneg _ ring95_distinct active k positive large

omit [Fintype Slot] in
private theorem successor_deficit_pos {next : Slot → Slot}
    (distinct : ∀ i, Function.Injective (fun t : Fin 5 => (next^[t.val]) i))
    (S : Finset Slot) (nonempty : S.Nonempty)
    (bad : ¬ (S.card = 2 ∧ (S.filter fun i => next i ∈ S).card = 1)) :
    4 * (S.filter fun i => next i ∈ S).card < S.card ^ 2 := by
  classical
  let T := S.filter fun i => next i ∈ S
  change 4 * T.card < S.card ^ 2
  change ¬ (S.card = 2 ∧ T.card = 1) at bad
  have sub : T ⊆ S := Finset.filter_subset _ _
  have le := Finset.card_le_card sub
  by_cases large : 5 ≤ S.card
  · exact (Nat.mul_le_mul_left 4 le).trans_lt
      (by simpa only [pow_two] using
        Nat.mul_lt_mul_of_pos_right (show 4 < S.card by omega) (Finset.card_pos.mpr nonempty))
  have strict : T.card < S.card := by
    by_contra notStrict
    have eq : T = S := Finset.eq_of_subset_of_card_le sub (by omega)
    have closed (i : Slot) (hi : i ∈ S) : next i ∈ S :=
      (Finset.mem_filter.mp (eq ▸ hi : i ∈ T)).2
    obtain ⟨i, hi⟩ := nonempty
    have member (n : ℕ) : (next^[n]) i ∈ S := by
      induction n with
      | zero => exact hi
      | succ n ih => rw [Function.iterate_succ_apply']; exact closed _ ih
    let e : Fin 5 → S := fun n => ⟨(next^[n.val]) i, member _⟩
    have five := Fintype.card_le_of_injective e
      (fun _ _ h => distinct i (congrArg Subtype.val h))
    simp at five
    omega
  have positive := Finset.card_pos.mpr nonempty
  have cases : S.card = 1 ∨ S.card = 2 ∨ S.card = 3 ∨ S.card = 4 := by omega
  rcases cases with h | h | h | h
  · simp only [h] at strict ⊢
    omega
  · have zero : T.card = 0 := by
      by_contra nz
      exact bad ⟨h, by omega⟩
    simp [h, zero]
  · simp only [h] at strict ⊢
    omega
  · simp only [h] at strict ⊢
    omega

/-- A positive-weight knot with nonempty support other than a two-slot
support containing an internal successor edge forces strict routing loss. -/
theorem exists_normalized_95_forward_lt_quarter_of_support
    (s : Source Prime Knot) (encode : Fin 95 → Prime) (weight : Knot → ℝ)
    (nonneg : ∀ k, 0 ≤ weight k)
    (active : ∀ i, 0 < ∑ j, incidenceEntry s encode weight i j)
    (k : Knot) (positive : 0 < weight k)
    (S : Finset (Fin 95)) (support : S = Finset.univ.filter fun i => Linked s (encode i) k)
    (nonempty : S.Nonempty)
    (bad : ¬ (S.card = 2 ∧ (S.filter fun i => i + 1 ∈ S).card = 1)) :
    ∃ i, incidenceEntry s encode weight i (i + 1) /
      (∑ j, incidenceEntry s encode weight i j) < 1 / 4 := by
  let next : Fin 95 → Fin 95 := fun i => i + 1
  have distinct (i : Fin 95) : Function.Injective (fun t : Fin 5 => (next^[t.val]) i) := by
    have iterate (n : ℕ) : (next^[n]) i = i + (n : Fin 95) := by
      induction n with
      | zero => simp
      | succ n h =>
        rw [Function.iterate_succ_apply', h]
        simp [next, Nat.cast_succ, add_assoc]
    intro t u eq
    change (next^[t.val]) i = (next^[u.val]) i at eq
    rw [iterate, iterate] at eq
    have vals := congrArg Fin.val (add_left_cancel eq)
    apply Fin.ext
    simpa only [Fin.val_natCast, Nat.mod_eq_of_lt (show t.val < 95 by omega),
      Nat.mod_eq_of_lt (show u.val < 95 by omega)] using vals
  have deficit : 0 < (∑ i, ∑ j, incidenceEntry s encode weight i j) -
      4 * (∑ i, incidenceEntry s encode weight i (i + 1)) := by
    rw [forward_deficit]
    dsimp only
    apply Finset.sum_pos'
    · intro j _
      have count := successor_count_le_square next ring95_distinct
        (Finset.univ.filter fun i => Linked s (encode i) j)
      exact mul_nonneg (sub_nonneg.mpr (by dsimp [next] at count; exact_mod_cast count)) (nonneg j)
    · refine ⟨k, Finset.mem_univ k, mul_pos (sub_pos.mpr ?_) positive⟩
      have count := successor_deficit_pos (next := fun i : Fin 95 => i + 1) distinct S nonempty (by
        convert bad using 1
        apply and_congr Iff.rfl
        apply Eq.to_iff
        congr 2
        ext i
        simp)
      simp only [support] at count
      exact_mod_cast count
  by_contra none
  push Not at none
  have sumLe : (∑ i, ∑ j, incidenceEntry s encode weight i j) ≤
      ∑ i, 4 * incidenceEntry s encode weight i (i + 1) := by
    apply Finset.sum_le_sum
    intro i _
    have bound := (le_div_iff₀ (active i)).mp (none i)
    linarith
  rw [← Finset.mul_sum] at sumLe
  linarith

/-- At the quarter threshold, each positive-weight knot that meets the
encoded slots is supported on an adjacent pair. -/
theorem support_pair_of_normalized_95_forward_ge_quarter
    (s : Source Prime Knot) (encode : Fin 95 → Prime) (weight : Knot → ℝ)
    (nonneg : ∀ k, 0 ≤ weight k)
    (active : ∀ i, 0 < ∑ j, incidenceEntry s encode weight i j)
    (forward : ∀ i, 1 / 4 ≤ incidenceEntry s encode weight i (i + 1) /
      (∑ j, incidenceEntry s encode weight i j))
    (k : Knot) (positive : 0 < weight k) :
    let S := Finset.univ.filter fun i => Linked s (encode i) k
    S.Nonempty → S.card = 2 ∧ (S.filter fun i => i + 1 ∈ S).card = 1 := by
  intro S nonempty
  by_contra bad
  obtain ⟨i, h⟩ := exists_normalized_95_forward_lt_quarter_of_support
    s encode weight nonneg active k positive S rfl nonempty bad
  exact (not_lt_of_ge (forward i)) h


/-- At the optimal quarter threshold, every row spends exactly one
quarter on its successor and exactly half on its diagonal. -/
theorem normalized_95_quarter_row_rigidity
    (s : Source Prime Knot) (encode : Fin 95 → Prime) (weight : Knot → ℝ)
    (nonneg : ∀ k, 0 ≤ weight k)
    (active : ∀ i, 0 < ∑ j, incidenceEntry s encode weight i j)
    (forward : ∀ i, 1 / 4 ≤ incidenceEntry s encode weight i (i + 1) /
      (∑ j, incidenceEntry s encode weight i j)) :
    ∀ i, incidenceEntry s encode weight i (i + 1) / (∑ j, incidenceEntry s encode weight i j) = 1 / 4 ∧
      incidenceEntry s encode weight i i / (∑ j, incidenceEntry s encode weight i j) = 1 / 2 := by
  let M := incidenceEntry s encode weight
  have total := sub_nonneg.mp (forward_deficit_nonneg s encode weight nonneg
    (fun i : Fin 95 => i + 1) ring95_distinct)
  have dominated (i : Fin 95) : (∑ j, M i j) ≤ 4 * M i (i + 1) := by
    have inequality := (le_div_iff₀ (active i)).mp (forward i)
    change (1 / 4 : ℝ) * (∑ j, M i j) ≤ M i (i + 1) at inequality
    linarith
  have exactForward (i : Fin 95) : (∑ j, M i j) = 4 * M i (i + 1) := by
    apply le_antisymm (dominated i)
    by_contra excess
    have strict : (∑ x, ∑ y, M x y) < ∑ x, 4 * M x (x + 1) :=
      Finset.sum_lt_sum (fun x _ => dominated x)
        ⟨i, Finset.mem_univ _, lt_of_not_ge excess⟩
    rw [← Finset.mul_sum] at strict
    exact (not_lt_of_ge total) strict
  have exactDiag (i : Fin 95) : (∑ j, M i j) = 2 * M i i := by
    dsimp only [M]
    simp_rw [incidenceEntry_eq]
    rw [Finset.sum_comm, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k _
    by_cases hi : Linked s (encode i) k
    · simp only [hi, true_and, ite_true]
      rw [← Finset.sum_filter]
      by_cases zero : weight k = 0
      · simp [zero]
      · have positive : 0 < weight k := lt_of_le_of_ne (nonneg k) (Ne.symm zero)
        have present : (Finset.univ.filter fun j => Linked s (encode j) k).Nonempty :=
          ⟨i, Finset.mem_filter.mpr ⟨Finset.mem_univ _, hi⟩⟩
        have two := (support_pair_of_normalized_95_forward_ge_quarter
          s encode weight nonneg active forward k positive present).1
        simp [two, nsmul_eq_mul]
    · simp [hi]
  intro i
  change M i (i + 1) / (∑ j, M i j) = 1 / 4 ∧ M i i / (∑ j, M i j) = 1 / 2
  constructor
  · apply (div_eq_iff (active i).ne').mpr
    linarith [exactForward i]
  · apply (div_eq_iff (active i).ne').mpr
    linarith [exactDiag i]

/-- The quarter threshold also forces equal unnormalized successor
mass on neighboring edges. -/
theorem normalized_95_quarter_adjacent_mass_eq
    (s : Source Prime Knot) (encode : Fin 95 → Prime) (weight : Knot → ℝ)
    (nonneg : ∀ k, 0 ≤ weight k)
    (active : ∀ i, 0 < ∑ j, incidenceEntry s encode weight i j)
    (forward : ∀ i, 1 / 4 ≤ incidenceEntry s encode weight i (i + 1) /
      (∑ j, incidenceEntry s encode weight i j))
    (i : Fin 95) :
    incidenceEntry s encode weight i (i + 1) =
      incidenceEntry s encode weight (i - 1) i := by
  let M := incidenceEntry s encode weight
  have splitDiag : M i i = M i (i + 1) + M (i - 1) i := by
    dsimp only [M]
    simp_rw [incidenceEntry_eq]
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro k _
    by_cases hi : Linked s (encode i) k
    · by_cases zero : weight k = 0
      · simp [zero]
      · let S : Finset (Fin 95) := Finset.univ.filter fun j => Linked s (encode j) k
        have pos : 0 < weight k := lt_of_le_of_ne (nonneg k) (Ne.symm zero)
        have inS : i ∈ S := by simp [S, hi]
        obtain ⟨two, one⟩ := support_pair_of_normalized_95_forward_ge_quarter
          s encode weight nonneg active forward k pos ⟨i, inS⟩
        change S.card = 2 at two
        change (S.filter fun j => j + 1 ∈ S).card = 1 at one
        have present : (S.filter fun j => j + 1 ∈ S).Nonempty :=
          Finset.card_pos.mp (by rw [one]; decide)
        obtain ⟨j, member⟩ := present
        obtain ⟨hj, hj'⟩ := Finset.mem_filter.mp member
        have distinct : ∀ a : Fin 95, a ≠ a + 1 := by decide
        have pair : S = {j, j + 1} :=
          (Finset.eq_of_subset_of_card_le
            (show {j, j + 1} ⊆ S from by
              intro a ha
              simp only [Finset.mem_insert, Finset.mem_singleton] at ha
              rcases ha with rfl | rfl
              · exact hj
              · exact hj')
            (by rw [two]; simp [distinct j])).symm
        have linked (a : Fin 95) : Linked s (encode a) k ↔ a = j ∨ a = j + 1 := by
          have mem : a ∈ S ↔ Linked s (encode a) k := by simp [S]
          rw [pair] at mem
          simpa using mem.symm
        have atI := (linked i).mp hi
        have controls : ∀ a : Fin 95,
            (a - 1 ≠ a ∧ a - 1 ≠ a + 1) ∧ (a + 1 + 1 ≠ a ∧ a + 1 + 1 ≠ a + 1) := by decide
        rcases atI with rfl | eq
        · simp [hi, linked, (controls i).1]
        · rw [eq]
          simp [linked, (controls j).2]
    · simp [hi]
  obtain ⟨ahead, diagonal⟩ := normalized_95_quarter_row_rigidity s encode weight nonneg active forward i
  have a := (div_eq_iff (active i).ne').mp ahead
  have b := (div_eq_iff (active i).ne').mp diagonal
  change M i (i + 1) = M (i - 1) i
  linarith [splitDiag]

/-- Each adjacent pair has the same total weight at the threshold. -/
theorem normalized_95_quarter_successor_mass_constant
    (s : Source Prime Knot) (encode : Fin 95 → Prime) (weight : Knot → ℝ)
    (nonneg : ∀ k, 0 ≤ weight k)
    (active : ∀ i, 0 < ∑ j, incidenceEntry s encode weight i j)
    (forward : ∀ i, 1 / 4 ≤ incidenceEntry s encode weight i (i + 1) /
      (∑ j, incidenceEntry s encode weight i j))
    (i : Fin 95) :
    incidenceEntry s encode weight i (i + 1) = incidenceEntry s encode weight 0 1 := by
  let mass (j : Fin 95) := incidenceEntry s encode weight j (j + 1)
  have step (j : Fin 95) : mass (j + 1) = mass j := by
    have h := normalized_95_quarter_adjacent_mass_eq s encode weight nonneg active forward (j + 1)
    simpa only [add_sub_cancel_right] using h
  have all (n : ℕ) : mass (n : Fin 95) = mass 0 := by
    induction n with
    | zero => rfl
    | succ n ih => simpa only [Nat.cast_succ, ih] using step (n : Fin 95)
  change mass i = mass 0
  simpa using all i.val

omit [Fintype Slot] in
private theorem exists_positive_linked_pair (s : Source Prime Knot) (encode : Slot → Prime)
    (weight : Knot → ℝ) {i j : Slot} (pos : 0 < incidenceEntry s encode weight i j) :
    ∃ k, 0 < weight k ∧ Linked s (encode i) k ∧ Linked s (encode j) k := by
  classical
  rw [incidenceEntry_eq] at pos
  by_contra missing
  apply (not_le_of_gt pos)
  apply Finset.sum_nonpos
  intro k _
  split_ifs with links
  · exact le_of_not_gt (fun w => missing ⟨k, w, links⟩)
  · exact le_rfl

/-- Reusing a prime-polynomial vertex at two slots prevents attaining the
quarter threshold at every slot. Each positive successor entry needs a
knot whose support consists of exactly its two endpoints. -/
theorem injective_of_normalized_95_forward_ge_quarter
    (s : Source Prime Knot) (encode : Fin 95 → Prime) (weight : Knot → ℝ)
    (nonneg : ∀ k, 0 ≤ weight k)
    (active : ∀ i, 0 < ∑ j, incidenceEntry s encode weight i j)
    (forward : ∀ i, 1 / 4 ≤ incidenceEntry s encode weight i (i + 1) /
      (∑ j, incidenceEntry s encode weight i j)) :
    Function.Injective encode := by
  classical
  have adjacent (i j : Fin 95) (same : encode i = encode j) :
      j = i ∨ j = i + 1 := by
    have pos : 0 < incidenceEntry s encode weight i (i + 1) :=
      lt_of_lt_of_le (mul_pos (by norm_num) (active i))
        ((le_div_iff₀ (active i)).mp (forward i))
    have witness := exists_positive_linked_pair s encode weight pos
    obtain ⟨k, positive, hi, hn⟩ := witness
    let S : Finset (Fin 95) := Finset.univ.filter fun t => Linked s (encode t) k
    have mi : i ∈ S := by simp [S, hi]
    have mn : i + 1 ∈ S := by simp [S, hn]
    have mj : j ∈ S := by simpa [S, ← same] using hi
    have two : S.card = 2 :=
      (support_pair_of_normalized_95_forward_ge_quarter
        s encode weight nonneg active forward k positive ⟨i, mi⟩).1
    have distinct : ∀ a : Fin 95, a ≠ a + 1 := by decide
    have pair : ({i, i + 1} : Finset (Fin 95)) = S :=
      Finset.eq_of_subset_of_card_le (by
        intro a ha
        simp only [Finset.mem_insert, Finset.mem_singleton] at ha
        rcases ha with rfl | rfl
        · exact mi
        · exact mn)
        (by rw [two]; simp [distinct i])
    rw [← pair] at mj
    simpa using mj
  intro i j same
  rcases adjacent i j same with equal | next
  · exact equal.symm
  rcases adjacent j i same.symm with equal | prev
  · exact equal
  have noTwo : ∀ a : Fin 95, a ≠ a + 1 + 1 := by decide
  exact (noTwo i (prev.trans (congrArg (fun t => t + 1) next))).elim

/-- A slot collision forces strict loss in some row at the quarter threshold. -/
theorem exists_normalized_95_forward_lt_quarter_of_collision
    (s : Source Prime Knot) (encode : Fin 95 → Prime) (weight : Knot → ℝ)
    (nonneg : ∀ k, 0 ≤ weight k)
    (active : ∀ i, 0 < ∑ j, incidenceEntry s encode weight i j)
    {i j : Fin 95} (distinct : i ≠ j) (same : encode i = encode j) :
    ∃ t, incidenceEntry s encode weight t (t + 1) /
      (∑ a, incidenceEntry s encode weight t a) < 1 / 4 := by
  by_contra none
  push Not at none
  exact distinct (injective_of_normalized_95_forward_ge_quarter s encode weight nonneg active none same)

/-- At the quarter threshold each directed adjacency needs a distinct
positive-weight knot. A knot can witness only one such adjacency. -/
theorem positive_knot_count_ge_of_quarter
    (s : Source Prime Knot) (encode : Fin 95 → Prime) (weight : Knot → ℝ)
    (nonneg : ∀ k, 0 ≤ weight k)
    (active : ∀ i, 0 < ∑ j, incidenceEntry s encode weight i j)
    (forward : ∀ i, 1 / 4 ≤ incidenceEntry s encode weight i (i + 1) /
      (∑ j, incidenceEntry s encode weight i j)) :
    95 ≤ (Finset.univ.filter fun k => 0 < weight k).card := by
  classical
  have witness (i : Fin 95) : ∃ k,
      0 < weight k ∧ Linked s (encode i) k ∧ Linked s (encode (i + 1)) k := by
    apply exists_positive_linked_pair s encode weight
    exact lt_of_lt_of_le (mul_pos (by norm_num) (active i))
      ((le_div_iff₀ (active i)).mp (forward i))
  choose knot valid using witness
  let P := Finset.univ.filter fun k => 0 < weight k
  let assign (i : Fin 95) : P := ⟨knot i, by simp [P, (valid i).1]⟩
  have inj : Function.Injective assign := by
    intro i j same
    have sameKnot : knot i = knot j := congrArg Subtype.val same
    let S : Finset (Fin 95) := Finset.univ.filter fun a => Linked s (encode a) (knot i)
    let E := S.filter fun a => a + 1 ∈ S
    have mi : i ∈ S := by simp [S, (valid i).2.1]
    have ni : i + 1 ∈ S := by simp [S, (valid i).2.2]
    have mj : j ∈ S := by simp [S, sameKnot, (valid j).2.1]
    have nj : j + 1 ∈ S := by simp [S, sameKnot, (valid j).2.2]
    have one : E.card = 1 :=
      (support_pair_of_normalized_95_forward_ge_quarter s encode weight nonneg active forward
        (knot i) (valid i).1 ⟨i, mi⟩).2
    obtain ⟨a, ha⟩ := Finset.card_eq_one.mp one
    have ei : i ∈ E := Finset.mem_filter.mpr ⟨mi, ni⟩
    have ej : j ∈ E := Finset.mem_filter.mpr ⟨mj, nj⟩
    rw [ha] at ei ej
    exact (Finset.mem_singleton.mp ei).trans (Finset.mem_singleton.mp ej).symm
  simpa only [Fintype.card_fin, Fintype.card_coe] using Fintype.card_le_of_injective assign inj

/-- Fewer than 95 positive knots forces strict loss in some row,
irrespective of any repeated prime-polynomial labels. -/
theorem exists_normalized_95_forward_lt_quarter_of_knot_count
    (s : Source Prime Knot) (encode : Fin 95 → Prime) (weight : Knot → ℝ)
    (nonneg : ∀ k, 0 ≤ weight k)
    (active : ∀ i, 0 < ∑ j, incidenceEntry s encode weight i j)
    (few : (Finset.univ.filter fun k => 0 < weight k).card < 95) :
    ∃ i, incidenceEntry s encode weight i (i + 1) /
      (∑ j, incidenceEntry s encode weight i j) < 1 / 4 := by
  by_contra none
  push Not at none
  exact few.not_ge (positive_knot_count_ge_of_quarter s encode weight nonneg active none)

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander
