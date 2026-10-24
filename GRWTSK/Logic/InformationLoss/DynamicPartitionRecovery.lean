/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.Logic.InformationLoss.FactorizationFiber
import Mathlib

/-!
# Dynamic refinement, process histories and anchored differences

A refining sequence of observations imposes a changing equivalence
relation on source configurations, not merely a scalar error exponent.
Every step has an explicit coarsening map and a commuting square.

For integer sequences, the discrete derivative forgets the additive
constant, while adjoining an initial value makes the complete
difference stream exactly left invertible. This is a mathematical
example of the transition from differences/fluxions to globally
reconstructable process data, not a historical equivalence claim.

All assertions use exact functions and infinite sequences. They do not
construct a finite Huffman code, algorithm, real-time heat process, or
analytic zero-height supplier.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery

open GRWTSK.Logic.InformationLoss

universe u v w

/-- Source-preserving refinement: stage n+1 retains every equality of the
coarser stage n through the explicitly selected map coarsen n. -/
structure DynamicRefinement (X : Type u) (Observation : Type v) where
  observe : ℕ → X → Observation
  coarsen : ℕ → Observation → Observation
  commute : ∀ n x, coarsen n (observe (n + 1) x) = observe n x

/-- The quotient-equivalence relation imposed at a specified stage. -/
def DynamicRefinement.SameAt {X : Type u} {Observation : Type v}
    (R : DynamicRefinement X Observation) (n : ℕ) (x y : X) : Prop :=
  R.observe n x = R.observe n y

/-- A later partition cannot create equality that was absent at the
immediately preceding coarser stage. -/
theorem DynamicRefinement.sameAt_of_next
    {X : Type u} {Observation : Type v}
    (R : DynamicRefinement X Observation) (n : ℕ) {x y : X}
    (h : R.SameAt (n + 1) x y) :
    R.SameAt n x y := by
  unfold DynamicRefinement.SameAt at *
  calc
    R.observe n x = R.coarsen n (R.observe (n + 1) x) :=
      (R.commute n x).symm
    _ = R.coarsen n (R.observe (n + 1) y) := by rw [h]
    _ = R.observe n y := R.commute n y

/-- The complete dynamic history, not merely its first static statistic. -/
def DynamicRefinement.history {X : Type u} {Observation : Type v}
    (R : DynamicRefinement X Observation) (x : X) : ℕ → Observation :=
  fun n => R.observe n x

/-- If all stage measurements separate every pair, the infinite history is
injective. No finite-stage or numerical stability assertion follows. -/
theorem DynamicRefinement.history_injective_of_separating
    {X : Type u} {Observation : Type v}
    (R : DynamicRefinement X Observation)
    (separates : ∀ x y : X, x ≠ y →
      ∃ n, R.observe n x ≠ R.observe n y) :
    Function.Injective R.history := by
  intro x y hxy
  by_contra hne
  obtain ⟨n, hn⟩ := separates x y hne
  exact hn (congrFun hxy n)

/-- Every stage can be recovered from the complete history by evaluation.
This does not recover the original source unless the histories separate it. -/
theorem DynamicRefinement.stage_factors_through_history
    {X : Type u} {Observation : Type v}
    (R : DynamicRefinement X Observation) (n : ℕ) :
    FactorsThrough R.history (R.observe n) := by
  refine ⟨fun h => h n, ?_⟩
  funext x
  rfl

/-- Integer discrete differences: these are a process observable, not
an invertible coordinate change unless an initial value is retained. -/
def discreteDifference (f : ℕ → ℤ) : ℕ → ℤ :=
  fun n => f (n + 1) - f n

/-- Differentiation identifies distinct source sequences modulo constants. -/
theorem discreteDifference_constants_collide :
    discreteDifference (fun _ : ℕ => (0 : ℤ)) =
      discreteDifference (fun _ : ℕ => (1 : ℤ)) := by
  funext n
  simp [discreteDifference]

/-- The initial ordinate of an integer sequence cannot be decoded from
its differences alone: constants were already lost. -/
theorem initialValue_not_factorsThrough_difference :
    ¬ FactorsThrough discreteDifference (fun f : ℕ → ℤ => f 0) := by
  apply not_factorsThrough_of_collision
    discreteDifference (fun f : ℕ → ℤ => f 0)
    (fun _ : ℕ => (0 : ℤ)) (fun _ : ℕ => (1 : ℤ))
    discreteDifference_constants_collide
  norm_num

/-- The initial value together with the difference sequence. -/
def anchoredDifference (f : ℕ → ℤ) : ℤ × (ℕ → ℤ) :=
  (f 0, discreteDifference f)

/-- Explicit global reconstruction from the anchor and all increments. -/
def integrateDifference (data : ℤ × (ℕ → ℤ)) : ℕ → ℤ :=
  fun n => data.1 + ∑ i ∈ Finset.range n, data.2 i

/-- Discrete fundamental theorem with the basepoint visibly retained. -/
theorem difference_telescoping (f : ℕ → ℤ) (n : ℕ) :
    f n = f 0 + ∑ i ∈ Finset.range n, discreteDifference f i := by
  induction n with
  | zero => simp
  | succ n ih =>
      calc
        f (n + 1) = f n + (f (n + 1) - f n) := by omega
        _ = (f 0 + ∑ i ∈ Finset.range n, discreteDifference f i) +
              discreteDifference f n := by rw [ih]; rfl
        _ = f 0 + ∑ i ∈ Finset.range (n + 1),
              discreteDifference f i := by rw [Finset.sum_range_succ]; ring

/-- The anchored process has an explicit global left inverse. -/
theorem integrate_anchoredDifference (f : ℕ → ℤ) :
    integrateDifference (anchoredDifference f) = f := by
  funext n
  change f 0 + ∑ i ∈ Finset.range n, discreteDifference f i = f n
  exact (difference_telescoping f n).symm

theorem anchoredDifference_injective :
    Function.Injective anchoredDifference := by
  intro x y h
  calc
    x = integrateDifference (anchoredDifference x) :=
      (integrate_anchoredDifference x).symm
    _ = integrateDifference (anchoredDifference y) := by rw [h]
    _ = y := integrate_anchoredDifference y

end GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery
