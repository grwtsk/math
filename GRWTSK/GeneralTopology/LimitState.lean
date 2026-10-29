import Mathlib.Topology.Instances.ENNReal.Lemmas
import Mathematics.StratifiedBoundary.Boundary.ProjectiveSystem
import Mathematics.StratifiedBoundary.Frontier.OrdinalIndex

/-!
# Formal projective-limit state

The limit state is a compatible family.  It is not claimed to be one finite
runtime bitfield.  A metric formula is accepted only with its full metric and
separation laws.
-/

namespace Mathematics.StratifiedBoundary.Boundary

open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule
universe uPersistent

structure LimitBoundaryState
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule) where
  component :
    ∀ stage,
      (system.cut stage).State
  compatible :
    ∀ stage,
      system.projectState
          (Nat.le_succ stage)
          (component (stage + 1)) =
        component stage

structure AddressedLimitBoundaryState
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule)
    (PersistentId : Type uPersistent) where
  projectiveState :
    LimitBoundaryState system
  boundaryAddress :
    Mathematics.StratifiedBoundary.Frontier.BoundaryAddress
  persistentId : PersistentId
  addressMatchesProjectiveState : Prop
  addressCompatibilityProof :
    addressMatchesProjectiveState

inductive LimitStateExistenceMode
  | explicitCompatibleWitness
  | coherentSections
  | compactInverseLimit
  deriving DecidableEq, Repr, Fintype

structure LimitStateNonemptyCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule) where
  mode : LimitStateExistenceMode
  witness : LimitBoundaryState system
  witnessDigest : String
  finiteEnumerationClaimed : Bool := false
  noFiniteEnumerationClaim :
    finiteEnumerationClaimed = false := by
      rfl

theorem limitBoundaryState_nonempty
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (certificate :
      LimitStateNonemptyCertificate system) :
    Nonempty (LimitBoundaryState system) :=
  ⟨certificate.witness⟩

structure CoherentSectionCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule) where
  liftAdjacent :
    ∀ stage,
      (system.cut stage).State →
        (system.cut (stage + 1)).State
  sectionLaw :
    ∀ stage state,
      system.projectState
          (Nat.le_succ stage)
          (liftAdjacent stage state) =
        state
  seed : (system.cut 0).State
  compatibleWitness :
    LimitBoundaryState system
  witnessGeneratedBySections : Prop
  generationProof :
    witnessGeneratedBySections

structure LimitMetricCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule) where
  weight : Nat → ℝ
  weightPositive :
    ∀ stage, 0 < weight stage
  weightSummable :
    Summable weight
  distance :
    LimitBoundaryState system →
      LimitBoundaryState system → ℝ
  distanceFormula :
    ∀ left right,
      distance left right =
        ∑' stage,
          weight stage *
            min 1
              ((system.cut stage).closure.system.metric.distance
                (left.component stage)
                (right.component stage))
  distanceNonnegative :
    ∀ left right,
      0 ≤ distance left right
  distanceSelf :
    ∀ state,
      distance state state = 0
  distanceSymmetric :
    ∀ left right,
      distance left right =
        distance right left
  triangle :
    ∀ left middle right,
      distance left right ≤
        distance left middle +
          distance middle right
  separated :
    ∀ {left right},
      distance left right = 0 →
      left = right

end Mathematics.StratifiedBoundary.Boundary
