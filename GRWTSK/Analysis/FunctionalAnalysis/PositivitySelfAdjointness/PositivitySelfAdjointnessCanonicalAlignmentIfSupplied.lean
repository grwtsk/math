import Folder.CanonicalPath.SpectralBoundaryAlignmentTheoremTarget

/-!
# Folder.Theorem.CanonicalPath.PositivitySelfAdjointness

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports positivity and boundary-target facts.
Ontology: proof.canonical_path.positivity_selfadjointness
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem positivity_selfadjoint_rules_out_offline
    (P : Folder.CanonicalPath.PositivitySelfAdjointnessCriterion) :
    P.rulesOutOffLineResonances :=
  Folder.CanonicalPath.positivity_selfadjoint_rules_out_offline P

theorem trace_identity_plus_positivity_forces_alignment
    (B : Folder.CanonicalPath.TraceIdentityToBoundaryAlignment) :
    B.forcesBoundaryAlignment :=
  Folder.CanonicalPath.trace_identity_plus_positivity_forces_alignment B

theorem canonical_alignment_if_supplied
    (A : Folder.CanonicalPath.CanonicalSpectralBoundaryAlignmentTarget) :
    A.alignmentHolds :=
  Folder.CanonicalPath.canonical_alignment_if_supplied A

end CanonicalPath
end Theorem
end Folder
