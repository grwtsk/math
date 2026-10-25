# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CohomologyClass.Variantfc5d8387d2dd37ee37ae4fb3e040b6c7c7b3033af5fa770a1295e227d416268d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e752057d6a7770f0dde7c000e6df50ff26fdd77a` · SHA-256 `fc5d8387d2dd37ee37ae4fb3e040b6c7c7b3033af5fa770a1295e227d416268d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineIndex.CohomologyClass
import Folder.CrystallineIndex.DeRhamWittBoundary

/-!
# Folder.Theorem.CrystallineIndex.CohomologyClass

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports cohomology-class and de Rham-Witt boundary facts.
Ontology: proof.crystalline_index.cohomology_class
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace CohomologyClass

theorem class_equality_compatible
    {H : Folder.CrystallineIndex.CohomologyTheory}
    {a b : Folder.CrystallineIndex.CohomologyClass H}
    (E : Folder.CrystallineIndex.ClassEquality a b) :
    E.compatible :=
  Folder.CrystallineIndex.class_equality_compatible E

theorem deRhamWitt_is_complex
    (W : Folder.CrystallineIndex.DeRhamWittComplexContract) :
    W.witt.isComplex :=
  Folder.CrystallineIndex.deRhamWitt_is_complex W

theorem deRhamWitt_identifies_with_crystalline_target
    (W : Folder.CrystallineIndex.DeRhamWittComplexContract) :
    W.identifiesWithCrystallineTarget :=
  Folder.CrystallineIndex.deRhamWitt_identifies_with_crystalline_target W

end CohomologyClass
end CrystallineIndex
end Theorem
end Folder
```
