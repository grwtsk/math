import Folder.RH.ProofStatus

/-!
# Folder.Theorem.RH.ProofStatus

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proof-status facts for the narrow RH cone.
Ontology: proof.rh.proof_status
Pivot role: verification
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/

namespace Folder
namespace Theorem
namespace RH
namespace ProofStatus

theorem proof_status_contract_not_allowed :
    ¬ Folder.RH.ProofStatus.allowedInFinalCone Folder.RH.ProofStatus.contract :=
  Folder.RH.proof_status_contract_not_allowed

theorem proof_status_theorem_target_not_allowed :
    ¬ Folder.RH.ProofStatus.allowedInFinalCone Folder.RH.ProofStatus.theoremTarget :=
  Folder.RH.proof_status_theorem_target_not_allowed

theorem proof_status_external_input_not_allowed :
    ¬ Folder.RH.ProofStatus.allowedInFinalCone Folder.RH.ProofStatus.externalAnalyticInput :=
  Folder.RH.proof_status_external_input_not_allowed

theorem allowed_status_is_checked_or_imported
    {status : Folder.RH.ProofStatus}
    (h : Folder.RH.ProofStatus.allowedInFinalCone status) :
    status = Folder.RH.ProofStatus.checkedByLean ∨
      status = Folder.RH.ProofStatus.importedTheorem :=
  Folder.RH.allowed_status_is_checked_or_imported h

theorem imported_theorem_certificate_allowed
    (I : Folder.RH.ImportedTheoremCertificate) :
    Folder.RH.ProofStatus.allowedInFinalCone I.status :=
  Folder.RH.imported_theorem_certificate_allowed I

theorem imported_theorem_certificate_status
    (I : Folder.RH.ImportedTheoremCertificate) :
    I.status = Folder.RH.ProofStatus.importedTheorem :=
  Folder.RH.imported_theorem_certificate_status I

end ProofStatus
end RH
end Theorem
end Folder
