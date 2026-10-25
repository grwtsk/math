# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Roadmap.Variant4bdf56a5c39c01a18a498f01c468788040b17050a2751ed0bc41d5d81b332736

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `635999c8a74c1ef3bacf904abd3af273d1704f0c` · SHA-256 `4bdf56a5c39c01a18a498f01c468788040b17050a2751ed0bc41d5d81b332736`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
