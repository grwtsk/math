import Mathematics.GraphAccess.ModeImplementation
import Mathematics.GraphAccess.CoreTheorems

/-!
# Certified graph-access foundation

This theorem packages the generic laws that every later mode inherits:
finite immutable carriers, canonical order, complete neighbor availability,
semantic mode support, total fuel execution, visible resource limits,
checkpoint replay, and read-only authority.
-/

namespace Mathematics.GraphAccess

universe uNode uEdge uClass

def CanonicalGraphOrdering
    (G : GraphCut) : Prop :=
  G.orderedNodes.Pairwise (· < ·) ∧
    G.orderedEdges.Pairwise (· < ·)

def CompleteNeighborInterfaceAvailable
    (G : GraphCut) : Prop :=
  ∀ scope admissibility,
    Nonempty
      (NeighborEnumeration G scope admissibility)

def ObjectiveModeCompatibilitySound : Prop :=
  ∀ objective,
    Supports (canonicalPrimaryMode objective) objective

def FuelBoundedMachineTotal
    (G : GraphCut) : Prop :=
  ∀ (profiles : ModeProfileFamily G)
    (request : AdmittedAccessRequest G profiles)
    (outputs : ModeOutputFamily G request)
    (machine : AccessMachine G request outputs),
    ∃ result, executeMachine machine = result

def ResourceExhaustionVisible : Prop :=
  ∀ usage budget,
    WithinBudget usage budget ↔
      exceededDimensions usage budget = ∅

def CheckpointRoundtripSound
    (G : GraphCut) : Prop :=
  ∀ (profiles : ModeProfileFamily G)
    (request : AdmittedAccessRequest G profiles)
    (outputs : ModeOutputFamily G request)
    (machine : AccessMachine G request outputs)
    (state : machine.State),
    machine.resume (machine.checkpoint state) =
      some state

def AccessAuthoritySeparated
    (G : GraphCut) : Prop :=
  ∀ (profiles : ModeProfileFamily G)
    (request : AdmittedAccessRequest G profiles)
    (outputs : ModeOutputFamily G request)
    (machine : AccessMachine G request outputs)
    (result : MachineResolution machine),
    result.authoritativeEffect = .none

def CertifiedGraphAccessFoundation
    (G : GraphCut) : Prop :=
  Finite G.Node ∧
  Finite G.Edge ∧
  CanonicalGraphOrdering G ∧
  CompleteNeighborInterfaceAvailable G ∧
  ObjectiveModeCompatibilitySound ∧
  FuelBoundedMachineTotal G ∧
  ResourceExhaustionVisible ∧
  CheckpointRoundtripSound G ∧
  AccessAuthoritySeparated G

theorem graphAccessFoundation_certified
    (G : GraphCut)
    (neighborsAvailable :
      ∀ scope admissibility,
        Nonempty
          (NeighborEnumeration
            G scope admissibility))
    (modeSupport :
      ∀ objective,
        Supports
          (canonicalPrimaryMode objective)
          objective) :
    CertifiedGraphAccessFoundation G := by
  refine ⟨inferInstance, inferInstance, ?_,
    neighborsAvailable, modeSupport, ?_, ?_, ?_, ?_⟩
  · exact ⟨G.orderedNodes_sorted,
      G.orderedEdges_sorted⟩
  · intro profiles request outputs machine
    exact accessMachine_total machine
  · exact withinBudget_iff_no_exceeded
  · intro profiles request outputs machine state
    exact machine.checkpoint_roundtrip state
  · intro profiles request outputs machine result
    exact accessMachine_has_no_authoritative_effect result

theorem graphAccessFoundation_canonical
    (G : GraphCut) :
    CertifiedGraphAccessFoundation G :=
  graphAccessFoundation_certified G
    (fun scope admissibility =>
      ⟨NeighborEnumeration.canonical
        G scope admissibility
        admissibility.digest⟩)
    canonicalPrimaryMode_supports

end Mathematics.GraphAccess
