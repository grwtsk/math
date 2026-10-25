# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArithmeticBoundaryBridge.Variant4cab7300b4ae2f3623cfa47a2595f4ac29f8926180c79747749e186cf3c5f905

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ced488e7338945d00bca2e41429973380b8430d` · SHA-256 `4cab7300b4ae2f3623cfa47a2595f4ac29f8926180c79747749e186cf3c5f905`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.ArithmeticBoundaryBridge

/-!
# Folder.Theorem.DerivedSheaf.ArithmeticBoundaryBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports arithmetic-to-K-index bridge facts, not BinaryMatrix data.
Ontology: derived.arithmetic_k_index_bridge
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem arithmetic_bridge_supports_k_index
    {M : Folder.DerivedSheaf.MellKTheory}
    (B : Folder.DerivedSheaf.ArithmeticKTheoryIndexBridge M) :
    B.arithmeticDataSupportsKIndex :=
  Folder.DerivedSheaf.arithmetic_bridge_supports_k_index B

theorem arithmetic_bridge_has_k_index
    {M : Folder.DerivedSheaf.MellKTheory}
    (B : Folder.DerivedSheaf.ArithmeticKTheoryIndexBridge M) :
    ∃ I : Folder.DerivedSheaf.KTheoryIndex M, I = B.index :=
  Folder.DerivedSheaf.arithmetic_bridge_has_k_index B

end DerivedSheaf
end Theorem
end Folder
```
