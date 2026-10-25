# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Proposition.Variantbd8e13b8284e58fcf41fddc67721960c3f9df5a878e3b961df88df33f1328c68

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5576106d0c37c41e19c1272da707519b59888da` · SHA-256 `bd8e13b8284e58fcf41fddc67721960c3f9df5a878e3b961df88df33f1328c68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.Proposition.Proposition

Radiation role: documentation-support
BinaryMatrix spine: This module provides notation, interpretation, or documentation-facing support around the BinaryMatrix spine.
Ontology: proposition.proposition
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


set_option linter.dupNamespace false

namespace Folder
namespace Proposition

structure Proposition where
  statement : Prop
  label : String

end Proposition
end Folder
```
