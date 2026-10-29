import Folder.CanonicalPath.Milestone

/-!
# Folder.Theorem.CanonicalPath.Milestone

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports canonical-path milestone status facts.
Ontology: proof.canonical_path.milestone_status
Pivot role: dual
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem proved_ne_theoremTarget :
    Folder.CanonicalPath.MilestoneStatus.proved ≠
      Folder.CanonicalPath.MilestoneStatus.theoremTarget :=
  Folder.CanonicalPath.proved_ne_theoremTarget

theorem theoremTarget_ne_proved :
    Folder.CanonicalPath.MilestoneStatus.theoremTarget ≠
      Folder.CanonicalPath.MilestoneStatus.proved :=
  Folder.CanonicalPath.theoremTarget_ne_proved

theorem proved_ne_notClaimed :
    Folder.CanonicalPath.MilestoneStatus.proved ≠
      Folder.CanonicalPath.MilestoneStatus.notClaimed :=
  Folder.CanonicalPath.proved_ne_notClaimed

theorem contract_ne_proved :
    Folder.CanonicalPath.MilestoneStatus.contract ≠
      Folder.CanonicalPath.MilestoneStatus.proved :=
  Folder.CanonicalPath.contract_ne_proved

end CanonicalPath
end Theorem
end Folder
