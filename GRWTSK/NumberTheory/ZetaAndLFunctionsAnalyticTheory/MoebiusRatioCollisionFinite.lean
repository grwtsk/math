/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / PINNED_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Exact finite ratio-fiber squares are four-index collision sums

For ANY finite original inventory S, an arbitrary finite
ratio-key type β and arbitrary REAL weights w_x, the equality
  sum_(a : β) (sum_(x in S, key x=a) w_x)^2
    = sum_(x,y in S, key x=key y) w_x*w_y
is pure finite algebra. No positivity, Möbius randomness,
RH/GRH, character orthogonality or new analytic source.

Applied to original ordered Möbius (m,n) pairs, the second
ratio-frequency moment becomes an actual FOUR-index correlation
of the ORIGINAL signed causal Gram with no squared replacement
of individual μ signs.

An equality of ratio keys is an arithmetic collision; a
quantitative upper bound for the resulting quadruple sum
remains an independent, genuinely unproved arithmetic target.

All authored proof bodies are source PROOF CANDIDATES until
pinned Lean compilation, expected types, fresh kernel and
complete transitive axiom audit have run.
-/

namespace GRWTSK.NumberTheory.Moebius.RatioCollisionFinite

variable {α β : Type*} [Fintype β] [DecidableEq β]
classical

/-- Source weight grouped at its literal finite ratio key. -/
def fiberMass (S : Finset α) (key : α → β)
    (w : α → ℝ) (a : β) : ℝ :=
  ∑ x ∈ S, if key x = a then w x else 0

/-- A single fiber mask vanishes off its genuine key. -/
private theorem one_ratio_pair_sum
    (x y : α) (key : α → β) (w : α → ℝ) :
    (∑ a : β,
       (if key x = a then w x else 0) *
       (if key y = a then w y else 0)) =
      if key x = key y then w x * w y else 0 := by
  by_cases h : key x = key y
  · have hh :
        (∑ a : β,
           (if key x = a then w x else 0) *
           (if key y = a then w y else 0)) =
         ∑ a : β, if key x = a then w x * w y else 0 := by
      apply Finset.sum_congr rfl
      intro a ha
      by_cases he : key x = a
      · simp [he, ← h]
      · simp [he, ← h]
    rw [hh]
    simp [h]
  · have hh (a : β) :
        (if key x = a then w x else 0) *
        (if key y = a then w y else 0) = 0 := by
      by_cases hx : key x = a
      · have hy : key y ≠ a := by
          intro hy
          exact h (hx.trans hy.symm)
        simp [hx, hy]
      · simp [hx]
    simp [hh, h]

/-- Exact finite square-to-collision identity.
The source can have signed real weights, so the four-index
summands need not be individually nonnegative; only the
complete collision quadratic is a sum of squares. -/
theorem fiberMass_sq_sum_eq_collision
    (S : Finset α) (key : α → β) (w : α → ℝ) :
    (∑ a : β, (fiberMass S key w a)^2) =
      ∑ x ∈ S, ∑ y ∈ S,
        if key x = key y then w x * w y else 0 := by
  unfold fiberMass
  calc
    (∑ a : β, (∑ x ∈ S, if key x = a then w x else 0)^2) =
        ∑ a : β, ∑ x ∈ S, ∑ y ∈ S,
          (if key x = a then w x else 0) *
          (if key y = a then w y else 0) := by
      apply Finset.sum_congr rfl
      intro a ha
      rw [pow_two, Finset.sum_mul_sum]
    _ = ∑ x ∈ S, ∑ a : β, ∑ y ∈ S,
          (if key x = a then w x else 0) *
          (if key y = a then w y else 0) := by
      exact Finset.sum_comm
    _ = ∑ x ∈ S, ∑ y ∈ S, ∑ a : β,
          (if key x = a then w x else 0) *
          (if key y = a then w y else 0) := by
      apply Finset.sum_congr rfl
      intro x hx
      exact Finset.sum_comm
    _ = ∑ x ∈ S, ∑ y ∈ S,
          if key x = key y then w x * w y else 0 := by
      apply Finset.sum_congr rfl
      intro x hx
      apply Finset.sum_congr rfl
      intro y hy
      exact one_ratio_pair_sum x y key w

/-- The entire signed four-index collision is nonnegative
as a global quantity, without asserting positivity of any
individual signed Möbius term. -/
theorem collision_sum_nonneg
    (S : Finset α) (key : α → β) (w : α → ℝ) :
    0 ≤ ∑ x ∈ S, ∑ y ∈ S,
          if key x = key y then w x * w y else 0 := by
  rw [← fiberMass_sq_sum_eq_collision]
  exact Finset.sum_nonneg (fun a ha => sq_nonneg _)

end GRWTSK.NumberTheory.Moebius.RatioCollisionFinite
