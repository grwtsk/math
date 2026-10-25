# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GlobalAlignment.Variant79a033542435f24fa3225b9bec7b651e9f82946998aa90c788622d0aa44c8d1f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96ae6608bd8d813f2d70562dfeb08eb743c05570` · SHA-256 `79a033542435f24fa3225b9bec7b651e9f82946998aa90c788622d0aa44c8d1f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.GlobalAlignment

/-!
# Folder.Theorem.CanonicalPath.GlobalAlignment

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports canonical-path global alignment facts, not BinaryMatrix zero data.
Ontology: proof.canonical_path.global_alignment
Pivot role: dual
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem canonical_path_transport_invariant
    {M : Folder.DerivedSheaf.MellKTheory}
    (P : Folder.CanonicalPath.CanonicalPathProgram M) :
    P.transportInvariant :=
  Folder.CanonicalPath.canonical_path_transport_invariant P

theorem canonical_path_global_index_nonzero
    {M : Folder.DerivedSheaf.MellKTheory}
    (P : Folder.CanonicalPath.CanonicalPathProgram M)
    {x : P.globalIndex.Object}
    (h : P.globalIndex.relevant x) :
    (P.globalIndex.kIndexAt x).indexClass.Nonzero :=
  Folder.CanonicalPath.canonical_path_global_index_nonzero P h

theorem canonical_path_spectral_alignment
    {M : Folder.DerivedSheaf.MellKTheory}
    (P : Folder.CanonicalPath.CanonicalPathProgram M)
    {x : P.globalIndex.Object}
    (h : P.globalIndex.relevant x) :
    (P.bridgeAt x).target.boundaryData.aligned :=
  Folder.CanonicalPath.canonical_path_spectral_alignment P h

theorem conditional_global_spectral_alignment_from_supplied_bridge
    {M : Folder.DerivedSheaf.MellKTheory}
    (P : Folder.CanonicalPath.CanonicalPathProgram M)
    {x : P.globalIndex.Object}
    (h : P.globalIndex.relevant x)
    (z : (P.bridgeAt x).target.Zeros) :
    Folder.Research.LFunctionZero.LiesOnCriticalLine
      ((P.bridgeAt x).target.zeroData z) :=
  Folder.CanonicalPath.conditional_global_spectral_alignment_from_supplied_bridge P h z

end CanonicalPath
end Theorem
end Folder
```
