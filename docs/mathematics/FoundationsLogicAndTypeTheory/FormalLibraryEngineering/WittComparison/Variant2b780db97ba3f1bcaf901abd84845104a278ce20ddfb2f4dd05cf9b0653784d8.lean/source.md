# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittComparison.Variant2b780db97ba3f1bcaf901abd84845104a278ce20ddfb2f4dd05cf9b0653784d8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6435a4dc756f9714b5164d0874b13f49a40d7342` · SHA-256 `2b780db97ba3f1bcaf901abd84845104a278ce20ddfb2f4dd05cf9b0653784d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Prismatic.PrismaticRealization

/-!
# Folder.Prismatic.WittComparison

Radiation role: research-boundary
BinaryMatrix spine: This module records Witt comparison contracts, not BinaryMatrix data.
Ontology: prismatic_realization
Pivot role: prismatic
Zero typology: none
Contract boundary: contract
Composite stack role: canonical-path
-/

namespace Folder
namespace Prismatic

/-- Abstract Witt realization object. -/
structure WittRealization where
  objectLabel : String
  wittLabel : String

/-- Contract-level Witt comparison; not a theorem. -/
structure PrismaticWittComparison where
  prismatic : PrismaticCohomology
  witt : WittRealization
  comparisonLabel : String

theorem prismatic_witt_comparison_has_prismatic_side
    (C : PrismaticWittComparison) :
    ∃ P : PrismaticCohomology, C.prismatic = P :=
  ⟨C.prismatic, rfl⟩

theorem prismatic_witt_comparison_has_witt_side
    (C : PrismaticWittComparison) :
    ∃ W : WittRealization, C.witt = W :=
  ⟨C.witt, rfl⟩

end Prismatic
end Folder
```
