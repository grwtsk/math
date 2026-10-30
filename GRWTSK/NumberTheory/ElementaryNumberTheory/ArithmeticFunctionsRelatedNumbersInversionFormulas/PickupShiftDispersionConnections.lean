import Mathlib

/-
Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.

Finite dispersion identities and bridge boundaries for the weighted
growing-shift mean-square obstruction. No external analytic theorem is imported.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupShiftDispersionConnections

/-- A finite weighted shifted correlation. -/
def shiftedCorrelation
    (N r : ℕ) (a : ℕ → ℝ) (w : ℕ → ℕ → ℝ) : ℝ :=
  ∑ n ∈ Finset.range (N + 1), a n * a (n + r) * w r n

/-- Mean square over a finite growing shift range. -/
def shiftMeanSquare
    (N H : ℕ) (a : ℕ → ℝ) (w : ℕ → ℕ → ℝ) : ℝ :=
  ∑ r ∈ Finset.Icc 1 H, (shiftedCorrelation N r a w) ^ 2

/-- Exact finite dispersion expansion: square only after the complete weighted
correlation for a shift has been formed. -/
theorem shiftMeanSquare_expand
    (N H : ℕ) (a : ℕ → ℝ) (w : ℕ → ℕ → ℝ) :
    shiftMeanSquare N H a w =
      ∑ r ∈ Finset.Icc 1 H,
        ∑ m ∈ Finset.range (N + 1),
          ∑ n ∈ Finset.range (N + 1),
            (a m * a (m + r) * w r m) *
            (a n * a (n + r) * w r n) := by
  unfold shiftMeanSquare shiftedCorrelation
  apply Finset.sum_congr rfl
  intro r hr
  rw [Finset.sum_sq]

/-- Diagonal part m=n of the dispersion expansion. -/
def dispersionDiagonal
    (N H : ℕ) (a : ℕ → ℝ) (w : ℕ → ℕ → ℝ) : ℝ :=
  ∑ r ∈ Finset.Icc 1 H,
    ∑ n ∈ Finset.range (N + 1),
      (a n * a (n + r) * w r n) ^ 2

/-- Obligations for a Barban--Davenport--Halberstam/dispersion-style treatment
of the original pickup mean square. -/
structure DispersionBridge where
  exactMeanSquareIdentification : Prop
  diagonalPaid : Prop
  offDiagonalDifferenceGrouping : Prop
  commonShiftAverageRetained : Prop
  gramWeightsPreserved : Prop
  selectedDivisorQuartetPreserved : Prop
  clippedEndpointsPreserved : Prop
  roughAndSharedPrimeMasksPreserved : Prop
  completeComplementPreserved : Prop
  quantitativeOffDiagonalSaving : Prop

/-- Obligations for transferring short-interval additive Fourier uniformity to
the response-weighted pickup coefficients. -/
structure ShortFourierUniformityBridge where
  exactAdditiveTransformIdentification : Prop
  responseMultiplicationControlled : Prop
  roughMobiusTransfer : Prop
  uniformPhysicalWindowRange : Prop
  frozenEndpointsPreserved : Prop
  selectedDivisorStagePreserved : Prop
  quantitativeSavingSurvives : Prop

/-- Obligations for consuming an all-shift exceptional-set correlation theorem. -/
structure AllShiftExceptionalBridge where
  oneExceptionalSetForAllScales : Prop
  originalWeightedCorrelationMatched : Prop
  exceptionalWeightedMassPaid : Prop
  gramWeightsPreserved : Prop
  growingStageUniformity : Prop
  quantitativeSavingSurvives : Prop

/-- Obligations for using pretentious-distance stability in the mean-square
source rather than preserving every individual prime supply. -/
structure PretentiousMeanSquareBridge where
  originalDistanceLowerBound : Prop
  deletionLossAveragedOverShifts : Prop
  distanceSurvivesOnWeightedSource : Prop
  correlationConsumerUniformInShift : Prop
  responseWeightsPreserved : Prop
  quantitativeMeanSquareSaving : Prop

end GRWTSK.NumberTheory.Moebius.PickupShiftDispersionConnections
