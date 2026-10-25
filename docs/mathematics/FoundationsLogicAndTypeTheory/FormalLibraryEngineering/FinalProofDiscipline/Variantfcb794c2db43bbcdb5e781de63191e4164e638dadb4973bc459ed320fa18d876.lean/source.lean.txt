import Folder.CanonicalPath.FinalProofDiscipline

/-!
# Folder.Theorem.CanonicalPath.FinalProofDiscipline

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports final RH proof-discipline facts.
Ontology: proof.canonical_path.final_proof_discipline
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem final_policy_imports_only_theorems
    (P : Folder.CanonicalPath.FinalRHDependencyPolicy) :
    P.importsOnlyTheoremModules :=
  Folder.CanonicalPath.final_policy_imports_only_theorems P

theorem final_policy_has_no_contracts
    (P : Folder.CanonicalPath.FinalRHDependencyPolicy) :
    P.noResearchContractsInDependencyCone :=
  Folder.CanonicalPath.final_policy_has_no_contracts P

theorem final_policy_specializes_to_zeta
    (P : Folder.CanonicalPath.FinalRHDependencyPolicy) :
    P.exactZetaSpecialization :=
  Folder.CanonicalPath.final_policy_specializes_to_zeta P

end CanonicalPath
end Theorem
end Folder
