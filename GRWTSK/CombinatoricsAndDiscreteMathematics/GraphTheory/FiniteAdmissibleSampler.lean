/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and licenses. -/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Finite admissible Gibbs sampler and path support

A finite directed transition relation, nonnegative cost, and a witnessed
outgoing edge at every vertex define an actual normalized finite Markov
kernel. Positive-weight sample paths follow admissible edges.

Nothing here says that a sampled path is closed, null-homotopic,
minimum-length, or a geometric geodesic. A probability-one statement about
a measure on complete paths would require a separately selected path-space
measure; the present theorem proves the finite positive-support property.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteAdmissibleSampler

universe u
variable {V : Type u} [Fintype V]

structure Sampler (V : Type u) [Fintype V] where
  allowed : V → V → Bool
  arcCost : V → V → ℝ
  beta : ℝ
  beta_nonneg : 0 ≤ beta
  arcCost_nonneg : ∀ i j, 0 ≤ arcCost i j
  outgoing : ∀ i, ∃ j, allowed i j = true

namespace Sampler

/-- A forbidden step gets weight zero, and an admitted step gets positive
Gibbs weight. -/
def weight (S : Sampler V) (i j : V) : ℝ :=
  if S.allowed i j = true then Real.exp (-S.beta * S.arcCost i j) else 0

theorem weight_nonneg (S : Sampler V) (i j : V) :
    0 ≤ S.weight i j := by
  unfold weight
  split_ifs
  · exact (Real.exp_pos _).le
  · exact le_refl 0

theorem weight_pos_of_allowed (S : Sampler V) (i j : V)
    (h : S.allowed i j = true) :
    0 < S.weight i j := by
  simp [weight, h, Real.exp_pos]

/-- The normalizing partition function for the actual outgoing row. -/
def partition (S : Sampler V) (i : V) : ℝ :=
  ∑ j, S.weight i j

theorem partition_pos (S : Sampler V) (i : V) :
    0 < S.partition i := by
  obtain ⟨j, hj⟩ := S.outgoing i
  have hle : S.weight i j ≤ S.partition i := by
    unfold partition
    exact Finset.single_le_sum
      (fun k _ => S.weight_nonneg i k) (Finset.mem_univ j)
  exact lt_of_lt_of_le (S.weight_pos_of_allowed i j hj) hle

def probability (S : Sampler V) (i j : V) : ℝ :=
  S.weight i j / S.partition i

theorem probability_nonneg (S : Sampler V) (i j : V) :
    0 ≤ S.probability i j :=
  div_nonneg (S.weight_nonneg i j) (S.partition_pos i).le

/-- No supplied stochasticity axiom: each row sum is calculated from its
actual positive partition function. -/
theorem probability_row_sum_one (S : Sampler V) (i : V) :
    (∑ j, S.probability i j) = 1 := by
  calc
    (∑ j, S.probability i j) =
        (∑ j, S.weight i j) / S.partition i := by
          simp [probability, Finset.sum_div]
    _ = 1 := by
      change S.partition i / S.partition i = 1
      exact div_self (ne_of_gt (S.partition_pos i))

theorem probability_zero_of_forbidden (S : Sampler V) (i j : V)
    (h : S.allowed i j = false) :
    S.probability i j = 0 := by
  simp [probability, weight, h]

theorem probability_pos_of_allowed (S : Sampler V) (i j : V)
    (h : S.allowed i j = true) :
    0 < S.probability i j :=
  div_pos (S.weight_pos_of_allowed i j h) (S.partition_pos i)

/-- Every positive-probability edge is an actually admissible edge. -/
theorem allowed_of_probability_pos (S : Sampler V) (i j : V)
    (hp : 0 < S.probability i j) :
    S.allowed i j = true := by
  cases h : S.allowed i j
  · have hz := S.probability_zero_of_forbidden i j h
    rw [hz] at hp
    exact False.elim ((lt_irrefl (0 : ℝ)) hp)
  · rfl

/-- Positive-weight finite paths use the selected kernel, not an invented
closed-orbit structure. -/
inductive PositivePath (S : Sampler V) : V → V → ℕ → Prop where
  | refl (i : V) : PositivePath S i i 0
  | step {i j k : V} {n : ℕ}
      (hij : 0 < S.probability i j)
      (tail : PositivePath S j k n) : PositivePath S i k (n + 1)

/-- Independently typed admissible directed paths. -/
inductive AllowedPath (S : Sampler V) : V → V → ℕ → Prop where
  | refl (i : V) : AllowedPath S i i 0
  | step {i j k : V} {n : ℕ}
      (hij : S.allowed i j = true)
      (tail : AllowedPath S j k n) : AllowedPath S i k (n + 1)

/-- The finite sample-support theorem: every path whose chosen edges
have positive transition probability is a path in the admissible graph. -/
theorem PositivePath.toAllowed (S : Sampler V) {i j : V} {n : ℕ}
    (p : PositivePath S i j n) : AllowedPath S i j n := by
  induction p with
  | refl i =>
      exact AllowedPath.refl i
  | step hprob tail ih =>
      exact AllowedPath.step (S.allowed_of_probability_pos _ _ hprob) ih

/-!
## Exact Gibbs support-to-admissibility comparison

The Gibbs weights are real, not rational. These theorems identify their
positive support with the actual declared admissible edges and paths,
without introducing a rational coercion or a new artificial edge.
-/

/-- An edge has positive Gibbs probability exactly when it is allowed. -/
theorem probability_pos_iff_allowed (S : Sampler V) (source target : V) :
    0 < S.probability source target ↔ S.allowed source target = true := by
  constructor
  · exact S.allowed_of_probability_pos source target
  · exact S.probability_pos_of_allowed source target

/-- Every allowed finite path has positive Gibbs probability along each
chosen edge. This is the converse to `PositivePath.toAllowed`. -/
theorem AllowedPath.toPositive (S : Sampler V)
    {source target : V} {length : ℕ}
    (path : AllowedPath S source target length) :
    PositivePath S source target length := by
  induction path with
  | refl source =>
      exact PositivePath.refl source
  | step hedge tail ih =>
      exact PositivePath.step (S.probability_pos_of_allowed _ _ hedge) ih

/-- Positive-probability and admissible finite paths have identical
support at every fixed length. -/
theorem positivePath_iff_allowedPath (S : Sampler V)
    (source target : V) (length : ℕ) :
    PositivePath S source target length ↔
      AllowedPath S source target length := by
  constructor
  · exact S.PositivePath.toAllowed
  · exact S.AllowedPath.toPositive

end Sampler

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteAdmissibleSampler
