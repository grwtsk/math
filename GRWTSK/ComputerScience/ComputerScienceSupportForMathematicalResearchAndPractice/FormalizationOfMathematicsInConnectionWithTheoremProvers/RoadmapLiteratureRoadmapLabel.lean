import Folder.CanonicalPath.Literature.PhaseI
import Folder.CanonicalPath.Literature.PhaseII
import Folder.CanonicalPath.Literature.PhaseIII

/-!
# Folder.CanonicalPath.Literature.Roadmap

Radiation role: research-boundary
BinaryMatrix spine: This module summarizes the literature-backed attack order.
Ontology: canonical.literature_compendium
Pivot role: none
Zero typology: none
Contract boundary: external-witness
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath
namespace Literature

def literatureRoadmapLabel : String :=
  "Conrad/Hall/KM/Grivaux -> Rodgers-Tao/Salamon-Weber/Weber -> Quillen/APS/Bismut-Cheeger/dg trace/crystalline comparison"

theorem literature_roadmap_has_phaseI :
    phaseICluster.recommendedOrder ≠ [] :=
  phaseI_recommended_order_nonempty

end Literature
end CanonicalPath
end Folder
