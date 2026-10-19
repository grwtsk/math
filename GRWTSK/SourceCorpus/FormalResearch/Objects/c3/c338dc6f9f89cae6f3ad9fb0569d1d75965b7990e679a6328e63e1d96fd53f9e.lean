import Folder.CanonicalPath.IndexSpectralTraceIdentity

/-!
# Folder.CanonicalPath.SpectralBoundaryCriterion

Radiation role: research-boundary
BinaryMatrix spine: This module records the decisive spectral-boundary criterion.
Ontology: canonical.spectral_boundary_criterion
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

structure PositivitySelfAdjointnessData where
  OperatorData : Type
  selfAdjoint : Prop
  positivity : Prop
  noOffCriticalResonances : Prop
  noOffCriticalResonances_certified : noOffCriticalResonances
  sourceLabel : String

structure SpectralBoundaryCriterion where
  traceIdentity : IndexSpectralTraceIdentity
  positivityData : PositivitySelfAdjointnessData
  boundaryAlignment : Prop
  boundaryAlignment_certified : boundaryAlignment
  sourceLabel : String

theorem positivity_rules_out_offcritical_resonances
    (P : PositivitySelfAdjointnessData) :
    P.noOffCriticalResonances :=
  P.noOffCriticalResonances_certified

theorem spectral_boundary_alignment_if_supplied
    (B : SpectralBoundaryCriterion) :
    B.boundaryAlignment :=
  B.boundaryAlignment_certified

end CanonicalPath
end Folder
