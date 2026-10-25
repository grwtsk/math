# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FactorTreeIndex.Variant2b1dc4d54fb654144c76589297648fc8cba182e7ec28aa5223ee9b57b9630197

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0979acc10f781ded9e347dc985b5cf5aff994bd3` · SHA-256 `2b1dc4d54fb654144c76589297648fc8cba182e7ec28aa5223ee9b57b9630197`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Archive.FactorTreeIndex

/-!
# Folder.Theorem.Archive.FactorTreeIndex

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes factor-tree logical layer index decoding.
Ontology: proof.archive.factor_tree_index
Pivot role: arithmetic
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: arithmetic
-/

namespace Folder
namespace Theorem
namespace Archive

theorem factorTreeLayerIndex_decodes
    (i : Folder.Archive.FactorTreeLayerIndex) :
    Folder.NumberTheory.factorProduct i.factorMap = i.logicalLayer :=
  Folder.Archive.factorTreeLayerIndex_decodes i

end Archive
end Theorem
end Folder
```
