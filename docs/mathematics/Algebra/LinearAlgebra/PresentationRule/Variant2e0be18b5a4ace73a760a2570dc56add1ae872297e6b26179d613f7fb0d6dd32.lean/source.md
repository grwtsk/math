# Complete source: GRWTSK.Algebra.LinearAlgebra.PresentationRule.Variant2e0be18b5a4ace73a760a2570dc56add1ae872297e6b26179d613f7fb0d6dd32

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b94cf9c6c676f866659a9254b9c149265066571b` · SHA-256 `2e0be18b5a4ace73a760a2570dc56add1ae872297e6b26179d613f7fb0d6dd32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Carrier.BinaryMatrix

/-!
# Folder.Archive.PresentationRule

Radiation role: archive-rule-engine
BinaryMatrix spine: This module separates local reconstruction rules from materialized BinaryMatrixStream storage.
Ontology: archive.presentation_rule
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: infrastructure
-/

namespace Folder
namespace Archive

structure PresentationRule where
  name : String
  apply : Carrier.BinaryMatrix → Carrier.BinaryMatrix

def IsFixedBy
    (R : PresentationRule)
    (M : Carrier.BinaryMatrix) : Prop :=
  R.apply M = M

def copyRule : PresentationRule where
  name := "copy"
  apply := id

theorem copyRule_fixed
    (M : Carrier.BinaryMatrix) :
    IsFixedBy copyRule M :=
  rfl

end Archive
end Folder
```
