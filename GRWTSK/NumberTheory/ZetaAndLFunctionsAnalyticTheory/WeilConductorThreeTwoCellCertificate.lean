/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeScalarBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreePrimeBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeConstrainedCertificates

/-!
# An accepted certificate for the actual conductor-three two-cell source

The exact gamma and signed prime bounds enclose `partialSourceKernel 8 4`.
The original two grid points are -2 and 2, so exact zero-sum reduction
leaves the scalar -2 times that source value. An explicit rational packet
and Gram factor pass the existing checker for this actual source matrix.

The original full arithmetic return retains its complete gamma and spatial
approximation cost. This finite certificate supplies neither an all-grid
sign theorem nor the joint vanishing-budget producer. The one-sided gamma
remainder also encloses the full integrated kernel at displacement four;
that pointwise fact is not interpreted as an ordering of quadratic forms.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen

open SourcePrimeCorrelation CharacterWindow OddRootProjection LowSchur
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
open GRWTSK.LinearAlgebra.RationalEnclosureCertificates
open GRWTSK.LinearAlgebra.ZeroSumQuadraticReduction
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

/-- Signed outward scalar enclosure of the actual eight-term source. -/
theorem partialSourceKernel_eight_four_bounds :
    -(29 / 500 : ℝ) ≤ partialSourceKernel 8 4 ∧
      partialSourceKernel 8 4 ≤ -(17 / 500 : ℝ) := by
  have hc := ScalarBounds.gammaConstant_three_one_bounds
  have hg := ScalarBounds.finiteGammaHead_eight_four_bounds
  have hp := primeHinges_four_bounds
  have hfour : |(4 : ℝ)| = 4 := abs_of_nonneg (by norm_num)
  simp only [partialSourceKernel, hfour]
  constructor <;> linarith [hc.1, hc.2, hg.1, hg.2, hp.1, hp.2]

/-- The previously proved complete one-sided remainder also bounds the
actual integrated source at this point. No finite tail is dropped. -/
theorem sourceKernel_four_bounds :
    -(3 / 32 : ℝ) ≤ sourceKernel 4 ∧ sourceKernel 4 ≤ -(1 / 32 : ℝ) := by
  have hp := partialSourceKernel_eight_four_bounds
  have ht := sourceKernel_sub_partial_bounds 8 4
  norm_num only [truncationBudget, Nat.cast_ofNat] at ht
  constructor <;> linarith [hp.1, hp.2, ht.1, ht.2]

/-- The actual N=1 grid samples the unchanged source at 0 and plus/minus4. -/
theorem complexSampleMatrix_twoCell (M : ℕ) :
    complexSampleMatrix M 1 =
      !![0, (partialSourceKernel M 4 : ℂ); (partialSourceKernel M 4 : ℂ), 0] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [complexSampleMatrix, sampleMatrix, gridPoint, partialSourceKernel_neg]

/-- Exact source identity for the complete complex zero-sum reduction. -/
theorem reducedSampleMatrix_twoCell (M : ℕ) :
    reducedSampleMatrix M 1 =
      fun _ _ => ((-2 * partialSourceKernel M 4 : ℝ) : ℂ) := by
  unfold reducedSampleMatrix
  rw [complexSampleMatrix_twoCell]
  ext i j
  fin_cases i
  fin_cases j
  norm_num [reducedMatrix]
  ring

namespace TwoCellCertificate

/-- A rational interval with positive lower target 1/16 times the identity. -/
def packet : Packet (Fin 1 ⊕ Fin 1) where
  center := (1 / 8 : ℚ) • 1
  radius := (1 / 16 : ℚ) • 1
  metric := 1
  tolerance := 0

/-- The rational Gram factor (1/4)I has square (1/16)I. -/
def certificate : Certificate ℚ (Fin 1 ⊕ Fin 1) Empty Empty (Fin 1 ⊕ Fin 1) where
  gram := (1 / 4 : ℚ) • 1
  equalityMultipliers := fun e => nomatch e
  inequalityMultipliers := fun e => nomatch e

theorem checks : intervalCheck packet certificate = true := by decide +kernel

/-- Generic scalar-to-realification interval transport for this packet. -/
theorem encloses_scalar {k : ℝ}
    (hk : -(3 / 32 : ℝ) ≤ k ∧ k ≤ -(1 / 32 : ℝ)) :
    Encloses packet (realification
      (fun (_ _ : Fin 1) => ((-2 * k : ℝ) : ℂ))) := by
  have hdiag : |(-2 * k) - (1 / 8 : ℝ)| ≤ 1 / 16 := by
    rw [abs_le]
    constructor <;> linarith [hk.1, hk.2]
  intro i j
  rcases i with i | i <;> rcases j with j | j <;> fin_cases i <;> fin_cases j
  · simpa [packet, realification, Matrix.fromBlocks, Matrix.one_apply] using hdiag
  · norm_num [packet, realification, Matrix.fromBlocks, Matrix.one_apply]
  · norm_num [packet, realification, Matrix.fromBlocks, Matrix.one_apply]
  · simpa [packet, realification, Matrix.fromBlocks, Matrix.one_apply] using hdiag

/-- This is an enclosure of the actual arithmetic sample matrix. -/
theorem encloses : Encloses packet (realification (reducedSampleMatrix 8 1)) := by
  rw [reducedSampleMatrix_twoCell]
  apply encloses_scalar
  have h := partialSourceKernel_eight_four_bounds
  constructor <;> linarith [h.1, h.2]

/-- Every complete complex reduced coordinate is covered by the certificate. -/
theorem reduced_nonnegative (z : Fin 1 → ℂ) :
    0 ≤ complexQuadratic (reducedSampleMatrix 8 1) z := by
  have h := checked_complex_enclosure_lower packet certificate
    (reducedSampleMatrix 8 1) encloses checks z
  simpa only [packet, Rat.cast_zero, neg_zero, zero_mul] using h

/-- Return from the reduced certificate to every original zero-sum vector. -/
theorem original_nonnegative (u : Fin 2 → ℂ) (hu : (∑ i, u i) = 0) :
    0 ≤ complexQuadratic (complexSampleMatrix 8 1) u := by
  have h := checked_reduced_enclosure_lower packet certificate
    (complexSampleMatrix 8 1) encloses checks u hu
  simpa only [packet, Rat.cast_zero, neg_zero, zero_mul] using h

/-- The source matrix is still indefinite before imposing the exact constraint. -/
theorem original_indefinite :
    complexQuadratic (complexSampleMatrix 8 1) ![(1 : ℂ), 1] < 0 ∧
      0 < complexQuadratic (complexSampleMatrix 8 1) ![(1 : ℂ), -1] := by
  rw [complexSampleMatrix_twoCell]
  have h := partialSourceKernel_eight_four_bounds
  let A : Matrix (Fin 2) (Fin 2) ℂ :=
    !![0, (partialSourceKernel 8 4 : ℂ); (partialSourceKernel 8 4 : ℂ), 0]
  change complexQuadratic A ![(1 : ℂ), 1] < 0 ∧
    0 < complexQuadratic A ![(1 : ℂ), -1]
  norm_num [A, complexQuadratic, Fin.sum_univ_two]
  linarith [h.2]

/-- The finite source certificate has a proved arithmetic consumer. Its
nonzero complete approximation budget remains in the conclusion. -/
theorem arithmeticValue_lower {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4) :
    -(8 * kernelApproximationBudget 8 1) * energy (deriv f) ≤
      primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
        modThreeQuadratic_nonprincipal 4 f := by
  have h := checked_reduced_arithmeticValue_lower
    8 1 packet certificate hf hc hs encloses checks
  simpa only [packet, Rat.cast_zero, neg_zero, zero_mul, zero_sub, neg_mul] using h

/-- Repeating this fixed accepted packet cannot supply the all-precision
producer: its complete approximation cost already exceeds the third target. -/
theorem budget_exceeds_dyadic_three :
    (1 / 2 : ℝ) ^ 3 < constrainedApproximationBudget 8 1 0 := by
  rw [constrainedApproximationBudget_eq]
  have hL := partialLipschitzConstant_nonneg 8
  norm_num [truncationBudget]
  linarith

end TwoCellCertificate

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen
