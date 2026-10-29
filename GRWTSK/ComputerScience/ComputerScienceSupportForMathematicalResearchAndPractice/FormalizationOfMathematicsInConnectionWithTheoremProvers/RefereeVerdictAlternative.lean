import Folder.CanonicalPath.RefereeVerdict

/-!
# Folder.Theorem.CanonicalPath.RefereeVerdict

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports current referee verdict facts.
Ontology: proof.canonical_path.referee_verdict
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem accept_research_ne_accept_rh_proof :
    Folder.CanonicalPath.RefereeVerdict.acceptAsResearchProgram ≠
      Folder.CanonicalPath.RefereeVerdict.rejectAsProofOfRH :=
  Folder.CanonicalPath.accept_research_ne_accept_rh_proof

theorem current_verdict_rejects_as_rh_proof :
    Folder.CanonicalPath.currentRefereeVerdict.rhProofVerdict =
      Folder.CanonicalPath.RefereeVerdict.rejectAsProofOfRH :=
  Folder.CanonicalPath.current_verdict_rejects_as_rh_proof

end CanonicalPath
end Theorem
end Folder
