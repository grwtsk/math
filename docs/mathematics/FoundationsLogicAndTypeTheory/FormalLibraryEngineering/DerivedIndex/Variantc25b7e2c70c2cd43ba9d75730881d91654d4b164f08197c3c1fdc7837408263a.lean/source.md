# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DerivedIndex.Variantc25b7e2c70c2cd43ba9d75730881d91654d4b164f08197c3c1fdc7837408263a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6733a6310e5942c8451e7681d4594233eb7baeda` · SHA-256 `c25b7e2c70c2cd43ba9d75730881d91654d4b164f08197c3c1fdc7837408263a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.EulerCharacteristic

/-!
# Folder.DerivedSheaf.DerivedIndex

Radiation role: research-boundary
BinaryMatrix spine: This module represents derived indices, not BinaryMatrix counts.
Ontology: derived.derived_index
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

structure DerivedIndex where
  complex : SectionComplex
  euler : EulerCharacteristic complex
  interpretsAsIndex : Prop
  interpretsAsIndex_certified : interpretsAsIndex
  sourceLabel : String

theorem derived_index_interprets_as_index
    (I : DerivedIndex) :
    I.interpretsAsIndex :=
  I.interpretsAsIndex_certified

theorem derived_index_has_euler_characteristic
    (I : DerivedIndex) :
    ∃ chi : EulerCharacteristic I.complex, chi = I.euler :=
  ⟨I.euler, rfl⟩

end DerivedSheaf
end Folder
```
