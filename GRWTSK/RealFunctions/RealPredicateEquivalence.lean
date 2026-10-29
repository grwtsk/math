/-
RealPredicateEquivalence — Complete actual real predicates and all three exact proof terms for pivot equality versus zero absolute-deviation bound. Every x/h premise and tactic/proof byte is retained; no analytic-zero, variance, RH or GRH assertion is added.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 3fd0d37603ba8bf1a672f2a24a5415f86fb14e7eef7703f1bf146932f83de288
Organized SHA-256: 8c9731e2f4f61de94bc14cebb8a823161fa9515e01d0998e425e4f58b7e45daa
PMD: 510.5.010.010 real functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

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

namespace GRWTSK.Analysis.RealAnalysis.RealFunctions.ZeroAbsoluteDeviation.Variant3fd0d37603ba8bf1

open Folder
open Folder.Research

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

end GRWTSK.Analysis.RealAnalysis.RealFunctions.ZeroAbsoluteDeviation.Variant3fd0d37603ba8bf1
