# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineIndexBridge.Variant9e1675399bcfcc3b2a4ecf84144b677f97707e77f8310d9eea35aba1fe172bb8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `615c662102dd5f06dcbb484e021b927416518297` · SHA-256 `9e1675399bcfcc3b2a4ecf84144b677f97707e77f8310d9eea35aba1fe172bb8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.CrystallineIndexBridge

/-!
# Folder.Theorem.DerivedSheaf.CrystallineIndexBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports K-index-to-crystalline bridge facts, not BinaryMatrix data.
Ontology: derived.k_index_to_crystalline_index
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem k_index_to_crystalline_index_compatible
    {M : Folder.DerivedSheaf.MellKTheory}
    {W : Folder.CrystallineIndex.WittComplex}
    {R : Folder.DerivedSheaf.WittRealization M W}
    {I : Folder.DerivedSheaf.KTheoryIndex M}
    (B : Folder.DerivedSheaf.KIndexToCrystallineIndexBridge R I) :
    B.compatibleWithCrystallineIndexBoundary :=
  Folder.DerivedSheaf.k_index_to_crystalline_index_compatible B

end DerivedSheaf
end Theorem
end Folder
```
