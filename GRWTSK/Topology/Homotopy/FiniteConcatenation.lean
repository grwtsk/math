/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Topology.Homotopy.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Finite concatenation of continuous homotopy cells

Use the pinned continuous-map homotopy operation, not independently asserted
seam equations. The recursion retains every cell in its given orientation.
It begins with a constant prefix and uses dyadic time subdivision; this timing
is not a uniform mesh, an arclength parametrization, or an integration weight.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Topology.Homotopy.FiniteConcatenation

open scoped unitInterval
open ContinuousMap

noncomputable section

variable {X Y X' Z : Type*}
variable [TopologicalSpace X] [TopologicalSpace Y]
variable [TopologicalSpace X'] [TopologicalSpace Z]

/-- Left and right time embeddings used by the upstream concatenation. -/
def leftTime (t : I) : I :=
  ⟨(t : ℝ) / 2, by constructor <;> linarith [t.2.1, t.2.2]⟩

def rightTime (t : I) : I :=
  ⟨((t : ℝ) + 1) / 2, by constructor <;> linarith [t.2.1, t.2.2]⟩

theorem trans_left {f g h : C(X, Y)} (H : Homotopy f g) (K : Homotopy g h)
    (t : I) (x : X) : (H.trans K) (leftTime t, x) = H (t, x) := by
  rw [Homotopy.trans_apply]
  have ht : ((leftTime t : I) : ℝ) ≤ 1 / 2 := by
    dsimp [leftTime]
    linarith [t.2.2]
  rw [dif_pos ht]
  congr 2
  apply Subtype.ext
  dsimp [leftTime]
  ring

/-- At t=0 the right half meets the left half at the common endpoint. -/
theorem trans_right {f g h : C(X, Y)} (H : Homotopy f g) (K : Homotopy g h)
    (t : I) (x : X) : (H.trans K) (rightTime t, x) = K (t, x) := by
  by_cases ht0 : (t : ℝ) = 0
  · have ht : t = 0 := Subtype.ext ht0
    subst t
    norm_num [Homotopy.trans_apply, rightTime]
  · have htpos : 0 < (t : ℝ) := lt_of_le_of_ne t.2.1 (Ne.symm ht0)
    rw [Homotopy.trans_apply]
    have ht : ¬ ((rightTime t : I) : ℝ) ≤ 1 / 2 := by
      dsimp [rightTime]
      linarith
    rw [dif_neg ht]
    congr 2
    apply Subtype.ext
    dsimp [rightTime]
    ring

/-- n cells with n+1 exact continuous vertex maps. No extra closure is assumed. -/
def concat (v : ℕ → C(X, Y)) :
    (n : ℕ) → (∀ i, i < n → Homotopy (v i) (v (i + 1))) → Homotopy (v 0) (v n)
  | 0, _ => Homotopy.refl (v 0)
  | n + 1, e =>
    (concat v n (fun i hi => e i (Nat.lt_succ_of_lt hi))).trans
      (e n (Nat.lt_succ_self n))

@[simp] theorem concat_start (v : ℕ → C(X, Y)) (n : ℕ)
    (e : ∀ i, i < n → Homotopy (v i) (v (i + 1))) (x : X) :
    concat v n e (0, x) = v 0 x := (concat v n e).map_zero_left x

@[simp] theorem concat_finish (v : ℕ → C(X, Y)) (n : ℕ)
    (e : ∀ i, i < n → Homotopy (v i) (v (i + 1))) (x : X) :
    concat v n e (1, x) = v n x := (concat v n e).map_one_left x

/-- Every global value is either the initial vertex or a value of one actual cell. -/
theorem value_cases (v : ℕ → C(X, Y)) (n : ℕ)
    (e : ∀ i, i < n → Homotopy (v i) (v (i + 1))) (t : I) (x : X) :
    concat v n e (t, x) = v 0 x ∨
      ∃ i, ∃ hi : i < n, ∃ u : I, concat v n e (t, x) = e i hi (u, x) := by
  induction n generalizing t with
  | zero => exact Or.inl rfl
  | succ n ih =>
    simp only [concat, Homotopy.trans_apply]
    split_ifs with ht
    · rcases ih (e := fun i hi => e i (Nat.lt_succ_of_lt hi)) (t := ⟨2 * (t : ℝ),
          (unitInterval.mul_pos_mem_iff zero_lt_two).2 ⟨t.2.1, ht⟩⟩) with h | ⟨i, hi, u, h⟩
      · exact Or.inl h
      · exact Or.inr ⟨i, Nat.lt_succ_of_lt hi, u, h⟩
    · exact Or.inr ⟨n, Nat.lt_succ_self n, _, rfl⟩

/-- Conversely, every point of every cell occurs; no last edge is omitted. -/
theorem hits_cell (v : ℕ → C(X, Y)) (n : ℕ)
    (e : ∀ i, i < n → Homotopy (v i) (v (i + 1)))
    (i : ℕ) (hi : i < n) (u : I) (x : X) :
    ∃ t : I, concat v n e (t, x) = e i hi (u, x) := by
  induction n with
  | zero => exact False.elim (Nat.not_lt_zero i hi)
  | succ n ih =>
    by_cases hin : i < n
    · obtain ⟨t, ht⟩ := ih (e := fun j hj => e j (Nat.lt_succ_of_lt hj)) (hi := hin)
      refine ⟨leftTime t, ?_⟩
      rw [concat, trans_left]
      exact ht
    · have heq : i = n := by omega
      subst i
      exact ⟨rightTime u, trans_right _ _ u x⟩

/-- Exact range statement for one fixed auxiliary parameter. The initial pause
is explicit, and all remaining values are exactly the complete cell ranges. -/
theorem range_iff (v : ℕ → C(X, Y)) (n : ℕ)
    (e : ∀ i, i < n → Homotopy (v i) (v (i + 1))) (x : X) (y : Y) :
    (∃ t : I, concat v n e (t, x) = y) ↔
      y = v 0 x ∨ ∃ i, ∃ hi : i < n, ∃ u : I, e i hi (u, x) = y := by
  constructor
  · rintro ⟨t, rfl⟩
    rcases value_cases v n e t x with h | ⟨i, hi, u, h⟩
    · exact Or.inl h
    · exact Or.inr ⟨i, hi, u, h.symm⟩
  · rintro (rfl | ⟨i, hi, u, h⟩)
    · exact ⟨0, concat_start v n e x⟩
    · obtain ⟨t, ht⟩ := hits_cell v n e i hi u x
      exact ⟨t, ht.trans h⟩

/-- A pointwise transformation commutes with the exact SAME dyadic schedule.
Continuity of g is not needed for this equality; both homotopy inputs already
carry their own continuity proofs. -/
theorem natural (v : ℕ → C(X, Y)) (w : ℕ → C(X', Z)) (n : ℕ)
    (e : ∀ i, i < n → Homotopy (v i) (v (i + 1)))
    (d : ∀ i, i < n → Homotopy (w i) (w (i + 1)))
    (g : Y → Z) (x : X) (x' : X')
    (hv : w 0 x' = g (v 0 x))
    (he : ∀ i (hi : i < n) (u : I), d i hi (u, x') = g (e i hi (u, x)))
    (t : I) : concat w n d (t, x') = g (concat v n e (t, x)) := by
  induction n generalizing t with
  | zero => exact hv
  | succ n ih =>
    simp only [concat, Homotopy.trans_apply]
    split_ifs with ht
    · exact ih (e := fun i hi => e i (Nat.lt_succ_of_lt hi))
        (d := fun i hi => d i (Nat.lt_succ_of_lt hi))
        (he := fun i hi u => he i (Nat.lt_succ_of_lt hi) u) (t := _)
    · exact he n (Nat.lt_succ_self n) _

end
end GRWTSK.Topology.Homotopy.FiniteConcatenation
