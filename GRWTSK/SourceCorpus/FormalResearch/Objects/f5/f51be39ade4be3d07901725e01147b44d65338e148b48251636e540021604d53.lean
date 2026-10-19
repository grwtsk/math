import Mathematics.StratifiedBoundary.Symmetry.CutAction
import Mathematics.StratifiedBoundary.Boundary.SuccessorConnector

/-!
# Automorphism compatibility at a successor cut

The higher group may be larger.  Its registered reduction must intertwine
state projection and law projection with the corresponding lower action.
-/

namespace Mathematics.StratifiedBoundary.Symmetry

open Mathematics.StratifiedBoundary.Boundary
open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule

structure SuccessorAutomorphismConnector
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {low high :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule}
    (connector :
      SuccessorCutConnector low high) where
  reduceAutomorphism :
    high.Automorphism → low.Automorphism
  reduceIdentity :
    reduceAutomorphism 1 = 1
  reduceMultiplication :
    ∀ left right,
      reduceAutomorphism (left * right) =
        reduceAutomorphism left *
          reduceAutomorphism right
  stateEquivariant :
    ∀ automorphism state,
      connector.projectState
          (high.closure.crossedProduct.action.act
            automorphism state) =
        low.closure.crossedProduct.action.act
          (reduceAutomorphism automorphism)
          (connector.projectState state)
  lawEquivariant :
    ∀ automorphism law,
      connector.projectLaw
          (high.cutEquivariance.lawAction
            automorphism law) =
        low.cutEquivariance.lawAction
          (reduceAutomorphism automorphism)
          (connector.projectLaw law)
  persistentObservableCompatibility : Prop
  persistentObservableCompatibilityProof :
    persistentObservableCompatibility

theorem successor_boundary_action_projects
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {low high :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule}
    {connector :
      SuccessorCutConnector low high}
    (symmetry :
      SuccessorAutomorphismConnector connector)
    (automorphism : high.Automorphism) :
    connector.projectLaw
        (high.cutEquivariance.lawAction
          automorphism
          high.closure.dynamics.invariantLaw) =
      low.cutEquivariance.lawAction
        (symmetry.reduceAutomorphism automorphism)
        low.closure.dynamics.invariantLaw := by
  rw [finite_cut_boundary_law_automorphism_invariant]
  rw [successor_invariant_law_projects connector]
  rw [finite_cut_boundary_law_automorphism_invariant]

end Mathematics.StratifiedBoundary.Symmetry
