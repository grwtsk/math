# Complete source: GRWTSK.Algebra.Crystal.Variant358f734810ec7e7d8bdb8f1cbcb2d97baa488a8bfceb771f0f16f516bf4cc99d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33e227f091f646da0135f2b1a462f3486b0f5843` · SHA-256 `358f734810ec7e7d8bdb8f1cbcb2d97baa488a8bfceb771f0f16f516bf4cc99d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineTensor.InfinitesimalThickening
import Folder.CrystallineTensor.CrystallineSite
import Folder.CrystallineTensor.Crystal

/-!
# Folder.Theorem.CrystallineTensor.Crystal

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports crystalline site and crystal contract exposure facts.
Ontology: proof.crystalline.crystal
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace Theorem
namespace CrystallineTensor
namespace Crystal

theorem thickening_has_nilpotent_ideal
    (T : Folder.CrystallineTensor.InfinitesimalThickening) :
    T.nilpotentIdeal :=
  Folder.CrystallineTensor.thickening_has_nilpotent_ideal T

theorem crystalline_cover_is_cover
    {C : Folder.CrystallineTensor.CrystallineSite}
    {X : C.Site.Obj}
    (U : Folder.CrystallineTensor.CrystallineCover C X) :
    C.topology.IsCover X U.cover :=
  Folder.CrystallineTensor.crystalline_cover_is_cover U

theorem crystal_has_compatibility
    {C : Folder.CrystallineTensor.CrystallineSite}
    (F : Folder.CrystallineTensor.Crystal C) :
    F.crystalCompatibility :=
  Folder.CrystallineTensor.crystal_has_compatibility F

theorem crystal_has_infinitesimal_rigidity
    {C : Folder.CrystallineTensor.CrystallineSite}
    (F : Folder.CrystallineTensor.Crystal C) :
    F.infinitesimalRigidity :=
  Folder.CrystallineTensor.crystal_has_infinitesimal_rigidity F

end Crystal
end CrystallineTensor
end Theorem
end Folder
```
