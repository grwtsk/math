import Folder.Prismatic.PrismaticRealization

/-!
# Folder.Prismatic.CrystallineComparison

Radiation role: research-boundary
BinaryMatrix spine: This module records comparison contracts, not BinaryMatrix data.
Ontology: prismatic_realization
Pivot role: prismatic
Zero typology: none
Contract boundary: contract
Composite stack role: canonical-path
-/

namespace Folder
namespace Prismatic

/-- Abstract crystalline realization object. -/
structure CrystallineRealization where
  objectLabel : String
  crystallineLabel : String

/-- Contract-level comparison; not a theorem. -/
structure PrismaticCrystallineComparison where
  prismatic : PrismaticCohomology
  crystalline : CrystallineRealization
  comparisonLabel : String

theorem prismatic_crystalline_comparison_has_prismatic_side
    (C : PrismaticCrystallineComparison) :
    ∃ P : PrismaticCohomology, C.prismatic = P :=
  ⟨C.prismatic, rfl⟩

theorem prismatic_crystalline_comparison_has_crystalline_side
    (C : PrismaticCrystallineComparison) :
    ∃ R : CrystallineRealization, C.crystalline = R :=
  ⟨C.crystalline, rfl⟩

end Prismatic
end Folder
