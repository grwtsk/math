/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeFourCellBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeSourceCertificates

/-!
# A four-cell certificate for the complete conductor-three source

The actual midpoint grid is `-3,-1,1,3`. Its complete source matrix uses
`sourceKernel` at displacements zero, two, four and six. Exact zero-sum
reduction retains every complex constrained vector. A rational six-dimensional
realified packet pays its entire entrywise radius before the existing Gram
checker certifies zero tolerance.

The spatial return uses the same four-cell grid and the complete source
modulus. Its error price is derivative energy. The larger finite certificate
does not supply the all-precision producer or an infinite-form sign theorem.
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

/-- The four actual midpoint samples retain every displacement. -/
theorem complexFullSampleMatrix_fourCell :
    complexFullSampleMatrix 3 =
      !![0, (sourceKernel 2 : ℂ), (sourceKernel 4 : ℂ), (sourceKernel 6 : ℂ);
         (sourceKernel 2 : ℂ), 0, (sourceKernel 2 : ℂ), (sourceKernel 4 : ℂ);
         (sourceKernel 4 : ℂ), (sourceKernel 2 : ℂ), 0, (sourceKernel 2 : ℂ);
         (sourceKernel 6 : ℂ), (sourceKernel 4 : ℂ), (sourceKernel 2 : ℂ), 0] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [complexFullSampleMatrix, fullSampleMatrix, gridPoint, sourceKernel_neg]

/-- Exact reduction of the whole complex zero-sum carrier. -/
theorem reducedFullSampleMatrix_fourCell :
    reducedFullSampleMatrix 3 =
      !![((-2 * sourceKernel 2 : ℝ) : ℂ), ((-sourceKernel 4 : ℝ) : ℂ),
           ((sourceKernel 4 - sourceKernel 2 - sourceKernel 6 : ℝ) : ℂ);
         ((-sourceKernel 4 : ℝ) : ℂ), ((-2 * sourceKernel 4 : ℝ) : ℂ),
           ((sourceKernel 2 - sourceKernel 4 - sourceKernel 6 : ℝ) : ℂ);
         ((sourceKernel 4 - sourceKernel 2 - sourceKernel 6 : ℝ) : ℂ),
           ((sourceKernel 2 - sourceKernel 4 - sourceKernel 6 : ℝ) : ℂ),
           ((-2 * sourceKernel 6 : ℝ) : ℂ)] := by
  unfold reducedFullSampleMatrix
  rw [complexFullSampleMatrix_fourCell]
  ext i j
  fin_cases i <;> fin_cases j <;> norm_num [reducedMatrix] <;> push_cast <;> ring

namespace FullSourceFourCell

open FourCellBounds

/-- Rational center of either real or imaginary block. -/
def centerBlock : Matrix (Fin 3) (Fin 3) ℚ :=
  !![3001 / 10000, 147 / 2000, 2009 / 10000;
     147 / 2000, 1501 / 10000, 511 / 10000;
     2009 / 10000, 511 / 10000, 2493 / 10000]

/-- A rational Gram factor; the complete row-radius price is 3/50. -/
def gramBlock : Matrix (Fin 3) (Fin 3) ℚ :=
  !![49 / 100, 3 / 20, 41 / 100;
     0, 13 / 50, -(1 / 25);
     0, 0, 7 / 50]

/-- Both complex components receive the same complete entry enclosure.
The imaginary cross blocks are exactly zero, not estimated away. -/
def packet : Packet (Fin 3 ⊕ Fin 3) where
  center := Matrix.fromBlocks centerBlock 0 0 centerBlock
  radius := Matrix.fromBlocks (fun _ _ => 1 / 50) 0 0 (fun _ _ => 1 / 50)
  metric := 1
  tolerance := 0

/-- The existing certificate language checks the exact realified identity. -/
def certificate : Certificate ℚ (Fin 3 ⊕ Fin 3) Empty Empty (Fin 3 ⊕ Fin 3) where
  gram := Matrix.fromBlocks gramBlock 0 0 gramBlock
  equalityMultipliers := fun e => nomatch e
  inequalityMultipliers := fun e => nomatch e

set_option maxRecDepth 10000 in
set_option maxHeartbeats 1000000 in
theorem checks : intervalCheck packet certificate = true := by decide +kernel

/-- Scalar source enclosures propagate to every reduced and realified entry.
All three-entry combinations pay their complete interval uncertainty. -/
theorem encloses_scalars {a b c : ℝ}
    (ha : -(155 / 1000 : ℝ) ≤ a ∧ a ≤ -(145 / 1000 : ℝ))
    (hb : -(79 / 1000 : ℝ) ≤ b ∧ b ≤ -(69 / 1000 : ℝ))
    (hc : -(132 / 1000 : ℝ) ≤ c ∧ c ≤ -(122 / 1000 : ℝ)) :
    Encloses packet (realification
      !![((-2 * a : ℝ) : ℂ), ((-b : ℝ) : ℂ), ((b - a - c : ℝ) : ℂ);
         ((-b : ℝ) : ℂ), ((-2 * b : ℝ) : ℂ), ((a - b - c : ℝ) : ℂ);
         ((b - a - c : ℝ) : ℂ), ((a - b - c : ℝ) : ℂ), ((-2 * c : ℝ) : ℂ)]) := by
  intro i j
  rcases i with i | i <;> rcases j with j | j <;> fin_cases i <;> fin_cases j
  all_goals norm_num [packet, centerBlock, realification, Matrix.fromBlocks]
  all_goals rw [abs_le]
  all_goals constructor <;> linarith [ha.1, ha.2, hb.1, hb.2, hc.1, hc.2]

/-- The certified intervals concern the original complete source at each lag. -/
theorem encloses : Encloses packet (realification (reducedFullSampleMatrix 3)) := by
  rw [reducedFullSampleMatrix_fourCell]
  apply encloses_scalars
  · have h := sourceKernel_two_bounds
    constructor <;> linarith [h.1, h.2]
  · have h := sourceKernel_four_tight_bounds
    constructor <;> linarith [h.1, h.2]
  · have h := sourceKernel_six_bounds
    constructor <;> linarith [h.1, h.2]

/-- Every complex reduced vector satisfies the checked zero-tolerance bound. -/
theorem reduced_nonnegative (z : Fin 3 → ℂ) :
    0 ≤ complexQuadratic (reducedFullSampleMatrix 3) z := by
  have h := checked_complex_enclosure_lower packet certificate
    (reducedFullSampleMatrix 3) encloses checks z
  simpa only [packet, Rat.cast_zero, neg_zero, zero_mul] using h

/-- Return to all original complex vectors with the exact zero-sum constraint. -/
theorem original_nonnegative (u : Fin 4 → ℂ) (hu : (∑ i, u i) = 0) :
    0 ≤ complexQuadratic (complexFullSampleMatrix 3) u := by
  have h := checked_reduced_enclosure_lower packet certificate
    (complexFullSampleMatrix 3) encloses checks u hu
  simpa only [packet, Rat.cast_zero, neg_zero, zero_mul] using h

/-- Hostile control: the unconstrained source matrix still has both signs. -/
theorem original_indefinite :
    complexQuadratic (complexFullSampleMatrix 3) ![(1 : ℂ), 1, 0, 0] < 0 ∧
      0 < complexQuadratic (complexFullSampleMatrix 3) ![(1 : ℂ), -1, 0, 0] := by
  rw [complexFullSampleMatrix_fourCell]
  have h := sourceKernel_two_bounds
  norm_num [complexQuadratic, Fin.sum_univ_succ]
  linarith [h.2]

/-- The arithmetic consumer retains the complete spatial approximation price. -/
theorem arithmeticValue_lower {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4) :
    -(8 * sourceSpatialBudget 3) * energy (deriv f) ≤
      primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
        modThreeQuadratic_nonprincipal 4 f := by
  have h := checked_full_reduced_arithmeticValue_lower
    3 packet certificate hf hc hs encloses checks
  simpa only [packet, Rat.cast_zero, neg_zero, zero_mul, zero_sub, neg_mul] using h

/-- The full gamma contribution is monotone in nonnegative displacement. -/
theorem gammaIntegral_two_le_four :
    (∫ r in Ioi (0 : ℝ), gammaRemainder 0 r * min |(2 : ℝ)| r) ≤
      ∫ r in Ioi (0 : ℝ), gammaRemainder 0 r * min |(4 : ℝ)| r := by
  apply integral_mono_ae (gammaRemainder_integrable 0 2)
    (gammaRemainder_integrable 0 4)
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
  apply mul_le_mul_of_nonneg_left _ (gammaRemainder_nonneg 0 hr)
  exact min_le_min_right r (by norm_num)

/-- The actual 256-term head at separation two pays the entire omitted tail. -/
theorem gammaIntegral_two_le :
    (∫ r in Ioi (0 : ℝ), gammaRemainder 0 r * min |(2 : ℝ)| r) ≤ 5 / 8 := by
  have heq (r : ℝ) : gammaRemainder 0 r = parityKernel 1 r := by
    norm_num [gammaRemainder, gammaTerm, gammaRate, parityKernel]
  simp_rw [heq]
  rw [gamma_min_integral_decomposition 256 2]
  have hh := gammaHead_two_le
  have ht := (gammaRemainder_integral_bounds 256 2).2
  norm_num only [truncationBudget, Nat.cast_ofNat] at ht
  norm_num only [abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  linarith

/-- A concrete complete-source error price on this four-cell grid. -/
theorem spatial_price_le :
    8 * sourceSpatialBudget 3 ≤ 16 * partialLipschitzConstant 0 + 5 := by
  have hg := gammaIntegral_two_le
  norm_num [sourceSpatialBudget, sourceContinuityModulus]
  norm_num only [abs_of_pos (by norm_num : (0 : ℝ) < 2)] at hg
  linarith

theorem arithmeticValue_lower_explicit {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4) :
    -(16 * partialLipschitzConstant 0 + 5) * energy (deriv f) ≤
      primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
        modThreeQuadratic_nonprincipal 4 f := by
  have henergy : 0 ≤ energy (deriv f) := integral_nonneg (fun x => sq_nonneg _)
  have hprice := mul_le_mul_of_nonneg_right spatial_price_le henergy
  have h := arithmeticValue_lower hf hc hs
  linarith

/-- Both actual complete-source packets are accepted. The spatial budget
improves by at least 16L0; no relation between matrix orders is asserted. -/
theorem exact_price_improves :
    fullSourceCertificateBudget 3 0 + 16 * partialLipschitzConstant 0 ≤
      fullSourceCertificateBudget 1 0 := by
  have h := gammaIntegral_two_le_four
  norm_num only [abs_of_pos (by norm_num : (0 : ℝ) < 2),
    abs_of_pos (by norm_num : (0 : ℝ) < 4)] at h
  norm_num [fullSourceCertificateBudget, sourceSpatialBudget, sourceContinuityModulus]
  linarith

/-- The strict gain follows from the source constant, not floating eigenvalues. -/
theorem exact_price_improves_eight :
    fullSourceCertificateBudget 3 0 + 8 < fullSourceCertificateBudget 1 0 := by
  have hL := partialLipschitzConstant_half_lt 0
  have h := exact_price_improves
  linarith

/-- The explicit arithmetic coefficient has the same strict gain. -/
theorem explicit_price_improves_eight :
    (16 * partialLipschitzConstant 0 + 5) + 8 <
      32 * partialLipschitzConstant 0 + 16 / 3 := by
  have hL := partialLipschitzConstant_half_lt 0
  linarith

/-- Repeating this fixed grid cannot satisfy all dyadic precision targets.
This is a floor on the conservative accounting, not on the true error. -/
theorem budget_gt_eight : (8 : ℝ) < fullSourceCertificateBudget 3 0 := by
  have hL := partialLipschitzConstant_half_lt 0
  have hg := (gammaRemainder_integral_bounds 0 2).1
  norm_num only [abs_of_pos (by norm_num : (0 : ℝ) < 2)] at hg
  norm_num [fullSourceCertificateBudget, sourceSpatialBudget, sourceContinuityModulus]
  linarith

end FullSourceFourCell

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen
