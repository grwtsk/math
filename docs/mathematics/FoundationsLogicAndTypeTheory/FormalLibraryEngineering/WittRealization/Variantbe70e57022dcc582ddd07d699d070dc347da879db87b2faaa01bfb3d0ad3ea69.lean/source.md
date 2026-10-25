# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittRealization.Variantbe70e57022dcc582ddd07d699d070dc347da879db87b2faaa01bfb3d0ad3ea69

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33b63c88009b922ecd67e932d8e4921dbc5965ba` · SHA-256 `be70e57022dcc582ddd07d699d070dc347da879db87b2faaa01bfb3d0ad3ea69`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.WittRealization

/-!
# Folder.Theorem.DerivedSheaf.WittRealization

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Witt realization facts, not BinaryMatrix data.
Ontology: derived.witt_realization
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem witt_realization_compatible
    {M : Folder.DerivedSheaf.MellKTheory}
    {W : Folder.CrystallineIndex.WittComplex}
    (R : Folder.DerivedSheaf.WittRealization M W) :
    R.compatibleWithChernCharacter :=
  Folder.DerivedSheaf.witt_realization_compatible R

theorem ktheory_index_witt_image_eq
    {M : Folder.DerivedSheaf.MellKTheory}
    {W : Folder.CrystallineIndex.WittComplex}
    {R : Folder.DerivedSheaf.WittRealization M W}
    {I : Folder.DerivedSheaf.KTheoryIndex M}
    (X : Folder.DerivedSheaf.KTheoryIndexWittImage R I) :
    X.image = R.realize I.indexClass :=
  Folder.DerivedSheaf.ktheory_index_witt_image_eq X

end DerivedSheaf
end Theorem
end Folder
```
