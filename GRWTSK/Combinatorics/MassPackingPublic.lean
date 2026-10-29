module

public meta import Surface.Core.Classification
public import Mathlib.Analysis.InnerProductSpace.PiL2
public import Mathlib.Analysis.Real.Sqrt
import Mathlib.Tactic

/-!
# Coefficient-mass packing for matched block surgery

A block cut partitions the left and right arithmetic indices into matched
children.  Restriction to those disjoint fibers preserves the two squared
coefficient energies.  Finite Cauchy--Schwarz then shows that the sum of
child masses `‖a_Q‖₂ ‖b_Q‖₂` is at most the parent mass.

This exact packing invariant is independent of every local correlation
estimate.  It is the bookkeeping needed before a tree-wide Carleson theorem
can be meaningful.
-/

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped BigOperators

/-- Matched disjoint child labels for the two coefficient index sets. -/
structure MatchedCoefficientPartition
    (Child Left Right : Type*) [Fintype Child] [DecidableEq Child]
    [Fintype Left] [Fintype Right] where
  leftBlock : Left → Child
  rightBlock : Right → Child

/-- Left coefficient vector restricted to one child block. -/
@[expose]
def MatchedCoefficientPartition.leftChild
    {Child Left Right : Type*} [Fintype Child] [DecidableEq Child]
    [Fintype Left] [Fintype Right]
    (partition : MatchedCoefficientPartition Child Left Right)
    (left : EuclideanSpace ℂ Left) (child : Child) :
    EuclideanSpace ℂ Left :=
  WithLp.toLp 2 fun index ↦
    if partition.leftBlock index = child then left index else 0

/-- Right coefficient vector restricted to one child block. -/
@[expose]
def MatchedCoefficientPartition.rightChild
    {Child Left Right : Type*} [Fintype Child] [DecidableEq Child]
    [Fintype Left] [Fintype Right]
    (partition : MatchedCoefficientPartition Child Left Right)
    (right : EuclideanSpace ℂ Right) (child : Child) :
    EuclideanSpace ℂ Right :=
  WithLp.toLp 2 fun index ↦
    if partition.rightBlock index = child then right index else 0

/-- Product coefficient mass assigned to one child. -/
@[expose]
def MatchedCoefficientPartition.childMass
    {Child Left Right : Type*} [Fintype Child] [DecidableEq Child]
    [Fintype Left] [Fintype Right]
    (partition : MatchedCoefficientPartition Child Left Right)
    (left : EuclideanSpace ℂ Left) (right : EuclideanSpace ℂ Right)
    (child : Child) : ℝ :=
  ‖partition.leftChild left child‖ * ‖partition.rightChild right child‖

@[surface_novel, surface_published]
theorem MatchedCoefficientPartition.sum_leftChild_norm_sq
    {Child Left Right : Type*} [Fintype Child] [DecidableEq Child]
    [Fintype Left] [Fintype Right]
    (partition : MatchedCoefficientPartition Child Left Right)
    (left : EuclideanSpace ℂ Left) :
    ∑ child : Child, ‖partition.leftChild left child‖ ^ 2 = ‖left‖ ^ 2 := by
  classical
  simp only [EuclideanSpace.norm_sq_eq, MatchedCoefficientPartition.leftChild]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro index _
  rw [Finset.sum_eq_single (partition.leftBlock index)]
  · simp
  · intro child _ hne
    simp [hne.symm]
  · simp

@[surface_novel, surface_published]
theorem MatchedCoefficientPartition.sum_rightChild_norm_sq
    {Child Left Right : Type*} [Fintype Child] [DecidableEq Child]
    [Fintype Left] [Fintype Right]
    (partition : MatchedCoefficientPartition Child Left Right)
    (right : EuclideanSpace ℂ Right) :
    ∑ child : Child, ‖partition.rightChild right child‖ ^ 2 = ‖right‖ ^ 2 := by
  classical
  simp only [EuclideanSpace.norm_sq_eq, MatchedCoefficientPartition.rightChild]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro index _
  rw [Finset.sum_eq_single (partition.rightBlock index)]
  · simp
  · intro child _ hne
    simp [hne.symm]
  · simp

/-- Child coefficient masses Carleson-pack below the parent mass. -/
@[surface_novel, surface_published]
theorem MatchedCoefficientPartition.sum_childMass_le_parent
    {Child Left Right : Type*} [Fintype Child] [DecidableEq Child]
    [Fintype Left] [Fintype Right]
    (partition : MatchedCoefficientPartition Child Left Right)
    (left : EuclideanSpace ℂ Left) (right : EuclideanSpace ℂ Right) :
    (∑ child : Child, partition.childMass left right child) ≤
      ‖left‖ * ‖right‖ := by
  classical
  have hcs := Real.sum_mul_le_sqrt_mul_sqrt (Finset.univ : Finset Child)
    (fun child ↦ ‖partition.leftChild left child‖)
    (fun child ↦ ‖partition.rightChild right child‖)
  rw [partition.sum_leftChild_norm_sq left,
    partition.sum_rightChild_norm_sq right] at hcs
  simpa [MatchedCoefficientPartition.childMass, Real.sqrt_sq_eq_abs,
    abs_of_nonneg] using hcs

end

end Surface.Core.TypeII

end
