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
