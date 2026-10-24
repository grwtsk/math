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
