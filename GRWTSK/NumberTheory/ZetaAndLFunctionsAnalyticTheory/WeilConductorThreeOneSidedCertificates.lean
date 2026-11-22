/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeGammaRemainder
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreePartialSampling
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeTwoCellCertificate

/-!
# One-sided certificates for the actual conductor-three arithmetic source

The entire omitted gamma contribution is nonnegative on compact C1
derivatives. The lower return therefore pays spatial sampling and the
accepted certificate metric, while retaining the same arithmetic source.
The existing two-sided approximation and its budget are unchanged.

The actual two-cell packet obtains a stronger lower bound. Its remaining
spatial budget is nevertheless strictly greater than sixteen. A joint
all-precision producer is still a hypothesis, not a consequence of this
finite certificate or of selecting approximation indices.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen

open SourcePrimeCorrelation CharacterWindow OddRootProjection LowSchur
open GRWTSK.FunctionalAnalysis.IntegralKernelApproximation
open GRWTSK.FunctionalAnalysis.FiniteKernelEnclosure
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
open GRWTSK.LinearAlgebra.RationalEnclosureCertificates
open GRWTSK.LinearAlgebra.ZeroSumQuadraticReduction
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

/-- Restrict the whole-line form order to the original radius-four window. -/
theorem partialKernelForm_deriv_le_arithmeticValue (M : ℕ) {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4) :
    (partialKernelForm M (deriv f)).re ≤
      primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
        modThreeQuadratic_nonprincipal 4 f := by
  rw [partialKernelForm_deriv_eq_wholeline M hs]
  exact partialSourceKernel_form_le_arithmeticValue M hf hc

/-- Spatial sampling is the only approximation loss in this lower return.
The exact complex zero-sum reduction is performed on the actual moments. -/
theorem arithmeticValue_reduced_spatial_lower (M N : ℕ) {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4) :
    complexQuadratic (reducedSampleMatrix M N) (reducedCellMoments N (deriv f)) -
      (8 * spatialApproximationBudget M N) * energy (deriv f) ≤
      primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
        modThreeQuadratic_nonprincipal 4 f := by
  have herror := partialKernelForm_finite_error M N (deriv f)
    (integrable_deriv_of_compactC1 hf hc).integrableOn
    (integrable_deriv_sq_of_compactC1 hf hc).integrableOn
  rw [window_deriv_energy_eq hs] at herror
  have hreal : |(partialKernelForm M (deriv f)).re -
      complexQuadratic (complexSampleMatrix M N)
        (featureMoment kernelWindow (cellFeature (gridCell N)) (deriv f))| ≤
      (8 * spatialApproximationBudget M N) * energy (deriv f) := by
    simpa only [Complex.sub_re, complexQuadratic] using
      (Complex.abs_re_le_norm _).trans herror
  rw [complexQuadratic_eq_reduced_of_sum_zero (complexSampleMatrix M N)
    (featureMoment kernelWindow (cellFeature (gridCell N)) (deriv f))
    (sum_derivativeCellMoments_eq_zero N hf hc hs)] at hreal
  change |(partialKernelForm M (deriv f)).re -
    complexQuadratic (reducedSampleMatrix M N) (reducedCellMoments N (deriv f))| ≤
    (8 * spatialApproximationBudget M N) * energy (deriv f) at hreal
  have hsource := partialKernelForm_deriv_le_arithmeticValue M hf hc hs
  linarith [(abs_le.mp hreal).1]

/-- The existing rational checker retains its full packet metric. Only
the nonnegative omitted gamma source is removed from the lower price. -/
theorem checked_reduced_arithmeticValue_lower_oneSided {ν : Type*} [Fintype ν]
    (M N : ℕ) (P : Packet (Fin N ⊕ Fin N))
    (C : Certificate ℚ (Fin N ⊕ Fin N) Empty Empty ν)
    {f : ℝ → ℂ} (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4)
    (hencloses : Encloses P (realification (reducedSampleMatrix M N)))
    (hcheck : intervalCheck P C = true) :
    -(P.tolerance : ℝ) * quadratic (fun i j => (P.metric i j : ℝ))
        (splitVector (reducedCellMoments N (deriv f))) -
      (8 * spatialApproximationBudget M N) * energy (deriv f) ≤
      primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
        modThreeQuadratic_nonprincipal 4 f := by
  have hfinite := checked_complex_enclosure_lower P C (reducedSampleMatrix M N)
    hencloses hcheck (reducedCellMoments N (deriv f))
  have hsource := arithmeticValue_reduced_spatial_lower M N hf hc hs
  linarith

/-- Spatial and identity-metric costs for the one-sided lower return.
This is a separate definition from the unchanged two-sided budget. -/
def oneSidedApproximationBudget (M N : ℕ) (τ : ℝ) : ℝ :=
  8 * spatialApproximationBudget M N + τ * (8 / (N + 1 : ℕ))

theorem oneSidedApproximationBudget_eq (M N : ℕ) (τ : ℝ) :
    oneSidedApproximationBudget M N τ =
      (64 * partialLipschitzConstant M + 8 * τ) / (N + 1 : ℕ) := by
  unfold oneSidedApproximationBudget spatialApproximationBudget
  ring

/-- The precise improvement is the former gamma-tail error charge. This
identity does not identify either budget with the actual approximation error. -/
theorem constrainedBudget_eq_oneSided_add_tail (M N : ℕ) (τ : ℝ) :
    constrainedApproximationBudget M N τ =
      oneSidedApproximationBudget M N τ + 8 * truncationBudget M := by
  rw [constrainedApproximationBudget_eq, oneSidedApproximationBudget_eq]
  ring

/-- The complete complex moment-energy estimate pays an identity packet
metric with the actual cell width; all remaining prices are explicit. -/
theorem checked_identity_reduced_arithmeticValue_lower_oneSided
    {ν : Type*} [Fintype ν] (M N : ℕ) (P : Packet (Fin N ⊕ Fin N))
    (C : Certificate ℚ (Fin N ⊕ Fin N) Empty Empty ν)
    {f : ℝ → ℂ} (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4)
    (hmetric : P.metric = 1)
    (hencloses : Encloses P (realification (reducedSampleMatrix M N)))
    (hcheck : intervalCheck P C = true) :
    -oneSidedApproximationBudget M N (P.tolerance : ℝ) * energy (deriv f) ≤
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
  have hsource := checked_reduced_arithmeticValue_lower_oneSided
    M N P C hf hc hs hencloses hcheck
  calc
    _ = -(P.tolerance : ℝ) * ((8 / (N + 1 : ℕ)) * energy (deriv f)) -
        (8 * spatialApproximationBudget M N) * energy (deriv f) := by
      unfold oneSidedApproximationBudget
      ring
    _ ≤ -(P.tolerance : ℝ) * quadratic (fun i j => (P.metric i j : ℝ))
        (splitVector (reducedCellMoments N (deriv f))) -
        (8 * spatialApproximationBudget M N) * energy (deriv f) := by
      simpa only [neg_mul] using sub_le_sub_right (neg_le_neg hprice)
        ((8 * spatialApproximationBudget M N) * energy (deriv f))
    _ ≤ _ := hsource

/-- Conditional source positivity with the sharper price. The same stage
must still supply source enclosure, acceptance, and its small total budget. -/
theorem arithmeticValue_nonneg_of_oneSided_certificates
    (producer : ∀ k : ℕ, ∃ M N r : ℕ,
      ∃ P : Packet (Fin N ⊕ Fin N),
      ∃ C : Certificate ℚ (Fin N ⊕ Fin N) Empty Empty (Fin r),
        P.metric = 1 ∧
        Encloses P (realification (reducedSampleMatrix M N)) ∧
        intervalCheck P C = true ∧
        oneSidedApproximationBudget M N (P.tolerance : ℝ) ≤ (1 / 2 : ℝ) ^ k)
    {f : ℝ → ℂ} (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4) :
    0 ≤ primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
      modThreeQuadratic_nonprincipal 4 f := by
  have henergy : 0 ≤ energy (deriv f) := integral_nonneg (fun x => sq_nonneg _)
  apply nonneg_of_scaled_dyadic_lower henergy
  intro k
  obtain ⟨M, N, r, P, C, hm, he, hcheck, hb⟩ := producer k
  have hsource := checked_identity_reduced_arithmeticValue_lower_oneSided
    M N P C hf hc hs hm he hcheck
  have hprice := mul_le_mul_of_nonneg_right hb henergy
  linarith

/-- The actual certified gamma constant already imposes a positive
baseline on this conservative spatial Lipschitz price at every cutoff. -/
theorem partialLipschitzConstant_half_lt (M : ℕ) :
    (1 / 2 : ℝ) < partialLipschitzConstant M := by
  have hc := ScalarBounds.gammaConstant_three_one_bounds.2
  have ha := neg_le_abs (gammaConstant 3 1)
  have hs : 0 ≤ ∑ m ∈ Finset.range M, (gammaRate m)⁻¹ :=
    Finset.sum_nonneg (fun m _ => inv_nonneg.mpr (gammaRate_pos m).le)
  have hp := primeLipschitzConstant_nonneg
  unfold partialLipschitzConstant
  linarith

namespace TwoCellCertificate

/-- The existing actual packet now has a stronger arithmetic return,
with the positive complete gamma remainder left on the favorable side. -/
theorem arithmeticValue_lower_oneSided {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4) :
    -(32 * partialLipschitzConstant 8) * energy (deriv f) ≤
      primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
        modThreeQuadratic_nonprincipal 4 f := by
  have h := checked_reduced_arithmeticValue_lower_oneSided
    8 1 packet certificate hf hc hs encloses checks
  have hb : 8 * spatialApproximationBudget 8 1 =
      32 * partialLipschitzConstant 8 := by
    norm_num [spatialApproximationBudget] <;> ring
  simpa only [packet, Rat.cast_zero, neg_zero, zero_mul, zero_sub, hb, neg_mul] using h

/-- Even the sharpened budget on this unchanged grid is bounded away
from zero. This is a budget obstruction, not a lower bound on actual error. -/
theorem oneSidedBudget_gt_sixteen :
    (16 : ℝ) < oneSidedApproximationBudget 8 1 0 := by
  rw [oneSidedApproximationBudget_eq]
  have hL := partialLipschitzConstant_half_lt 8
  norm_num
  linarith

end TwoCellCertificate

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen
