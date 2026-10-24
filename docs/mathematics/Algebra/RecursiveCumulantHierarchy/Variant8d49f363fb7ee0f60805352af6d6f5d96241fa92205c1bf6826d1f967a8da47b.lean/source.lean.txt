import FormalResearch.PositiveAtlas.FiniteCumulantPrefix

/-!
# Recursive all-orders directional cumulant hierarchy

This module constructs an all-orders cumulant family from an arbitrary supplied
directional moment hierarchy.

For positive order n, the cumulant is defined by strong recursion as

  kappa_n(v)
    = M_n(v)
      - sum over proper partitions pi
          product over blocks B in pi of kappa_|B|(v_B).

Every block of a proper partition has cardinality strictly below n, so the
definition only consumes previously constructed orders.

The construction is purely algebraic/combinatorial.  It does not yet identify a
particular analytic moment hierarchy for the finite log-affine family, nor does
it prove the all-orders derivative identity D^n log Z = kappa_n.
-/

namespace FormalResearch.PositiveAtlas

universe u v

namespace MomentCumulant

variable {E : Type u}
variable {R : Type v} [CommRing R]

/-- An order-indexed directional moment hierarchy. -/
abbrev DirectionMomentFamily
    (E : Type u) (R : Type v) :=
  (n : ℕ) → (Fin n → E) → R

/-- Extend the values supplied by a strong-recursion predecessor function to a
total directional cumulant family.  Values at orders not below n are filled by
zero; proper-partition contributions never inspect those entries. -/
private def lowerFamily
    {n : ℕ}
    (previous :
      ∀ m : ℕ, m < n → (Fin m → E) → R) :
    DirectionCumulantFamily E R :=
  fun m directions =>
    if h : m < n then previous m h directions else 0

/-- One strong-recursion step for the all-orders cumulant hierarchy. -/
private def recursiveCumulantStep
    (moments : DirectionMomentFamily E R) :
    (n : ℕ) →
      (∀ m : ℕ, m < n → (Fin m → E) → R) →
      (Fin n → E) → R
  | 0, _ => fun _ => 0
  | n + 1, previous =>
      fun directions =>
        recursiveDirectionalCumulant
          (n + 1) (Nat.succ_pos n)
          (moments (n + 1))
          (lowerFamily previous)
          directions

/-- Strong-recursive auxiliary family. -/
noncomputable def recursiveCumulantAux
    (moments : DirectionMomentFamily E R)
    (n : ℕ) :
    (Fin n → E) → R :=
  Nat.strongRecOn
    (motive := fun n => (Fin n → E) → R)
    n
    (recursiveCumulantStep moments)

/-- The recursively constructed all-orders directional cumulant family. -/
noncomputable def recursiveCumulantFamily
    (moments : DirectionMomentFamily E R) :
    DirectionCumulantFamily E R :=
  fun n => recursiveCumulantAux moments n

/-- Unfold one strong-recursion layer. -/
theorem recursiveCumulantAux_eq_step
    (moments : DirectionMomentFamily E R)
    (n : ℕ) :
    recursiveCumulantAux moments n =
      recursiveCumulantStep moments n
        (fun m _ => recursiveCumulantAux moments m) := by
  unfold recursiveCumulantAux
  exact Nat.strongRecOn_eq (recursiveCumulantStep moments) n

/-- Order zero is fixed to zero. -/
@[simp]
theorem recursiveCumulantFamily_zero
    (moments : DirectionMomentFamily E R)
    (directions : Fin 0 → E) :
    recursiveCumulantFamily moments 0 directions = 0 := by
  change recursiveCumulantAux moments 0 directions = 0
  rw [recursiveCumulantAux_eq_step]
  rfl

/-- The successor-order defining equation.  The n+1 cumulant is the n+1 moment
minus the proper-partition contribution computed from the already constructed
lower orders. -/
theorem recursiveCumulantFamily_succ
    (moments : DirectionMomentFamily E R)
    (n : ℕ)
    (directions : Fin (n + 1) → E) :
    recursiveCumulantFamily moments (n + 1) directions =
      recursiveDirectionalCumulant
        (n + 1) (Nat.succ_pos n)
        (moments (n + 1))
        (recursiveCumulantFamily moments)
        directions := by
  change
    recursiveCumulantAux moments (n + 1) directions =
      recursiveDirectionalCumulant
        (n + 1) (Nat.succ_pos n)
        (moments (n + 1))
        (recursiveCumulantFamily moments)
        directions
  rw [recursiveCumulantAux_eq_step]
  change
    recursiveDirectionalCumulant
        (n + 1) (Nat.succ_pos n)
        (moments (n + 1))
        (lowerFamily
          (fun m _ => recursiveCumulantAux moments m))
        directions =
      recursiveDirectionalCumulant
        (n + 1) (Nat.succ_pos n)
        (moments (n + 1))
        (recursiveCumulantFamily moments)
        directions
  apply recursiveDirectionalCumulant_congr_of_agreeBelow
  intro m hm lowerDirections
  simp [lowerFamily, hm, recursiveCumulantFamily]

/-- Positive-order defining equation in order-independent form. -/
theorem recursiveCumulantFamily_eq_recursive
    (moments : DirectionMomentFamily E R)
    (n : ℕ) (hn : 0 < n)
    (directions : Fin n → E) :
    recursiveCumulantFamily moments n directions =
      recursiveDirectionalCumulant
        n hn (moments n)
        (recursiveCumulantFamily moments)
        directions := by
  cases n with
  | zero =>
      exact (Nat.not_lt_zero _ hn).elim
  | succ n =>
      simpa using
        recursiveCumulantFamily_succ moments n directions

/-- Expanded positive-order equation. -/
theorem recursiveCumulantFamily_eq_moment_sub_proper
    (moments : DirectionMomentFamily E R)
    (n : ℕ) (hn : 0 < n)
    (directions : Fin n → E) :
    recursiveCumulantFamily moments n directions =
      moments n directions -
        directionalProperContribution
          n hn
          (recursiveCumulantFamily moments)
          directions := by
  rw [recursiveCumulantFamily_eq_recursive]
  rfl

/-- Specification characterizing a cumulant family recursively from a supplied
moment hierarchy. -/
structure IsRecursiveCumulantFamily
    (moments : DirectionMomentFamily E R)
    (κ : DirectionCumulantFamily E R) : Prop where
  order0 :
    ∀ directions : Fin 0 → E,
      κ 0 directions = 0
  positive :
    ∀ n : ℕ, ∀ hn : 0 < n,
      ∀ directions : Fin n → E,
        κ n directions =
          recursiveDirectionalCumulant
            n hn (moments n) κ directions

/-- The strong-recursive construction satisfies its recursive specification. -/
theorem recursiveCumulantFamily_isRecursive
    (moments : DirectionMomentFamily E R) :
    IsRecursiveCumulantFamily moments
      (recursiveCumulantFamily moments) where
  order0 := recursiveCumulantFamily_zero moments
  positive :=
    recursiveCumulantFamily_eq_recursive moments

/-- The recursive specification has at most one all-orders solution. -/
theorem IsRecursiveCumulantFamily.unique
    {moments : DirectionMomentFamily E R}
    {κ₁ κ₂ : DirectionCumulantFamily E R}
    (h₁ : IsRecursiveCumulantFamily moments κ₁)
    (h₂ : IsRecursiveCumulantFamily moments κ₂) :
    κ₁ = κ₂ := by
  funext n
  funext directions
  induction n using Nat.strongRecOn generalizing directions with
  | ind n ih =>
      cases n with
      | zero =>
          exact (h₁.order0 directions).trans
            (h₂.order0 directions).symm
      | succ n =>
          rw [h₁.positive (n + 1) (Nat.succ_pos n) directions,
            h₂.positive (n + 1) (Nat.succ_pos n) directions]
          apply recursiveDirectionalCumulant_congr_of_agreeBelow
          intro m hm lowerDirections
          exact ih m hm lowerDirections

/-- The strong-recursive construction is the unique family satisfying the
moment-cumulant recursion. -/
theorem recursiveCumulantFamily_unique
    (moments : DirectionMomentFamily E R)
    {κ : DirectionCumulantFamily E R}
    (hκ : IsRecursiveCumulantFamily moments κ) :
    κ = recursiveCumulantFamily moments := by
  exact hκ.unique
    (recursiveCumulantFamily_isRecursive moments)

/-- Two moment hierarchies agree strictly below order n. -/
def MomentsAgreeBelow
    (n : ℕ)
    (M₁ M₂ : DirectionMomentFamily E R) : Prop :=
  ∀ m : ℕ, m < n →
    ∀ directions : Fin m → E,
      M₁ m directions = M₂ m directions

theorem MomentsAgreeBelow.refl
    (n : ℕ)
    (M : DirectionMomentFamily E R) :
    MomentsAgreeBelow n M M := by
  intro m hm directions
  rfl

theorem MomentsAgreeBelow.symm
    {n : ℕ}
    {M₁ M₂ : DirectionMomentFamily E R}
    (h : MomentsAgreeBelow n M₁ M₂) :
    MomentsAgreeBelow n M₂ M₁ := by
  intro m hm directions
  exact (h m hm directions).symm

theorem MomentsAgreeBelow.trans
    {n : ℕ}
    {M₁ M₂ M₃ : DirectionMomentFamily E R}
    (h₁₂ : MomentsAgreeBelow n M₁ M₂)
    (h₂₃ : MomentsAgreeBelow n M₂ M₃) :
    MomentsAgreeBelow n M₁ M₃ := by
  intro m hm directions
  exact (h₁₂ m hm directions).trans
    (h₂₃ m hm directions)

/-- Cumulants below order n depend only on moments below order n. -/
theorem recursiveCumulantFamily_agreeBelow_of_momentsAgreeBelow
    (n : ℕ)
    {M₁ M₂ : DirectionMomentFamily E R}
    (hM : MomentsAgreeBelow n M₁ M₂) :
    AgreeBelow n
      (recursiveCumulantFamily M₁)
      (recursiveCumulantFamily M₂) := by
  intro m
  induction m using Nat.strongRecOn with
  | ind m ih =>
      intro hm directions
      cases m with
      | zero =>
          rw [recursiveCumulantFamily_zero,
            recursiveCumulantFamily_zero]
      | succ m =>
          rw [recursiveCumulantFamily_succ,
            recursiveCumulantFamily_succ]
          unfold recursiveDirectionalCumulant
          rw [hM (m + 1) hm directions]
          rw [directionalProperContribution_congr_of_agreeBelow
            (m + 1) (Nat.succ_pos m)
            (show
              AgreeBelow (m + 1)
                (recursiveCumulantFamily M₁)
                (recursiveCumulantFamily M₂) by
              intro j hj lowerDirections
              exact ih j hj
                (Nat.lt_trans hj hm)
                lowerDirections)
            directions]

/-- Equality of moments through order n implies equality of the recursively
constructed n-th cumulant. -/
theorem recursiveCumulantFamily_eq_of_momentsAgreeBelow_succ
    (n : ℕ)
    {M₁ M₂ : DirectionMomentFamily E R}
    (hM : MomentsAgreeBelow (n + 1) M₁ M₂)
    (directions : Fin n → E) :
    recursiveCumulantFamily M₁ n directions =
      recursiveCumulantFamily M₂ n directions := by
  exact
    recursiveCumulantFamily_agreeBelow_of_momentsAgreeBelow
      (n + 1) hM n (Nat.lt_succ_self n) directions

end MomentCumulant

end FormalResearch.PositiveAtlas
