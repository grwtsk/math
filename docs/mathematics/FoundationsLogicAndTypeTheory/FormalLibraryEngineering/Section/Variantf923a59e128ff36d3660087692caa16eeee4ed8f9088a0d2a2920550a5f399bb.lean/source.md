# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Section.Variantf923a59e128ff36d3660087692caa16eeee4ed8f9088a0d2a2920550a5f399bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7e59fd1ceeb7f4381564d69a6d7b543b2215c67b` · SHA-256 `f923a59e128ff36d3660087692caa16eeee4ed8f9088a0d2a2920550a5f399bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Stack.Composite
import Folder.Stack.Site

/-!
# Folder.Stack.Section

Radiation role: stack-architecture
BinaryMatrix spine: This module names stack sections without silently proving downstream BinaryMatrix or arithmetic compatibility.
Ontology: stack.section
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/

namespace Folder
namespace Stack

structure StackSection (S : CompositeLayerStack) where
  sectionName : String
  carrierValue : S.cellCarrier.payload
  spectralValue : S.spectralField.payload
  arithmeticValue : S.arithmeticLabel.payload

end Stack
end Folder
```
