# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SpectrumObject.Variant6b223d39e584cbc7b6d44d129f7498387c8d18deb0095b1b06fc3b9719cf9d44

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ad6d5a772ff7ee5814513264d666f22f066551e` · SHA-256 `6b223d39e584cbc7b6d44d129f7498387c8d18deb0095b1b06fc3b9719cf9d44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.AdelicInfinityTopos.SpectrumObject

/-!
# Folder.Theorem.AdelicInfinityTopos.SpectrumObject

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports spectrum-object contract exposures.
Ontology: proof.adelic.spectrum_object
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace Theorem
namespace AdelicInfinityTopos
namespace SpectrumObject

theorem spectrum_object_stable
    (X : Folder.AdelicInfinityTopos.SpectrumObject) :
    X.stable :=
  Folder.AdelicInfinityTopos.spectrum_object_stable X

theorem spectrum_morphism_preserves_stability
    {X Y : Folder.AdelicInfinityTopos.SpectrumObject}
    (f : Folder.AdelicInfinityTopos.SpectrumMorphism X Y) :
    f.preservesStableStructure :=
  Folder.AdelicInfinityTopos.spectrum_morphism_preserves_stability f

end SpectrumObject
end AdelicInfinityTopos
end Theorem
end Folder
```
