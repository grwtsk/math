/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #605. Parent: draft PR #604 at
`0b473a595e1c441b151bd60f958789a8e7394b59`.
-/
import GRWTSK.NumberTheory.Moebius.CoreBoundaryMovingWindowBilinear

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Reverse a finite range without changing its sum. -/
private theorem sum_range_reverse
    (F : ℕ → ℝ) (t : ℕ) :
    (∑ a ∈ Finset.range (t + 1), F a) =
      ∑ u ∈ Finset.range (t + 1), F (t - u) := by
  classical
  apply Finset.sum_bij (fun a _ha => t - a)
  · intro a ha
    simp only [Finset.mem_range] at ha ⊢
    omega
  · intro a₁ ha₁ a₂ ha₂ h
    simp only [Finset.mem_range] at ha₁ ha₂
    omega
  · intro u hu
    simp only [Finset.mem_range] at hu
    refine ⟨t - u, ?_, ?_⟩
    · simp only [Finset.mem_range]
      omega
    · omega
  · intro a ha
    simp only [Finset.mem_range] at ha
    congr 1
    omega

/-- At a boundary depth, the source-specific short Möbius interval becomes the
moving length-`2^j` window indexed by reverse depth offset `u=t-a`. -/
theorem harmonicShortMobiusSum_eq_boundaryMovingWindow
    {j t a : ℕ}
    (ht : t ∈ boundaryCoreDepths j)
    (ha : a < t + 1) :
    harmonicShortMobiusSum j t (2 ^ j) a =
      boundaryMovingWindowMertens j (t - a) := by
  have hleft := boundaryCoreDepth_left ht
  unfold harmonicShortMobiusSum boundaryMovingWindowMertens
  apply Finset.sum_congr rfl
  intro k _hk
  rw [harmonicShiftLower_eq_left hleft]
  congr 2
  omega

/-- One boundary cumulative correlation is exactly a reverse-depth moving
window sum. -/
theorem cumulativeBoundaryCorrelation_eq_reverseWindow
    {j t : ℕ}
    (ht : t ∈ boundaryCoreDepths j) :
    cumulativeHarmonicShiftCorrelation j t (2 ^ j) =
      ∑ u ∈ Finset.range (t + 1),
        boundaryMovingWindowMertens j u *
          moebiusReal (t - u + 1) := by
  rw [cumulativeHarmonicShiftCorrelation_eq_shortIntervalAverage]
  calc
    (∑ a ∈ Finset.range (t + 1),
      moebiusReal (a + 1) *
        harmonicShortMobiusSum j t (2 ^ j) a) =
      ∑ a ∈ Finset.range (t + 1),
        moebiusReal (a + 1) *
          boundaryMovingWindowMertens j (t - a) := by
      apply Finset.sum_congr rfl
      intro a ha
      rw [harmonicShortMobiusSum_eq_boundaryMovingWindow
        ht (Finset.mem_range.mp ha)]
    _ = ∑ u ∈ Finset.range (t + 1),
        moebiusReal (t - u + 1) *
          boundaryMovingWindowMertens j u := by
      rw [sum_range_reverse
        (fun a =>
          moebiusReal (a + 1) *
            boundaryMovingWindowMertens j (t - a)) t]
      apply Finset.sum_congr rfl
      intro u hu
      have hut : u ≤ t := by
        have := Finset.mem_range.mp hu
        omega
      congr 1 <;> omega
    _ = ∑ u ∈ Finset.range (t + 1),
        boundaryMovingWindowMertens j u *
          moebiusReal (t - u + 1) := by
      apply Finset.sum_congr rfl
      intro u _hu
      ring

/-- Boundary depths lie strictly below the left scale, so their reverse-offset
range may be zero-padded to `range (2^j)`. -/
theorem cumulativeBoundaryCorrelation_eq_paddedWindow
    {j t : ℕ}
    (ht : t ∈ boundaryCoreDepths j) :
    cumulativeHarmonicShiftCorrelation j t (2 ^ j) =
      ∑ u ∈ Finset.range (2 ^ j),
        if u ≤ t then
          boundaryMovingWindowMertens j u *
            moebiusReal (t - u + 1)
        else 0 := by
  rw [cumulativeBoundaryCorrelation_eq_reverseWindow ht]
  have hleft := boundaryCoreDepth_left ht
  have hle : t + 1 ≤ 2 ^ j := by omega
  rw [sum_range_eq_sum_range_indicator_of_le
    (fun u =>
      boundaryMovingWindowMertens j u *
        moebiusReal (t - u + 1)) hle]
  apply Finset.sum_congr rfl
  intro u hu
  have huX := Finset.mem_range.mp hu
  by_cases hut : u ≤ t
  · have hut' : u < t + 1 := by omega
    simp [hut, hut']
  · have hut' : ¬ u < t + 1 := by omega
    simp [hut, hut']

/-- Outer finite Fubini identifies the boundary correlation packet with the
moving-window bilinear packet. -/
theorem boundaryCumulativeCorrelationPacket_eq_movingWindowBilinear
    (j : ℕ) :
    boundaryCumulativeCorrelationPacket j =
      boundaryMovingWindowBilinearPacket j := by
  unfold boundaryCumulativeCorrelationPacket
    boundaryMovingWindowBilinearPacket
  calc
    (∑ t ∈ boundaryCoreDepths j,
      cumulativeHarmonicShiftCorrelation j t (2 ^ j)) =
      ∑ t ∈ boundaryCoreDepths j,
        ∑ u ∈ Finset.range (2 ^ j),
          if u ≤ t then
            boundaryMovingWindowMertens j u *
              moebiusReal (t - u + 1)
          else 0 := by
      apply Finset.sum_congr rfl
      intro t ht
      rw [cumulativeBoundaryCorrelation_eq_paddedWindow ht]
    _ = ∑ u ∈ Finset.range (2 ^ j),
        ∑ t ∈ boundaryCoreDepths j,
          if u ≤ t then
            boundaryMovingWindowMertens j u *
              moebiusReal (t - u + 1)
          else 0 := by
      rw [Finset.sum_comm]
    _ = ∑ u ∈ Finset.range (2 ^ j),
        boundaryMovingWindowMertens j u *
          ∑ t ∈ boundaryCoreDepths j,
            if u ≤ t then moebiusReal (t - u + 1) else 0 := by
      apply Finset.sum_congr rfl
      intro u _hu
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro t _ht
      by_cases hut : u ≤ t <;> simp [hut]
    _ = ∑ u ∈ Finset.range (2 ^ j),
        boundaryMovingWindowMertens j u *
          boundaryTailMertens j u := by
      rfl

/-- The finite moving-window adapter is constructed at source level. -/
def boundaryMovingWindowBilinearAdapter :
    BoundaryMovingWindowBilinearAdapter where
  identify := boundaryCumulativeCorrelationPacket_eq_movingWindowBilinear

/-- Unconditional exact source factorization of the exceptional signed boundary
packet into the common terminal drop and moving-window bilinear packet. -/
theorem coreBoundarySignedPacket_eq_movingWindowBilinear_exact
    (j : ℕ) :
    coreBoundarySignedPacket j =
      2 * boundaryTerminalDrop j *
        boundaryMovingWindowBilinearPacket j :=
  coreBoundarySignedPacket_eq_movingWindowBilinear
    boundaryMovingWindowBilinearAdapter j

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.cumulativeBoundaryCorrelation_eq_reverseWindow
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.boundaryCumulativeCorrelationPacket_eq_movingWindowBilinear
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreBoundarySignedPacket_eq_movingWindowBilinear_exact
