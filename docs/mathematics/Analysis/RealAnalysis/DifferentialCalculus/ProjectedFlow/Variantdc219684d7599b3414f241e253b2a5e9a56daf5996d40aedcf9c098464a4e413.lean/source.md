# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ProjectedFlow.Variantdc219684d7599b3414f241e253b2a5e9a56daf5996d40aedcf9c098464a4e413

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e073993f48a57cfaa16261272f4e123fb6c96782` · SHA-256 `7bbedafe47374676b714557c5d658f7309395e2e5caaac47b2faf28cd779144f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteFeasibleGraph.Variant68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.FiniteFeasibleGraph.Variant68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296","mathematical_subject":"Analysis.Calculus","original_sha256":"68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Presentation/ProjectedFlow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Finite projected-flow certificates

Projected flow is the finite alternative to full-state heat flow with an
infinite barrier.  This module records the finite objects needed by Surface
Foundry: a feasible graph, a probability vector supported on feasible states,
a transition operator whose support cannot leave the feasible graph, and a
boundary-zero predicate on feasible states.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteFeasibleGraph.Variant68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296

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
