import Mathlib.Data.List.FinRange
import Mathlib.Data.List.Nodup
import Mathlib.Algebra.BigOperators.Group.List.Lemmas
import Mathlib.GroupTheory.Perm.Basic
import Mathlib.Data.Nat.Dist
import Mathlib.Tactic

/-!
# Finite bounded transposition traces

Positions are zero based `Fin n`. A trace records actual finite permutations,
independently of any algorithm that discovers the trace. Bounds and support
disjointness are separate, decidable contracts.
-/

namespace GRWTSK.PartialSumOrdering

structure PositionSwap (n : ℕ) where
  left : Fin n
  right : Fin n
  deriving DecidableEq, Repr

namespace PositionSwap

def permutation {n : ℕ} (s : PositionSwap n) : Equiv.Perm (Fin n) :=
  Equiv.swap s.left s.right

def support {n : ℕ} (s : PositionSwap n) : List (Fin n) := [s.left, s.right]

def Bounded {n : ℕ} (D : ℕ) (s : PositionSwap n) : Prop :=
  s.left.val < s.right.val ∧ s.right.val - s.left.val ≤ 5 * D

instance {n D : ℕ} (s : PositionSwap n) : Decidable (s.Bounded D) :=
  inferInstanceAs (Decidable (_ ∧ _))

theorem fixes {n : ℕ} (s : PositionSwap n) {i : Fin n} (h : i ∉ s.support) :
    s.permutation i = i := by
  simp only [support, List.mem_cons, List.not_mem_nil, or_false, not_or] at h
  exact Equiv.swap_apply_of_ne_of_ne h.1 h.2

theorem displacement {n D : ℕ} (s : PositionSwap n) (h : s.Bounded D) (i : Fin n) :
    Nat.dist (s.permutation i).val i.val ≤ 5 * D := by
  unfold permutation
  by_cases hl : i = s.left
  · subst i
    simpa [Nat.dist_eq_sub_of_le_right (Nat.le_of_lt h.1)] using h.2
  by_cases hr : i = s.right
  · subst i
    simpa [Nat.dist_eq_sub_of_le (Nat.le_of_lt h.1)] using h.2
  rw [Equiv.swap_apply_of_ne_of_ne hl hr]
  simp

theorem commute {n : ℕ} (s t : PositionSwap n)
    (h : List.Disjoint s.support t.support) : Commute s.permutation t.permutation := by
  have hll : s.left ≠ t.left := fun e => h (a := s.left) (by simp [support]) (by simp [support, e])
  have hlr : s.left ≠ t.right := fun e => h (a := s.left) (by simp [support]) (by simp [support, e])
  have hrl : s.right ≠ t.left := fun e => h (a := s.right) (by simp [support]) (by simp [support, e])
  have hrr : s.right ≠ t.right := fun e => h (a := s.right) (by simp [support]) (by simp [support, e])
  change s.permutation * t.permutation = t.permutation * s.permutation
  ext i
  by_cases hs : i = s.left ∨ i = s.right
  · rcases hs with rfl | rfl
    · simp [permutation, Equiv.Perm.mul_apply, Equiv.swap_apply_of_ne_of_ne,
        hll, hlr, hrl, hrr]
    · simp [permutation, Equiv.Perm.mul_apply, Equiv.swap_apply_of_ne_of_ne,
        hll, hlr, hrl, hrr]
  · by_cases ht : i = t.left ∨ i = t.right
    · rcases ht with rfl | rfl <;>
        simp [permutation, Equiv.Perm.mul_apply, Equiv.swap_apply_of_ne_of_ne,
          Ne.symm hll, Ne.symm hlr, Ne.symm hrl, Ne.symm hrr]
    · simp only [not_or] at hs ht
      simp [permutation, Equiv.Perm.mul_apply,
        Equiv.swap_apply_of_ne_of_ne hs.1 hs.2,
        Equiv.swap_apply_of_ne_of_ne ht.1 ht.2]

end PositionSwap

abbrev SwapTrace (n : ℕ) := List (PositionSwap n)

def traceSupport {n : ℕ} (trace : SwapTrace n) : List (Fin n) :=
  trace.flatMap PositionSwap.support

def SupportsDisjoint {n : ℕ} (trace : SwapTrace n) : Prop := (traceSupport trace).Nodup

def TraceBounded {n : ℕ} (D : ℕ) (trace : SwapTrace n) : Prop :=
  ∀ s ∈ trace, s.Bounded D

instance {n : ℕ} (trace : SwapTrace n) : Decidable (SupportsDisjoint trace) :=
  inferInstanceAs (Decidable (List.Nodup _))

instance {n D : ℕ} (trace : SwapTrace n) : Decidable (TraceBounded D trace) :=
  inferInstanceAs (Decidable (∀ s ∈ trace, s.Bounded D))

def replayPermutation {n : ℕ} (trace : SwapTrace n) : Equiv.Perm (Fin n) :=
  (trace.map PositionSwap.permutation).prod

@[simp] theorem replayPermutation_nil {n : ℕ} : replayPermutation ([] : SwapTrace n) = 1 := rfl

@[simp] theorem replayPermutation_cons {n : ℕ} (s : PositionSwap n) (trace : SwapTrace n) :
    replayPermutation (s :: trace) = s.permutation * replayPermutation trace := rfl

theorem replayPermutation_append {n : ℕ} (a b : SwapTrace n) :
    replayPermutation (a ++ b) = replayPermutation a * replayPermutation b := by
  simp [replayPermutation, List.map_append, List.prod_append]

theorem replayPermutation_fixes {n : ℕ} (trace : SwapTrace n) {i : Fin n}
    (hi : i ∉ traceSupport trace) : replayPermutation trace i = i := by
  induction trace with
  | nil => rfl
  | cons s trace ih =>
    simp only [traceSupport, List.flatMap_cons, List.mem_append, not_or] at hi
    simp only [replayPermutation_cons, Equiv.Perm.mul_apply, ih hi.2]
    exact s.fixes hi.1

theorem replayPermutation_mem_support {n : ℕ} (trace : SwapTrace n) {i : Fin n}
    (hi : i ∈ traceSupport trace) : replayPermutation trace i ∈ traceSupport trace := by
  by_contra h
  have hf := replayPermutation_fixes trace h
  have he : i = replayPermutation trace i := (replayPermutation trace).injective hf.symm
  exact h (he ▸ hi)

theorem replayPermutation_displacement {n D : ℕ} (trace : SwapTrace n)
    (hd : SupportsDisjoint trace) (hb : TraceBounded D trace) (i : Fin n) :
    Nat.dist (replayPermutation trace i).val i.val ≤ 5 * D := by
  induction trace with
  | nil => simp
  | cons s trace ih =>
    have hparts : s.support.Nodup ∧ (traceSupport trace).Nodup ∧
        List.Disjoint s.support (traceSupport trace) := by
      simpa only [SupportsDisjoint, traceSupport, List.flatMap_cons, List.nodup_append'] using hd
    have hbound : TraceBounded D trace := fun t ht => hb t (List.mem_cons_of_mem _ ht)
    by_cases hs : i ∈ s.support
    · have hi : i ∉ traceSupport trace := fun hm => hparts.2.2 hs hm
      rw [replayPermutation_cons, Equiv.Perm.mul_apply, replayPermutation_fixes trace hi]
      exact s.displacement (hb s (by simp)) i
    · have hs' : replayPermutation trace i ∉ s.support := by
        by_cases hi : i ∈ traceSupport trace
        · exact fun hm => hparts.2.2 hm (replayPermutation_mem_support trace hi)
        · simpa [replayPermutation_fixes trace hi] using hs
      rw [replayPermutation_cons, Equiv.Perm.mul_apply, s.fixes hs']
      exact ih hparts.2.1 hbound

theorem replayPermutation_order_independent {n : ℕ} {a b : SwapTrace n}
    (hd : SupportsDisjoint a) (hp : a.Perm b) : replayPermutation a = replayPermutation b := by
  have hpair : a.Pairwise (fun s t => List.Disjoint s.support t.support) :=
    (List.nodup_flatMap.mp hd).2
  apply (hp.map PositionSwap.permutation).prod_eq'
  rw [List.pairwise_map]
  exact hpair.imp fun h => PositionSwap.commute _ _ h

/-- Apply a finite position permutation to a list. -/
def permuteList {α : Type*} (xs : List α) (π : Equiv.Perm (Fin xs.length)) : List α :=
  List.ofFn (xs.get ∘ π)

theorem permuteList_perm {α : Type*} (xs : List α) (π : Equiv.Perm (Fin xs.length)) :
    (permuteList xs π).Perm xs := by
  simpa [permuteList, List.ofFn_get] using π.ofFn_comp_perm xs.get

@[simp] theorem permuteList_length {α : Type*} (xs : List α)
    (π : Equiv.Perm (Fin xs.length)) : (permuteList xs π).length = xs.length := by
  simp [permuteList]

def replayList {α : Type*} (xs : List α) (trace : SwapTrace xs.length) : List α :=
  permuteList xs (replayPermutation trace)

theorem replayList_perm {α : Type*} (xs : List α) (trace : SwapTrace xs.length) :
    (replayList xs trace).Perm xs := permuteList_perm _ _

theorem transposition_preserves_multiset {α : Type*} (xs : List α)
    (s : PositionSwap xs.length) :
    (permuteList xs s.permutation).Perm xs := permuteList_perm _ _

theorem replayList_sum {G : Type*} [AddCommMonoid G] (xs : List G)
    (trace : SwapTrace xs.length) : (replayList xs trace).sum = xs.sum :=
  (replayList_perm xs trace).sum_eq

theorem intersecting_supports_do_not_commute :
    ¬ Commute (Equiv.swap (0 : Fin 3) 1) (Equiv.swap (1 : Fin 3) 2) := by
  intro h
  have he := congrArg (fun π : Equiv.Perm (Fin 3) => π 0) h.eq
  have hne : ((Equiv.swap (0 : Fin 3) 1 * Equiv.swap 1 2 : Equiv.Perm (Fin 3))) 0 ≠
      ((Equiv.swap (1 : Fin 3) 2 * Equiv.swap 0 1 : Equiv.Perm (Fin 3))) 0 := by decide
  exact hne he

theorem excessive_displacement_rejected :
    ¬ (PositionSwap.mk (0 : Fin 7) 6).Bounded 1 := by decide

end GRWTSK.PartialSumOrdering
