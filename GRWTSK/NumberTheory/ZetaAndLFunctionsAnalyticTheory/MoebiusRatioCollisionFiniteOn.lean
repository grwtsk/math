/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / PINNED_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusRatioCollisionFinite
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Ratio-class square on any selected set of keys

For arbitrary real signed weights w_x, ratio key key(x),
finite inventory S, and a selected finite set of keys U:

  ∑_(a in U) (∑_(x in S, key x=a)w_x)^2
   =∑_(x,y in S, key x=key y and key x in U)w_x*w_y.

The numerator/denominator nonunit guard belongs to the
original pair weight. The unit-ratio selection U belongs
to character Parseval. Keeping them separately prevents
a false deletion of terms at composite modulus q.

No analytic proof, L-function, original μ sign law or
GRH is inserted. New bodies SOURCE PROOF CANDIDATE.
-/

namespace GRWTSK.NumberTheory.Moebius.RatioCollisionFiniteOn

open GRWTSK.NumberTheory.Moebius.RatioCollisionFinite
variable {α β : Type*} [DecidableEq β]
classical

private theorem selected_pair_sum
    (U : Finset β) (key : α → β) (w : α → ℝ)
    (x y : α) :
    (∑ a ∈ U,
       (if key x = a then w x else 0) *
       (if key y = a then w y else 0)) =
      if key x = key y ∧ key x ∈ U
      then w x * w y else 0 := by
  by_cases heq : key x = key y
  · have hm :
        (∑ a ∈ U,
          (if key x = a then w x else 0) *
          (if key y = a then w y else 0)) =
        ∑ a ∈ U, if key x = a then w x*w y else 0 := by
      apply Finset.sum_congr rfl
      intro a ha
      by_cases hxa : key x = a
      · simp [hxa, ← heq]
      · simp [hxa, ← heq]
    rw [hm]
    by_cases hmem : key x ∈ U
    · simp [heq, hmem]
    · simp [heq, hmem]
  · have hz (a : β) :
        (if key x = a then w x else 0) *
        (if key y = a then w y else 0) = 0 := by
      by_cases hxa : key x = a
      · have hya : key y ≠ a := by
          intro hy
          exact heq (hxa.trans hy.symm)
        simp [hxa,hya]
      · simp [hxa]
    simp [hz,heq]

/-- Exact selected-key real sum-of-squares to signed pair
collision. The right side can have negative individual
terms, but the complete sum is automatically nonnegative. -/
theorem fiberMass_sq_sum_on_eq_collision
    (S : Finset α) (U : Finset β)
    (key : α → β) (w : α → ℝ) :
    (∑ a ∈ U, (fiberMass S key w a)^2) =
      ∑ x ∈ S, ∑ y ∈ S,
        if key x = key y ∧ key x ∈ U
        then w x * w y else 0 := by
  unfold fiberMass
  calc
    (∑ a ∈ U, (∑ x ∈ S,
        if key x = a then w x else 0)^2) =
      ∑ a ∈ U, ∑ x ∈ S, ∑ y ∈ S,
        (if key x = a then w x else 0) *
        (if key y = a then w y else 0) := by
      apply Finset.sum_congr rfl
      intro a ha
      rw [pow_two, Finset.sum_mul_sum]
    _ = ∑ x ∈ S, ∑ a ∈ U, ∑ y ∈ S,
        (if key x = a then w x else 0) *
        (if key y = a then w y else 0) := Finset.sum_comm
    _ = ∑ x ∈ S, ∑ y ∈ S, ∑ a ∈ U,
        (if key x = a then w x else 0) *
        (if key y = a then w y else 0) := by
      apply Finset.sum_congr rfl
      intro x hx
      exact Finset.sum_comm
    _ = ∑ x ∈ S, ∑ y ∈ S,
        if key x = key y ∧ key x ∈ U
        then w x * w y else 0 := by
      apply Finset.sum_congr rfl
      intro x hx
      apply Finset.sum_congr rfl
      intro y hy
      exact selected_pair_sum U key w x y

theorem selected_collision_nonneg
    (S : Finset α) (U : Finset β)
    (key : α → β) (w : α → ℝ) :
    0 ≤ ∑ x ∈ S, ∑ y ∈ S,
      if key x = key y ∧ key x ∈ U
      then w x * w y else 0 := by
  rw [← fiberMass_sq_sum_on_eq_collision]
  exact Finset.sum_nonneg (fun a ha => sq_nonneg _)

end GRWTSK.NumberTheory.Moebius.RatioCollisionFiniteOn
