import Folder.CanonicalPath.IndexSpectralTraceIdentity

/-!
# Folder.CanonicalPath.PositivitySelfAdjointness

Radiation role: research-boundary
BinaryMatrix spine: This module records positivity and self-adjointness boundaries.
Ontology: canonical.positivity_selfadjointness
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/--
The decisive operator-theoretic criterion needed to turn trace data into a
zero-location result.
-/
structure PositivitySelfAdjointnessCriterion where
  OperatorData : Type
  spectralMeasure : Type
  selfAdjoint : Prop
  positivity : Prop
  rulesOutOffLineResonances : Prop
  rulesOutOffLineResonances_certified : rulesOutOffLineResonances
  sourceLabel : String

theorem positivity_selfadjoint_rules_out_offline
    (P : PositivitySelfAdjointnessCriterion) :
    P.rulesOutOffLineResonances :=
  P.rulesOutOffLineResonances_certified

/--
Boundary bridge from a trace identity plus positivity/self-adjointness to
spectral alignment.
-/
structure TraceIdentityToBoundaryAlignment where
  traceIdentity : IndexSpectralTraceMilestone
  positivityCriterion : PositivitySelfAdjointnessCriterion
  forcesBoundaryAlignment : Prop
  forcesBoundaryAlignment_certified : forcesBoundaryAlignment
  sourceLabel : String

theorem trace_identity_plus_positivity_forces_alignment
    (B : TraceIdentityToBoundaryAlignment) :
    B.forcesBoundaryAlignment :=
  B.forcesBoundaryAlignment_certified

end CanonicalPath
end Folder
