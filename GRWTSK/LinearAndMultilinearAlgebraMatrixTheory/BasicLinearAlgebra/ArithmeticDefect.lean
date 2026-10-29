import SignedDefect
import SourceWeightedOrbitAdapter

/-!
Literal fixed-scale compensated arithmetic coefficient adapter. The weighted
source import has recorded REVIEW scope; this leaf does not promote it to the
maintained corpus. Cutoffs, centered diagonal and independent main term are
reused unchanged. Direction: grwtsk contributors; construction: OpenAI Codex.
-/

noncomputable section
namespace FormalResearch.MutationGame.ArithmeticDefect
open Matrix
open FormalResearch.RiemannHypothesis
open SourceWeightedOrbitAdapter SourceArithmeticOrbit SourceReflectionDuality
open SourceReflectionArithmetic SourceCompensatedReadout SourceVaughanHankel
open SourceUpperBoundaryEvent SourceSamplingLedger
open SourcePureRotationObstruction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource
open SignedDefect
open scoped InnerProductSpace

/-- The literal normalized-source reflected form at both long cutoffs. -/
def matrixAt (A : ℝ) (hA : 1 ≤ A) :
    Matrix (OrbitIndex (longInventory A)) (OrbitIndex (longInventory A)) ℂ :=
  reflectedMatrix (originalSourceL2 A (lt_of_lt_of_le zero_lt_one hA)) (longInventory A)

/-- Literal distinct arithmetic columns; no root-population replacement. -/
def firstAt (A : ℝ) := mangoldtCoordinates (longInventory A)
/-- The distinct plus-centered beta column at the same actual cutoffs. -/
def secondAt (A : ℝ) := centeredCoordinates (vaughanCutoff A) (longInventory A)

/-- A proposed coefficient move is measured with the actual signed readout.
No source-symmetry or estimate claim is built into this definition. -/
def movedReadout (A : ℝ) (hA : 1 ≤ A)
    (M : Matrix (OrbitIndex (longInventory A)) (OrbitIndex (longInventory A)) ℂ) : ℝ :=
  (pairing (matrixAt A hA) (M *ᵥ firstAt A) (M *ᵥ secondAt A)).re -
    centeredDeletedDiagonal A - independentMainTerm A

theorem literal_readout (A : ℝ) (hA : 1 ≤ A) :
    arithmeticReadout A hA = (pairing (matrixAt A hA) (firstAt A) (secondAt A)).re -
      centeredDeletedDiagonal A - independentMainTerm A := by
  rw [arithmeticReadout_eq_reflected_matrix]
  unfold matrixAt firstAt secondAt
  rw [← actual_pairing, synthesis_reflected_inner]

/-- The complete fixed-scale compensation cancels only because it is unchanged
on both sides. Scale changes require their separate increment. -/
theorem literal_move_defect (A : ℝ) (hA : 1 ≤ A)
    (M : Matrix (OrbitIndex (longInventory A)) (OrbitIndex (longInventory A)) ℂ) :
    movedReadout A hA M - arithmeticReadout A hA =
      (pairing (defect (matrixAt A hA) M) (firstAt A) (secondAt A)).re := by
  rw [movedReadout, literal_readout]
  have h := congrArg Complex.re (pairing_defect (matrixAt A hA) M (firstAt A) (secondAt A))
  simp only [Complex.sub_re] at h
  linear_combination h

/-- The actual angular duality preserves Hilbert norm but reverses this signed
pairing. Frozen counterterms do not reverse with it. -/
def dualMovedReadout (A : ℝ) (hA : 1 ≤ A) : ℝ :=
  (⟪angularSignDuality (synthesis (originalSourceL2 A (by linarith)) (longInventory A)
      (firstAt A)),
    reflection (angularSignDuality (synthesis (originalSourceL2 A (by linarith))
      (longInventory A) (secondAt A)))⟫_ℂ).re -
    centeredDeletedDiagonal A - independentMainTerm A

theorem literal_dual_compensation (A : ℝ) (hA : 1 ≤ A) :
    dualMovedReadout A hA = -arithmeticReadout A hA -
      2 * centeredDeletedDiagonal A - 2 * independentMainTerm A := by
  rw [dualMovedReadout, angular_reflected_pairing_dual, Complex.neg_re, actual_pairing,
    literal_readout]
  unfold matrixAt
  ring

end FormalResearch.MutationGame.ArithmeticDefect
