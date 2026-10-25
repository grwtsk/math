# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CriticalLine.Variant3fd0d37603ba8bf1a672f2a24a5415f86fb14e7eef7703f1bf146932f83de288

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7e4d64b5b16424a57d71d7b72a08155cb029524` · SHA-256 `3fd0d37603ba8bf1a672f2a24a5415f86fb14e7eef7703f1bf146932f83de288`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Core.DualPivot
import Folder.Harmonic.AnalyticPivot

/-!
# Folder.Research.CriticalLine

Radiation role: research-boundary
BinaryMatrix spine: This module expresses the critical-line real-part condition through the spectral pivot, not through a BinaryMatrix carrier.
Ontology: research.rh.critical_line
Pivot role: spectral
Zero typology: l-function
Contract boundary: proved
Composite stack role: research
-/

namespace Folder
namespace Research
namespace CriticalLine

def IsCriticalLineRealPart (x : ℝ) : Prop :=
  x = Core.spectralPivot

def CenteredWithZeroVariance (x : ℝ) : Prop :=
  Harmonic.CenteredAroundHalf 0 x

theorem criticalLine_of_centered_zero
    (x : ℝ)
    (h : CenteredWithZeroVariance x) :
    IsCriticalLineRealPart x := by
  unfold CenteredWithZeroVariance Harmonic.CenteredAroundHalf at h
  unfold IsCriticalLineRealPart
  have habs : |x - Harmonic.analyticEquilibrium| = 0 :=
    le_antisymm h (abs_nonneg _)
  have hsub : x - Harmonic.analyticEquilibrium = 0 :=
    abs_eq_zero.mp habs
  unfold Harmonic.analyticEquilibrium at hsub
  linarith

theorem centered_zero_of_criticalLine
    (x : ℝ)
    (h : IsCriticalLineRealPart x) :
    CenteredWithZeroVariance x := by
  unfold CenteredWithZeroVariance Harmonic.CenteredAroundHalf
  unfold IsCriticalLineRealPart at h
  rw [h]
  unfold Harmonic.analyticEquilibrium
  simp

theorem criticalLine_iff_centered_zero
    (x : ℝ) :
    IsCriticalLineRealPart x ↔ CenteredWithZeroVariance x :=
  ⟨centered_zero_of_criticalLine x,
    criticalLine_of_centered_zero x⟩

end CriticalLine
end Research
end Folder
```
