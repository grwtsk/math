import Folder.CanonicalPath.RefereeGate

/-!
# Folder.Theorem.CanonicalPath.RefereeGate

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports referee gate facts.
Ontology: proof.canonical_path.referee_gate
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem satisfied_ne_unresolved :
    Folder.CanonicalPath.RefereeGateStatus.satisfied ≠
      Folder.CanonicalPath.RefereeGateStatus.unresolved :=
  Folder.CanonicalPath.satisfied_ne_unresolved

theorem researchArchitecture_ne_satisfied :
    Folder.CanonicalPath.RefereeGateStatus.researchArchitecture ≠
      Folder.CanonicalPath.RefereeGateStatus.satisfied :=
  Folder.CanonicalPath.researchArchitecture_ne_satisfied

theorem gate_assessment_has_acceptance_standard
    (G : Folder.CanonicalPath.GateAssessment) :
    ∃ s, G.acceptanceStandard = s :=
  Folder.CanonicalPath.gate_assessment_has_acceptance_standard G

end CanonicalPath
end Theorem
end Folder
