# Complete source: GRWTSK.NumberTheory.Moebius.CoreBoundaryMovingWindowBilinear

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b392f4003d3136ac4a7ed39d5ad699f9cd17b82` · SHA-256 `b265c42ad23a59a4d8a14048f76dfb56df308163ebb9946a39e8ebcf4b6590b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #603. Parent: draft PR #601 at
`0cc661c2e11ab023c90b0e7bd58085c9ee36ef96`.
-/
import GRWTSK.NumberTheory.Moebius.CoreBoundaryPreservingHybrid

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Core depths carrying the exceptional maximal active length `2^j`. -/
def boundaryCoreDepths (j : ℕ) : Finset ℕ :=
  (coreLongDeepDepths j).filter
    (fun t => harmonicShiftCount j t = 2 ^ j)

/-- Common terminal Abel drop on every boundary depth. -/
def boundaryTerminalDrop (j : ℕ) : ℝ :=
  reciprocalFirstDifference (2 ^ (j + 1) - 1)

/-- Signed cumulative-correlation packet before multiplying by the common
terminal Abel drop. -/
def boundaryCumulativeCorrelationPacket (j : ℕ) : ℝ :=
  ∑ t ∈ boundaryCoreDepths j,
    cumulativeHarmonicShiftCorrelation j t (2 ^ j)

/-- A boundary depth necessarily lies in the left depth regime. -/
theorem boundaryCoreDepth_left
    {j t : ℕ}
    (ht : t ∈ boundaryCoreDepths j) :
    t + 1 < 2 ^ j := by
  simp only [boundaryCoreDepths, Finset.mem_filter] at ht
  have hcount : harmonicShiftCount j t = 2 ^ j := ht.2
  by_contra hnot
  have hright : 2 ^ j ≤ t + 1 := Nat.le_of_not_gt hnot
  rw [harmonicShiftCount_eq_rightDistance hright] at hcount
  rw [Nat.pow_succ] at hcount
  omega

/-- The terminal cumulative contribution has one common reciprocal drop on
every boundary depth. -/
theorem harmonicTerminalCumulativeContribution_eq_boundary
    {j t : ℕ}
    (ht : t ∈ boundaryCoreDepths j) :
    harmonicTerminalCumulativeContribution j t =
      cumulativeHarmonicShiftCorrelation j t (2 ^ j) *
        boundaryTerminalDrop j := by
  have hleft := boundaryCoreDepth_left ht
  have hcount :
      harmonicShiftCount j t = 2 ^ j := by
    simpa [boundaryCoreDepths] using
      (Finset.mem_filter.mp ht).2
  have hX : 0 < 2 ^ j := by positivity
  unfold harmonicTerminalCumulativeContribution
  rw [if_neg (by simpa [hcount] using (Nat.ne_of_gt hX))]
  rw [hcount]
  unfold harmonicShiftFirstDifference boundaryTerminalDrop
    reciprocalFirstDifference
  rw [harmonicShiftReciprocal_eq_left hleft,
    harmonicShiftReciprocal_eq_left hleft]
  congr 1 <;> congr 1
  · rw [Nat.pow_succ]
    omega
  · rw [Nat.pow_succ]
    omega

/-- The signed boundary packet is exactly the sum over boundary depths. -/
theorem coreBoundarySignedPacket_eq_boundaryDepthSum
    (j : ℕ) :
    coreBoundarySignedPacket j =
      ∑ t ∈ boundaryCoreDepths j,
        2 * harmonicTerminalCumulativeContribution j t := by
  unfold coreBoundarySignedPacket coreBoundarySignedDepthContribution
    boundaryCoreDepths
  rw [Finset.sum_filter]

/-- Exact common-factor extraction for the exceptional signed boundary packet. -/
theorem coreBoundarySignedPacket_eq_commonDrop
    (j : ℕ) :
    coreBoundarySignedPacket j =
      2 * boundaryTerminalDrop j *
        boundaryCumulativeCorrelationPacket j := by
  rw [coreBoundarySignedPacket_eq_boundaryDepthSum]
  unfold boundaryCumulativeCorrelationPacket
  calc
    (∑ t ∈ boundaryCoreDepths j,
      2 * harmonicTerminalCumulativeContribution j t) =
      ∑ t ∈ boundaryCoreDepths j,
        2 * (cumulativeHarmonicShiftCorrelation j t (2 ^ j) *
          boundaryTerminalDrop j) := by
      apply Finset.sum_congr rfl
      intro t ht
      rw [harmonicTerminalCumulativeContribution_eq_boundary ht]
    _ = 2 * boundaryTerminalDrop j *
        ∑ t ∈ boundaryCoreDepths j,
          cumulativeHarmonicShiftCorrelation j t (2 ^ j) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro t _ht
      ring

/-- Length-`2^j` moving Möbius window indexed by reverse depth offset `u`.
The natural subtraction is safe on the intended range `u<2^j`. -/
def boundaryMovingWindowMertens (j u : ℕ) : ℝ :=
  ∑ k ∈ Finset.range (2 ^ j),
    moebiusReal (2 ^ j - u + k)

/-- Signed tail in the depth variable paired with one moving Möbius window. -/
def boundaryTailMertens (j u : ℕ) : ℝ :=
  ∑ t ∈ boundaryCoreDepths j,
    if u ≤ t then moebiusReal (t - u + 1) else 0

/-- Target moving-window bilinear form for the exceptional boundary packet. -/
def boundaryMovingWindowBilinearPacket (j : ℕ) : ℝ :=
  ∑ u ∈ Finset.range (2 ^ j),
    boundaryMovingWindowMertens j u *
      boundaryTailMertens j u

/-- Finite identification still required to convert the boundary correlation
packet into the moving-window bilinear form.  This carries no analytic
estimate. -/
structure BoundaryMovingWindowBilinearAdapter : Type where
  identify :
    ∀ j : ℕ,
      boundaryCumulativeCorrelationPacket j =
        boundaryMovingWindowBilinearPacket j

/-- Once the finite moving-window identification is supplied, the signed
boundary packet has the exact common-drop bilinear representation. -/
theorem coreBoundarySignedPacket_eq_movingWindowBilinear
    (bridge : BoundaryMovingWindowBilinearAdapter)
    (j : ℕ) :
    coreBoundarySignedPacket j =
      2 * boundaryTerminalDrop j *
        boundaryMovingWindowBilinearPacket j := by
  rw [coreBoundarySignedPacket_eq_commonDrop, bridge.identify j]

/-- Source-facing signed boundary bilinear estimate. -/
def SubpolynomialBoundaryMovingWindowBilinearPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      |2 * boundaryTerminalDrop j *
        boundaryMovingWindowBilinearPacket j| ≤
          C * (((2 ^ j : ℕ) : ℝ) ^ δ)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreBoundarySignedPacket_eq_commonDrop
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreBoundarySignedPacket_eq_movingWindowBilinear
```
