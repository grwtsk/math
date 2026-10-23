/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #791. Direct stacked parent: draft PR #789 at exact head
`7273faca38cd988f93ee366155fbdd76aaa79190`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitZeroWindingAdditiveEnergy

/-!
# Zero-winding signed fibers

The zero-winding relation is

`2*m+h = 2*n+g`.

This module groups all half-index affine pairs by the common coordinate

`c = 2*m+h`.

The resulting zero-winding quartic is exactly four times a sum of squares of
signed fiber amplitudes.  The literal diagonal is therefore retained inside
each square together with every nontrivial same-coordinate cross term.

No estimate of the fiber energy is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Binary Möbius coefficient attached to one half-index affine pair. -/
def halfIndexBinaryMobiusCoefficient
    (r m h : ℕ) : ℝ :=
  moebiusReal (2 * m + r) *
    moebiusReal (2 * m + r + 2 * h)

/-- On the exact half-index support, the common coordinate lies in
`Finset.range (b+1)`. -/
theorem halfIndexZeroWindingCoordinate_lt_endpoint
    {b r h m : ℕ}
    (hm : m ∈ zeroWindingHalfIndexBaseSet b r h) :
    halfIndexZeroWindingCoordinate m h < b + 1 := by
  unfold zeroWindingHalfIndexBaseSet parityHalfIndexAffineBaseSet at hm
  rcases Finset.mem_filter.mp hm with ⟨_hmRange, hmBounds⟩
  unfold halfIndexZeroWindingCoordinate
  omega

/-- Signed amplitude of one exact-coordinate fiber. -/
def parityHalfIndexZeroWindingFiber
    (b r : ℕ)
    (H : Finset ℕ)
    (c : ℕ) : ℝ :=
  ∑ h ∈ H,
    ∑ m ∈ zeroWindingHalfIndexBaseSet b r h,
      if halfIndexZeroWindingCoordinate m h = c then
        halfIndexBinaryMobiusCoefficient r m h
      else 0

/-- Sum of squared signed fiber amplitudes. -/
def parityHalfIndexZeroWindingFiberEnergy
    (b r : ℕ)
    (H : Finset ℕ) : ℝ :=
  4 * ∑ c ∈ Finset.range (b + 1),
    parityHalfIndexZeroWindingFiber b r H c ^ 2

/-- The quartic half-index coefficient factors as a product of the two binary
fiber coefficients. -/
theorem halfIndexQuarticMobiusCoefficient_eq_binary_mul
    (r m h n g : ℕ) :
    halfIndexQuarticMobiusCoefficient r m h n g =
      halfIndexBinaryMobiusCoefficient r m h *
        halfIndexBinaryMobiusCoefficient r n g := by
  unfold halfIndexQuarticMobiusCoefficient
    halfIndexBinaryMobiusCoefficient
  ring

/-- Generic indicator-fiber square identity for the finite half-index support. -/
theorem zeroWindingFiberSquareExpansion
    (b r : ℕ)
    (H : Finset ℕ) :
    (∑ c ∈ Finset.range (b + 1),
      parityHalfIndexZeroWindingFiber b r H c ^ 2) =
      ∑ h ∈ H,
        ∑ g ∈ H,
          ∑ m ∈ zeroWindingHalfIndexBaseSet b r h,
            ∑ n ∈ zeroWindingHalfIndexBaseSet b r g,
              if halfIndexZeroWindingCoordinate m h =
                  halfIndexZeroWindingCoordinate n g then
                halfIndexBinaryMobiusCoefficient r m h *
                  halfIndexBinaryMobiusCoefficient r n g
              else 0 := by
  classical
  unfold parityHalfIndexZeroWindingFiber
  simp_rw [pow_two, Finset.sum_mul, Finset.mul_sum]
  rw [Finset.sum_comm]
  simp_rw [Finset.sum_comm (s := H)]
  apply Finset.sum_congr rfl
  intro h hh
  apply Finset.sum_congr rfl
  intro g hg
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases heq :
      halfIndexZeroWindingCoordinate m h =
        halfIndexZeroWindingCoordinate n g
  · rw [heq]
    rw [Finset.sum_eq_single
      (halfIndexZeroWindingCoordinate n g)]
    · simp
    · intro c hc hcn
      simp [hcn]
    · intro hnot
      exact (hnot
        (Finset.mem_range.mpr
          (halfIndexZeroWindingCoordinate_lt_endpoint hn))).elim
  · have hdisj :
      ∀ c : ℕ,
        ¬ (halfIndexZeroWindingCoordinate m h = c ∧
          halfIndexZeroWindingCoordinate n g = c) := by
      intro c hc
      exact heq (hc.1.trans hc.2.symm)
    simp [heq, hdisj]

/-- Exact signed-fiber representation of the zero-winding quartic surface. -/
theorem parityHalfIndexSignedQuarticZeroWinding_eq_fiberEnergy
    (b r : ℕ)
    (H : Finset ℕ) :
    parityHalfIndexSignedQuarticZeroWinding b r H =
      parityHalfIndexZeroWindingFiberEnergy b r H := by
  unfold parityHalfIndexSignedQuarticZeroWinding
    parityHalfIndexZeroWindingFiberEnergy
  rw [zeroWindingFiberSquareExpansion]
  apply congrArg (fun x : ℝ => 4 * x)
  apply Finset.sum_congr rfl
  intro h hh
  apply Finset.sum_congr rfl
  intro g hg
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  rw [halfIndexQuarticMobiusCoefficient_eq_binary_mul]

/-- Fiber energy is nonnegative, although its expansion contains signed
off-diagonal cross terms. -/
theorem parityHalfIndexZeroWindingFiberEnergy_nonneg
    (b r : ℕ)
    (H : Finset ℕ) :
    0 ≤ parityHalfIndexZeroWindingFiberEnergy b r H := by
  unfold parityHalfIndexZeroWindingFiberEnergy
  positivity

/-- Four-family zero-winding fiber-energy majorant, retaining the same
endpoint/half-shift parity split as the regular branch. -/
def twoNonunitRegularZeroWindingFiberEnergyMajorant
    (b : ℕ) : ℝ :=
  Real.sqrt
      (parityHalfIndexZeroWindingFiberEnergy
        b 0 (positiveEndpointEvenShiftSet b)) +
    Real.sqrt
      (parityHalfIndexZeroWindingFiberEnergy
        b 0 (positiveEndpointOddShiftSet b)) +
    Real.sqrt
      (parityHalfIndexZeroWindingFiberEnergy
        b 1 (positiveEndpointEvenShiftSet b)) +
    Real.sqrt
      (parityHalfIndexZeroWindingFiberEnergy
        b 1 (positiveEndpointOddShiftSet b))

/-- Conservative source profile for the remaining signed fiber-energy theorem. -/
structure RegularZeroWindingFiberEnergySourceData where
  theoremStatement : Prop
  commonCoordinateSupportMatched : Prop
  signedFiberAmplitudeMatched : Prop
  literalDiagonalRetainedInsideSquares : Prop
  sameCoordinateCrossTermsRetained : Prop
  evenOddHalfShiftFamiliesMatched : Prop
  bothEndpointParitiesMatched : Prop
  naturalScaleNormalizationMatched : Prop

def RegularZeroWindingFiberEnergySource
    (d : RegularZeroWindingFiberEnergySourceData) : Prop :=
  d.theoremStatement ∧
    d.commonCoordinateSupportMatched ∧
    d.signedFiberAmplitudeMatched ∧
    d.literalDiagonalRetainedInsideSquares ∧
    d.sameCoordinateCrossTermsRetained ∧
    d.evenOddHalfShiftFamiliesMatched ∧
    d.bothEndpointParitiesMatched ∧
    d.naturalScaleNormalizationMatched

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.halfIndexZeroWindingCoordinate_lt_endpoint
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.zeroWindingFiberSquareExpansion
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityHalfIndexSignedQuarticZeroWinding_eq_fiberEnergy
