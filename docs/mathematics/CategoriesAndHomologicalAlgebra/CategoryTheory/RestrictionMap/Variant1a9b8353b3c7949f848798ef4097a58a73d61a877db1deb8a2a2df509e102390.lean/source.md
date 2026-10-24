# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RestrictionMap.Variant1a9b8353b3c7949f848798ef4097a58a73d61a877db1deb8a2a2df509e102390

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76793718e37ba92c05261717f8f414eccc25fe1c` · SHA-256 `1a9b8353b3c7949f848798ef4097a58a73d61a877db1deb8a2a2df509e102390`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.AdelicInfinityTopos.RestrictionMap

/-!
# Folder.Theorem.AdelicInfinityTopos.RestrictionMap

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports restriction-map boundary compatibility.
Ontology: proof.adelic.restriction_map
Pivot role: dual
Zero typology: mixed
Contract boundary: theorem-wrapper
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace Theorem
namespace AdelicInfinityTopos
namespace RestrictionMap

theorem restriction_compatible_with_boundary
    {S : Folder.AdelicInfinityTopos.AdelicSpectralSheaf}
    {i j : Folder.AdelicInfinityTopos.Place}
    (rho : Folder.AdelicInfinityTopos.AdelicRestrictionMap S i j) :
    rho.compatibleWithBoundary :=
  Folder.AdelicInfinityTopos.restriction_compatible_with_boundary rho

end RestrictionMap
end AdelicInfinityTopos
end Theorem
end Folder
```
