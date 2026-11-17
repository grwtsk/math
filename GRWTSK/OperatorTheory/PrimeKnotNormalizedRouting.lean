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
  have total : 4 * (∑ i, incidenceEntry s encode weight i (next i)) ≤
      ∑ i, ∑ j, incidenceEntry s encode weight i j := by
    let entry (i j : Slot) (k : Knot) : ℝ :=
      if Linked s (encode i) k ∧ Linked s (encode j) k then weight k else 0
    have reorder : (∑ i, ∑ j, ∑ k, entry i j k) = ∑ k, ∑ i, ∑ j, entry i j k := by
      calc
        _ = ∑ i, ∑ k, ∑ j, entry i j k :=
          Finset.sum_congr rfl (fun i _ => Finset.sum_comm)
        _ = _ := Finset.sum_comm
    simp_rw [incidenceEntry_eq]
    change 4 * (∑ i, ∑ k, entry i (next i) k) ≤ ∑ i, ∑ j, ∑ k, entry i j k
    rw [Finset.sum_comm, reorder, Finset.mul_sum]
    apply Finset.sum_le_sum
    intro k _
    change 4 * (∑ i, if Linked s (encode i) k ∧ Linked s (encode (next i)) k then weight k else 0) ≤
      ∑ i, ∑ j, if Linked s (encode i) k ∧ Linked s (encode j) k then weight k else 0
    rw [forward, allEntries, ← mul_assoc]
    exact mul_le_mul_of_nonneg_right (by exact_mod_cast successor_count_le_square next distinct (S k)) (nonneg k)
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

/-- The 95-slot directed ring satisfies the four-distinct-iterates
hypothesis, including when it wraps past its last slot. -/
theorem exists_normalized_95_forward_le_quarter
    (s : Source Prime Knot) (encode : Fin 95 → Prime) (weight : Knot → ℝ)
    (nonneg : ∀ k, 0 ≤ weight k)
    (active : ∀ i, 0 < ∑ j, incidenceEntry s encode weight i j) :
    ∃ i, incidenceEntry s encode weight i (i + 1) /
      (∑ j, incidenceEntry s encode weight i j) ≤ 1 / 4 := by
  let next : Fin 95 → Fin 95 := fun i => i + 1
  have iterate (i : Fin 95) (n : ℕ) : (next^[n]) i = i + (n : Fin 95) := by
    induction n with
    | zero => simp
    | succ n h =>
      rw [Function.iterate_succ_apply', h]
      simp [next, Nat.cast_succ, add_assoc]
  apply exists_normalized_forward_le_quarter s encode weight nonneg next _ active
  intro i t u h
  change (next^[t.val]) i = (next^[u.val]) i at h
  rw [iterate, iterate] at h
  have same : (t.val : Fin 95) = (u.val : Fin 95) := add_left_cancel h
  have cast := congrArg Fin.val same
  apply Fin.ext
  simpa only [Fin.val_natCast, Nat.mod_eq_of_lt (show t.val < 95 by omega),
    Nat.mod_eq_of_lt (show u.val < 95 by omega)] using cast

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander
