import Folder.CanonicalPath.Literature.Compendium

/-!
# Folder.Theorem.CanonicalPath.Literature.Compendium

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports literature compendium facts.
Ontology: proof.canonical_path.literature
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath
namespace Literature

theorem phaseI_recommended_order_nonempty :
    Folder.CanonicalPath.Literature.phaseICluster.recommendedOrder ≠ [] :=
  Folder.CanonicalPath.Literature.phaseI_recommended_order_nonempty

theorem phaseII_recommended_order_nonempty :
    Folder.CanonicalPath.Literature.phaseIICluster.recommendedOrder ≠ [] :=
  Folder.CanonicalPath.Literature.phaseII_recommended_order_nonempty

theorem phaseIII_recommended_order_nonempty :
    Folder.CanonicalPath.Literature.phaseIIICluster.recommendedOrder ≠ [] :=
  Folder.CanonicalPath.Literature.phaseIII_recommended_order_nonempty

end Literature
end CanonicalPath
end Theorem
end Folder
