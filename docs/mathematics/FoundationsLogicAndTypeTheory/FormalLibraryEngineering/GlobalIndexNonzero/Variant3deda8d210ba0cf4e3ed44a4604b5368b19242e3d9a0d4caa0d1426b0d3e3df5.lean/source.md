# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GlobalIndexNonzero.Variant3deda8d210ba0cf4e3ed44a4604b5368b19242e3d9a0d4caa0d1426b0d3e3df5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab1232f3b103684e151434d9f18b75c61a7cde99` · SHA-256 `3deda8d210ba0cf4e3ed44a4604b5368b19242e3d9a0d4caa0d1426b0d3e3df5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.GlobalIndexNonzero

/-!
# Folder.Theorem.CanonicalPath.GlobalIndexNonzero

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports canonical-path global index facts, not BinaryMatrix data.
Ontology: proof.canonical_path.global_index_nonzero
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem global_k_index_nonzero
    {M : Folder.DerivedSheaf.MellKTheory}
    (G : Folder.CanonicalPath.GlobalKIndexNonzero M)
    {x : G.Object}
    (h : G.relevant x) :
    (G.kIndexAt x).indexClass.Nonzero :=
  Folder.CanonicalPath.global_k_index_nonzero G h

theorem elliptic_family_global_index_nonzero
    {M : Folder.DerivedSheaf.MellKTheory}
    (E : Folder.CanonicalPath.CertifiedEllipticCurveFamily M)
    {x : E.Curve}
    (h : E.relevantForGRHBoundary x) :
    (E.kIndex x).indexClass.Nonzero :=
  Folder.CanonicalPath.elliptic_family_global_index_nonzero E h

end CanonicalPath
end Theorem
end Folder
```
