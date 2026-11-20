/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeSourceSampling
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeOneSidedCertificates

/-!
# Certificates for samples of the complete conductor-three source

The matrix in this module samples `sourceKernel`, including the entire
gamma integral. Its identity depends on the spatial grid alone. Auxiliary
finite gamma cutoffs bound arithmetic evaluation and the continuity modulus;
they never replace the matrix whose sign is certified.

Exact complex zero-sum reduction, the existing rational checker, and the
original compact-C1 arithmetic return are retained. The actual two-cell
packet encloses this complete source and yields a sharper concrete lower
bound. Accepted packets on a family of finer grids remain an explicit
obligation; neither continuity nor the two-cell certificate supplies them.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen

open SourcePrimeCorrelation CharacterWindow OddRootProjection LowSchur
open GRWTSK.FunctionalAnalysis.FiniteKernelEnclosure
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
open GRWTSK.LinearAlgebra.RationalEnclosureCertificates
open GRWTSK.LinearAlgebra.ZeroSumQuadraticReduction
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

/-- Exact zero-sum reduction of the complete source samples. No gamma
cutoff occurs in this target. -/
def reducedFullSampleMatrix (N : ℕ) : Matrix (Fin N) (Fin N) ℂ :=
  reducedMatrix (complexFullSampleMatrix N)

/-- The complete source and its exact sampled quadratic differ by the
whole-cell modulus, with the original derivative energy as its price. -/
theorem arithmeticValue_full_reduced_finite_error (N : ℕ) {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4) :
    |primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
        modThreeQuadratic_nonprincipal 4 f -
      complexQuadratic (reducedFullSampleMatrix N) (reducedCellMoments N (deriv f))| ≤
      (8 * sourceSpatialBudget N) * energy (deriv f) := by
  have h := sourceKernelForm_full_finite_error N (deriv f)
    (integrable_deriv_of_compactC1 hf hc).integrableOn
    (integrable_deriv_sq_of_compactC1 hf hc).integrableOn
  rw [window_deriv_energy_eq hs] at h
  have hr : |(sourceKernelForm (deriv f)).re -
      complexQuadratic (complexFullSampleMatrix N)
        (featureMoment kernelWindow (cellFeature (gridCell N)) (deriv f))| ≤
      (8 * sourceSpatialBudget N) * energy (deriv f) := by
    simpa only [Complex.sub_re, complexQuadratic] using
      (Complex.abs_re_le_norm _).trans h
  rw [complexQuadratic_eq_reduced_of_sum_zero (complexFullSampleMatrix N)
    (featureMoment kernelWindow (cellFeature (gridCell N)) (deriv f))
    (sum_derivativeCellMoments_eq_zero N hf hc hs)] at hr
  rw [arithmeticValue_eq_sourceKernelForm hf hc hs]
  exact hr

/-- The unchanged checker returns from the complete reduced matrix to the
actual arithmetic expression. Its entire packet metric stays visible. -/
theorem checked_full_reduced_arithmeticValue_lower {ν : Type*} [Fintype ν]
    (N : ℕ) (P : Packet (Fin N ⊕ Fin N))
    (C : Certificate ℚ (Fin N ⊕ Fin N) Empty Empty ν)
    {f : ℝ → ℂ} (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4)
    (hencloses : Encloses P (realification (reducedFullSampleMatrix N)))
    (hcheck : intervalCheck P C = true) :
    -(P.tolerance : ℝ) * quadratic (fun i j => (P.metric i j : ℝ))
        (splitVector (reducedCellMoments N (deriv f))) -
      (8 * sourceSpatialBudget N) * energy (deriv f) ≤
      primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
        modThreeQuadratic_nonprincipal 4 f := by
  have hfinite := checked_complex_enclosure_lower P C (reducedFullSampleMatrix N)
    hencloses hcheck (reducedCellMoments N (deriv f))
  have herr := (abs_le.mp (arithmeticValue_full_reduced_finite_error N hf hc hs)).1
  linarith

/-- Spatial modulus and the accepted identity-metric price for a fixed
complete source matrix. Entry-enclosure errors are paid by the checker. -/
def fullSourceCertificateBudget (N : ℕ) (τ : ℝ) : ℝ :=
  8 * sourceSpatialBudget N + τ * (8 / (N + 1 : ℕ))

/-- An auxiliary cutoff bounds the error price without changing the
complete source matrix, its packet, or its acceptance obligation. -/
theorem fullSourceCertificateBudget_le (M N : ℕ) (τ : ℝ) :
    fullSourceCertificateBudget N τ ≤ constrainedApproximationBudget M N τ := by
  have h := sourceSpatialBudget_le M N
  unfold fullSourceCertificateBudget constrainedApproximationBudget
  linarith

/-- The exact moment-energy estimate pays the identity metric. Acceptance
supplies nonnegative tolerance; no negative-norm substitution is made. -/
theorem checked_identity_full_reduced_arithmeticValue_lower
    {ν : Type*} [Fintype ν] (N : ℕ) (P : Packet (Fin N ⊕ Fin N))
    (C : Certificate ℚ (Fin N ⊕ Fin N) Empty Empty ν)
    {f : ℝ → ℂ} (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4)
    (hmetric : P.metric = 1)
    (hencloses : Encloses P (realification (reducedFullSampleMatrix N)))
    (hcheck : intervalCheck P C = true) :
    -fullSourceCertificateBudget N (P.tolerance : ℝ) * energy (deriv f) ≤
      primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
        modThreeQuadratic_nonprincipal 4 f := by
  have hguard : P.Guard := of_decide_eq_true (Bool.and_eq_true_iff.mp hcheck).1
  have hτ : 0 ≤ (P.tolerance : ℝ) := Rat.cast_nonneg.mpr hguard.2.2
  have hmetricR : (fun i j => (P.metric i j : ℝ)) =
      (1 : Matrix (Fin N ⊕ Fin N) (Fin N ⊕ Fin N) ℝ) := by
    ext i j
    by_cases hij : i = j <;> simp [hmetric, Matrix.one_apply, hij]
  have hnorm : quadratic (fun i j => (P.metric i j : ℝ))
      (splitVector (reducedCellMoments N (deriv f))) ≤
      (8 / (N + 1 : ℕ)) * energy (deriv f) := by
    rw [hmetricR, quadratic_identity_splitVector]
    exact reducedDerivativeMoments_energy_le N hf hc hs
  have hprice := mul_le_mul_of_nonneg_left hnorm hτ
  have hsource := checked_full_reduced_arithmeticValue_lower
    N P C hf hc hs hencloses hcheck
  calc
    _ = -(P.tolerance : ℝ) * ((8 / (N + 1 : ℕ)) * energy (deriv f)) -
        (8 * sourceSpatialBudget N) * energy (deriv f) := by
      unfold fullSourceCertificateBudget
      ring
    _ ≤ -(P.tolerance : ℝ) * quadratic (fun i j => (P.metric i j : ℝ))
        (splitVector (reducedCellMoments N (deriv f))) -
        (8 * sourceSpatialBudget N) * energy (deriv f) := by
      simpa only [neg_mul] using sub_le_sub_right (neg_le_neg hprice)
        ((8 * sourceSpatialBudget N) * energy (deriv f))
    _ ≤ _ := hsource

/-- The target now depends only on the spatial grid. All stages must
still supply actual full-source enclosures, acceptance, and a small total
budget together. This theorem does not construct that family. -/
theorem arithmeticValue_nonneg_of_full_source_certificates
    (producer : ∀ k : ℕ, ∃ N r : ℕ,
      ∃ P : Packet (Fin N ⊕ Fin N),
      ∃ C : Certificate ℚ (Fin N ⊕ Fin N) Empty Empty (Fin r),
        P.metric = 1 ∧
        Encloses P (realification (reducedFullSampleMatrix N)) ∧
        intervalCheck P C = true ∧
        fullSourceCertificateBudget N (P.tolerance : ℝ) ≤ (1 / 2 : ℝ) ^ k)
    {f : ℝ → ℂ} (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4) :
    0 ≤ primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
      modThreeQuadratic_nonprincipal 4 f := by
  have henergy : 0 ≤ energy (deriv f) := integral_nonneg (fun x => sq_nonneg _)
  apply nonneg_of_scaled_dyadic_lower henergy
  intro k
  obtain ⟨N, r, P, C, hm, he, hcheck, hb⟩ := producer k
  have hsource := checked_identity_full_reduced_arithmeticValue_lower
    N P C hf hc hs hm he hcheck
  have hprice := mul_le_mul_of_nonneg_right hb henergy
  linarith

/-- Exact actual source matrix on the two-cell grid. -/
theorem complexFullSampleMatrix_twoCell :
    complexFullSampleMatrix 1 =
      !![0, (sourceKernel 4 : ℂ); (sourceKernel 4 : ℂ), 0] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [complexFullSampleMatrix, fullSampleMatrix, gridPoint, sourceKernel_neg]

/-- All complex zero-sum coordinates reduce to the scalar -2K(4). -/
theorem reducedFullSampleMatrix_twoCell :
    reducedFullSampleMatrix 1 = fun _ _ => ((-2 * sourceKernel 4 : ℝ) : ℂ) := by
  unfold reducedFullSampleMatrix
  rw [complexFullSampleMatrix_twoCell]
  ext i j
  fin_cases i
  fin_cases j
  norm_num [reducedMatrix]
  ring

namespace FullSourceTwoCell

/-- The previously checked rational packet encloses the entire gamma
source, by its separately proved actual scalar interval. -/
theorem encloses : Encloses TwoCellCertificate.packet
    (realification (reducedFullSampleMatrix 1)) := by
  rw [reducedFullSampleMatrix_twoCell]
  exact TwoCellCertificate.encloses_scalar sourceKernel_four_bounds

theorem reduced_nonnegative (z : Fin 1 → ℂ) :
    0 ≤ complexQuadratic (reducedFullSampleMatrix 1) z := by
  have h := checked_complex_enclosure_lower TwoCellCertificate.packet
    TwoCellCertificate.certificate (reducedFullSampleMatrix 1) encloses
    TwoCellCertificate.checks z
  simpa only [TwoCellCertificate.packet, Rat.cast_zero, neg_zero, zero_mul] using h

/-- The certificate covers the complete complex constraint, not a real
or parity-selected subspace. -/
theorem original_nonnegative (u : Fin 2 → ℂ) (hu : (∑ i, u i) = 0) :
    0 ≤ complexQuadratic (complexFullSampleMatrix 1) u := by
  have h := checked_reduced_enclosure_lower TwoCellCertificate.packet
    TwoCellCertificate.certificate (complexFullSampleMatrix 1) encloses
    TwoCellCertificate.checks u hu
  simpa only [TwoCellCertificate.packet, Rat.cast_zero, neg_zero, zero_mul] using h

/-- Hostile control: the full source sample matrix remains indefinite
before the actual zero-sum constraint is imposed. -/
theorem original_indefinite :
    complexQuadratic (complexFullSampleMatrix 1) ![(1 : ℂ), 1] < 0 ∧
      0 < complexQuadratic (complexFullSampleMatrix 1) ![(1 : ℂ), -1] := by
  rw [complexFullSampleMatrix_twoCell]
  have h := sourceKernel_four_bounds
  let A : Matrix (Fin 2) (Fin 2) ℂ :=
    !![0, (sourceKernel 4 : ℂ); (sourceKernel 4 : ℂ), 0]
  change complexQuadratic A ![(1 : ℂ), 1] < 0 ∧
    0 < complexQuadratic A ![(1 : ℂ), -1]
  norm_num [A, complexQuadratic, Fin.sum_univ_two]
  linarith [h.2]

/-- The complete source packet returns with the entire spatial modulus. -/
theorem arithmeticValue_lower {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4) :
    -(8 * sourceSpatialBudget 1) * energy (deriv f) ≤
      primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
        modThreeQuadratic_nonprincipal 4 f := by
  have h := checked_full_reduced_arithmeticValue_lower
    1 TwoCellCertificate.packet TwoCellCertificate.certificate hf hc hs
    encloses TwoCellCertificate.checks
  simpa only [TwoCellCertificate.packet, Rat.cast_zero, neg_zero, zero_mul,
    zero_sub, neg_mul] using h

/-- The actual eight-term gamma enclosure plus the whole omitted tail
bounds the complete gamma integral at displacement four. -/
theorem gammaIntegral_four_le :
    (∫ r in Ioi (0 : ℝ), gammaRemainder 0 r * min |(4 : ℝ)| r) ≤ 2 / 3 := by
  have heq (r : ℝ) : gammaRemainder 0 r = parityKernel 1 r := by
    norm_num [gammaRemainder, gammaTerm, gammaRate, parityKernel]
  simp_rw [heq]
  rw [gamma_min_integral_decomposition 8 4]
  have hh := ScalarBounds.finiteGammaHead_eight_four_bounds.2
  have ht := (gammaRemainder_integral_bounds 8 4).2
  norm_num only [truncationBudget, Nat.cast_ofNat] at ht
  norm_num only [abs_of_pos (by norm_num : (0 : ℝ) < 4)]
  linarith

/-- A concrete scalar price for this fixed complete source matrix. The
cutoff used to enclose K(4) does not enter its spatial Lipschitz term. -/
theorem spatial_price_le :
    8 * sourceSpatialBudget 1 ≤ 32 * partialLipschitzConstant 0 + 16 / 3 := by
  have hg := gammaIntegral_four_le
  norm_num only [abs_of_pos (by norm_num : (0 : ℝ) < 4)] at hg
  norm_num [sourceSpatialBudget, sourceContinuityModulus]
  linarith

theorem arithmeticValue_lower_explicit {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4) :
    -(32 * partialLipschitzConstant 0 + 16 / 3) * energy (deriv f) ≤
      primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
        modThreeQuadratic_nonprincipal 4 f := by
  have henergy : 0 ≤ energy (deriv f) := integral_nonneg (fun x => sq_nonneg _)
  have hprice := mul_le_mul_of_nonneg_right spatial_price_le henergy
  have h := arithmeticValue_lower hf hc hs
  linarith

/-- The explicit new coefficient improves the previous 32L8 price by
at least sixteen, already from the first retained gamma slope. -/
theorem explicit_price_improves :
    (32 * partialLipschitzConstant 0 + 16 / 3) + 16 ≤
      32 * partialLipschitzConstant 8 := by
  have hsum : (2 / 3 : ℝ) ≤ ∑ m ∈ Finset.range 8, (gammaRate m)⁻¹ := by
    have h := Finset.single_le_sum
      (f := fun m : ℕ => (gammaRate m)⁻¹)
      (fun m _ => inv_nonneg.mpr (gammaRate_pos m).le)
      (show 0 ∈ Finset.range 8 by decide)
    rw [show (gammaRate 0)⁻¹ = (2 / 3 : ℝ) by norm_num [gammaRate]] at h
    exact h
  unfold partialLipschitzConstant
  simp only [Finset.range_zero, Finset.sum_empty, add_zero]
  linarith

/-- The improved fixed-grid budget still has a positive floor. This is
a bound on this accounting, not a lower bound on the true error. -/
theorem budget_gt_sixteen : (16 : ℝ) < fullSourceCertificateBudget 1 0 := by
  have hL := partialLipschitzConstant_half_lt 0
  have hg := (gammaRemainder_integral_bounds 0 4).1
  norm_num only [abs_of_pos (by norm_num : (0 : ℝ) < 4)] at hg
  norm_num [fullSourceCertificateBudget, sourceSpatialBudget, sourceContinuityModulus]
  linarith

end FullSourceTwoCell

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen
