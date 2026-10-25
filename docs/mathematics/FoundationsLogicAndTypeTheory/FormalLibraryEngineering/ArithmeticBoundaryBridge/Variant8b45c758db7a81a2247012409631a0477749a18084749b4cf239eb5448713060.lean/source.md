# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArithmeticBoundaryBridge.Variant8b45c758db7a81a2247012409631a0477749a18084749b4cf239eb5448713060

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b95b7cdfe0e1d637a5a318850b45568d5bdb705a` · SHA-256 `8b45c758db7a81a2247012409631a0477749a18084749b4cf239eb5448713060`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Research.ArithmeticBoundary
import Folder.DerivedSheaf.KTheoryIndex

/-!
# Folder.DerivedSheaf.ArithmeticBoundaryBridge

Radiation role: research-boundary
BinaryMatrix spine: This module relates arithmetic contracts to K-theory indices, not BinaryMatrix data.
Ontology: derived.arithmetic_k_index_bridge
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

open Research.ArithmeticBoundary

/--
Arithmetic data may support a supplied K-theory index.

This is not an index computation inside `Research.ArithmeticBoundary`.
-/
structure ArithmeticKTheoryIndexBridge
    (M : MellKTheory) where
  arithmeticSource : Type _
  hasseWeil? : Option HasseWeilContract
  modularity? : Option ModularityContract
  bsd? : Option BSDContract
  index : KTheoryIndex M
  arithmeticDataSupportsKIndex : Prop
  arithmeticDataSupportsKIndex_certified : arithmeticDataSupportsKIndex
  sourceLabel : String

theorem arithmetic_bridge_supports_k_index
    {M : MellKTheory}
    (B : ArithmeticKTheoryIndexBridge M) :
    B.arithmeticDataSupportsKIndex :=
  B.arithmeticDataSupportsKIndex_certified

theorem arithmetic_bridge_has_k_index
    {M : MellKTheory}
    (B : ArithmeticKTheoryIndexBridge M) :
    ∃ I : KTheoryIndex M, I = B.index :=
  ⟨B.index, rfl⟩

end DerivedSheaf
end Folder
```
