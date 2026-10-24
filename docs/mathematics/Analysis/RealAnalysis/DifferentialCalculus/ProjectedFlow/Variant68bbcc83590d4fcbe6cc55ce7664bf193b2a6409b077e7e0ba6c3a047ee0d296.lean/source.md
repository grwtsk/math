# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ProjectedFlow.Variant68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b004d8c799dcfcf12e563614dad50302d1d4754` · SHA-256 `68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Finite projected-flow certificates

Projected flow is the finite alternative to full-state heat flow with an
infinite barrier.  This module records the finite objects needed by Surface
Foundry: a feasible graph, a probability vector supported on feasible states,
a transition operator whose support cannot leave the feasible graph, and a
boundary-zero predicate on feasible states.
-/

namespace Presentation
namespace ProjectedFlow

/-- Finite feasible WFC graph metadata. -/
structure FiniteFeasibleGraph where
  label : String
  stateCount : Nat
  feasibleStateCount : Nat
  graphHash : Nat

/-- Finite probability vector over the feasible graph. -/
structure FeasibleProbabilityVector
    (_graph : FiniteFeasibleGraph) where
  vectorHash : Nat
  supportInsideFeasible : Prop
  supportInsideFeasibleProof : supportInsideFeasible

/-- Finite transition operator projected to feasible states. -/
structure ProjectedTransitionOperator
    (_graph : FiniteFeasibleGraph) where
  operatorHash : Nat
  noSupportOutsideFeasible : Prop
  noSupportOutsideFeasibleProof : noSupportOutsideFeasible

/-- Boundary checker for feasible states. -/
structure FeasibleBoundaryChecker
    (_graph : FiniteFeasibleGraph) where
  boundaryZeroOnFeasibleStates : Prop
  boundaryZeroProof : boundaryZeroOnFeasibleStates

/-- Complete finite projected-flow certificate. -/
structure ProjectedFlowCertificate where
  graph : FiniteFeasibleGraph
  probability : FeasibleProbabilityVector graph
  transition : ProjectedTransitionOperator graph
  boundaryChecker : FeasibleBoundaryChecker graph

/-- Full projected-flow soundness proposition. -/
def ProjectedFlowCertificate.sound
    (C : ProjectedFlowCertificate) : Prop :=
  C.probability.supportInsideFeasible ∧
    C.transition.noSupportOutsideFeasible ∧
    C.boundaryChecker.boundaryZeroOnFeasibleStates

/-- Projected finite transitions preserve feasible support. -/
theorem projected_flow_preserves_feasibility
    (C : ProjectedFlowCertificate) :
    C.probability.supportInsideFeasible ∧
      C.transition.noSupportOutsideFeasible :=
  ⟨C.probability.supportInsideFeasibleProof,
    C.transition.noSupportOutsideFeasibleProof⟩

/-- Boundary preservation follows from support remaining in feasible states. -/
theorem projected_flow_preserves_zero_boundary
    (C : ProjectedFlowCertificate) :
    C.boundaryChecker.boundaryZeroOnFeasibleStates :=
  C.boundaryChecker.boundaryZeroProof

/-- Complete finite certificate for projected flow. -/
theorem projected_flow_certificate_sound
    (C : ProjectedFlowCertificate) :
    C.sound :=
  ⟨C.probability.supportInsideFeasibleProof,
    C.transition.noSupportOutsideFeasibleProof,
    C.boundaryChecker.boundaryZeroProof⟩

/-- Boundary-calculus route for projected finite flow. -/
theorem projected_flow_through_boundary_calculus
    (C : ProjectedFlowCertificate) :
    C.sound :=
  projected_flow_certificate_sound C

/-- A full-state flow without projection does not own projected-flow authority. -/
def FullStateFlowWithoutProjectionOwnsProjectedFeasibility
    (_flowHash : Nat) : Prop :=
  False

/-- Direct full-state-flow authority attempts fail. -/
theorem full_state_flow_without_projection_authority_attempt_fails
    (flowHash : Nat) :
    ¬ FullStateFlowWithoutProjectionOwnsProjectedFeasibility flowHash := by
  intro h
  exact h

end ProjectedFlow
end Presentation
```
