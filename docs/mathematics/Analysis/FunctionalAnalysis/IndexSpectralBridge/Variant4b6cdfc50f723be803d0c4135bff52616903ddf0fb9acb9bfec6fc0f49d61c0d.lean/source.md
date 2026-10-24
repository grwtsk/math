# Complete source: GRWTSK.Analysis.FunctionalAnalysis.IndexSpectralBridge.Variant4b6cdfc50f723be803d0c4135bff52616903ddf0fb9acb9bfec6fc0f49d61c0d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b780aeaac138a66acce673df56b6321725728725` · SHA-256 `4b6cdfc50f723be803d0c4135bff52616903ddf0fb9acb9bfec6fc0f49d61c0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.IndexSpectralBridge

/-!
# Folder.Theorem.CanonicalPath.IndexSpectralBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports canonical-path index-spectral facts, not BinaryMatrix data.
Ontology: proof.canonical_path.index_spectral_bridge
Pivot role: dual
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem index_spectral_alignment
    {M : Folder.DerivedSheaf.MellKTheory}
    {I : Folder.DerivedSheaf.KTheoryIndex M}
    (B : Folder.CanonicalPath.IndexSpectralAlignmentBridge M I)
    (h : I.indexClass.Nonzero) :
    B.target.boundaryData.aligned :=
  Folder.CanonicalPath.index_spectral_alignment B h

theorem critical_line_from_index_spectral_alignment
    {M : Folder.DerivedSheaf.MellKTheory}
    {I : Folder.DerivedSheaf.KTheoryIndex M}
    (B : Folder.CanonicalPath.IndexSpectralAlignmentBridge M I)
    (C : Folder.CanonicalPath.SpectralBoundaryCriticalLineTargetBridge B.target)
    (h : I.indexClass.Nonzero)
    (z : B.target.Zeros) :
    Folder.Research.LFunctionZero.LiesOnCriticalLine
      (B.target.zeroData z) :=
  Folder.CanonicalPath.critical_line_from_index_spectral_alignment B C h z

end CanonicalPath
end Theorem
end Folder
```
