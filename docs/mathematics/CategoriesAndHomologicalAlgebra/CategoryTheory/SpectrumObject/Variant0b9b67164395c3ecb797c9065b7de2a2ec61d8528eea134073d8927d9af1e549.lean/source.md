# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SpectrumObject.Variant0b9b67164395c3ecb797c9065b7de2a2ec61d8528eea134073d8927d9af1e549

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `737543a479f742c17a650e4de770fcbddd2640fa` · SHA-256 `0b9b67164395c3ecb797c9065b7de2a2ec61d8528eea134073d8927d9af1e549`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.AdelicInfinityTopos.Place

/-!
# Folder.AdelicInfinityTopos.SpectrumObject

Radiation role: research-boundary
BinaryMatrix spine: This module stores contract-level spectrum objects for adelic fibers.
Ontology: adelic.spectrum_object
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace AdelicInfinityTopos

structure SpectrumObject where
  Carrier : Type _
  suspension : Carrier → Carrier
  homotopyGroup : ℤ → Type _
  stable : Prop
  stable_certified : stable
  label : String

structure SpectrumMorphism
    (X Y : SpectrumObject) where
  map : X.Carrier → Y.Carrier
  preservesStableStructure : Prop
  preservesStableStructure_certified : preservesStableStructure
  label : String

theorem spectrum_object_stable
    (X : SpectrumObject) :
    X.stable :=
  X.stable_certified

theorem spectrum_morphism_preserves_stability
    {X Y : SpectrumObject}
    (f : SpectrumMorphism X Y) :
    f.preservesStableStructure :=
  f.preservesStableStructure_certified

end AdelicInfinityTopos
end Folder
```
