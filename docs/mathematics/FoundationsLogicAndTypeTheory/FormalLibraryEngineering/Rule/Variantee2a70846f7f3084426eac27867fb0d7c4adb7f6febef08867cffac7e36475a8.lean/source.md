# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rule.Variantee2a70846f7f3084426eac27867fb0d7c4adb7f6febef08867cffac7e36475a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c11705a1454480d01276778a7792ad1362fce2da` · SHA-256 `ee2a70846f7f3084426eac27867fb0d7c4adb7f6febef08867cffac7e36475a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.Presentation.Rule

Radiation role: presentation-rule
BinaryMatrix spine: This module defines presentation rules as views over carriers, distinct from archive reconstruction rules.
Ontology: presentation.rule
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: presentation
-/

namespace Folder
namespace Presentation

structure PresentationRule (α β : Type _) where
  name : String
  apply : α → β

def copyRule (α : Type _) : PresentationRule α α where
  name := "copy"
  apply := id

def IsFixedBy
    (R : PresentationRule α α)
    (x : α) : Prop :=
  R.apply x = x

theorem copyRule_fixed
    (x : α) :
    IsFixedBy (copyRule α) x :=
  rfl

end Presentation
end Folder
```
