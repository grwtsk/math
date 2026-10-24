# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.IndexSpectralBridge.Variantc58145058640a7dbde851d07999db3c23d86637e5c0e3389ef0ad89e4a6c26b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e75ef1f07d59a030794105b49a42cca47036ed95` · SHA-256 `c58145058640a7dbde851d07999db3c23d86637e5c0e3389ef0ad89e4a6c26b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.DiracKTraceFormula
import Folder.AdelicInfinityTopos.SpectralBoundaryAlignment

/-!
# Folder.CanonicalPath.IndexSpectralBridge

Radiation role: research-boundary
BinaryMatrix spine: This module separates K-index persistence from spectral boundary alignment, not BinaryMatrix data.
Ontology: canonical_path.index_spectral_bridge
Pivot role: dual
Zero typology: l-function
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/--
Boundary-alignment target data without assuming alignment already holds.
-/
structure SpectralBoundaryAlignmentTarget where
  sheaf : AdelicInfinityTopos.AdelicSpectralSheaf
  Zeros : Type
  zeroData :
    Zeros → Research.LFunctionZero.LFunctionZeroData
  boundaryData :
    AdelicInfinityTopos.SpectralBoundaryData sheaf
  sourceLabel : String

/--
Separate bridge from a boundary-alignment target to critical-line location.

This remains the decisive spectral-boundary criterion; it is not part of the
alignment target itself.
-/
structure SpectralBoundaryCriticalLineTargetBridge
    (T : SpectralBoundaryAlignmentTarget) where
  alignmentForcesCriticalLine :
    T.boundaryData.aligned →
      ∀ z : T.Zeros,
        Research.LFunctionZero.LiesOnCriticalLine (T.zeroData z)
  sourceLabel : String

/--
The decisive index-spectral bridge target.

The bridge keeps topological index persistence separate from spectral boundary
alignment. The implication from nonzero K-index to alignment is supplied here;
it is not a consequence of index invariance alone.
-/
structure IndexSpectralAlignmentBridge
    (M : DerivedSheaf.MellKTheory)
    (I : DerivedSheaf.KTheoryIndex M) where
  Trace : DerivedSheaf.TraceTarget
  traceFormula :
    DerivedSheaf.DiracKIndexTraceFormula M Trace I
  target : SpectralBoundaryAlignmentTarget
  nonzeroIndexForcesAlignment :
    I.indexClass.Nonzero → target.boundaryData.aligned
  sourceLabel : String

theorem index_spectral_alignment
    {M : DerivedSheaf.MellKTheory}
    {I : DerivedSheaf.KTheoryIndex M}
    (B : IndexSpectralAlignmentBridge M I)
    (h : I.indexClass.Nonzero) :
    B.target.boundaryData.aligned :=
  B.nonzeroIndexForcesAlignment h

theorem critical_line_from_index_spectral_alignment
    {M : DerivedSheaf.MellKTheory}
    {I : DerivedSheaf.KTheoryIndex M}
    (B : IndexSpectralAlignmentBridge M I)
    (C : SpectralBoundaryCriticalLineTargetBridge B.target)
    (h : I.indexClass.Nonzero)
    (z : B.target.Zeros) :
    Research.LFunctionZero.LiesOnCriticalLine
      (B.target.zeroData z) :=
  C.alignmentForcesCriticalLine
    (B.nonzeroIndexForcesAlignment h) z

end CanonicalPath
end Folder
```
