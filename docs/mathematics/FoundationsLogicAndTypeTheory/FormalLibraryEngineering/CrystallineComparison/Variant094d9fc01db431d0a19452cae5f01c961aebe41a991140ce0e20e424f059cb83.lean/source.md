# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineComparison.Variant094d9fc01db431d0a19452cae5f01c961aebe41a991140ce0e20e424f059cb83

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3fd93026d90f05cea6b4840e09d905b1beed441` · SHA-256 `094d9fc01db431d0a19452cae5f01c961aebe41a991140ce0e20e424f059cb83`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
