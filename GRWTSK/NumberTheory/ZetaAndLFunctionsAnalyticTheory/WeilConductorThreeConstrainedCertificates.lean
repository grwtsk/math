/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ZeroSumQuadraticReduction
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeCellEnergy
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeKernelReturn

/-!
# Constrained finite certificates for the conductor-three arithmetic form

Exact derivative moments have complex sum zero. Eliminating their first
coordinate before realification retains the original finite quadratic and
both real constraints. The existing rational checker can therefore act on
the reduced matrix instead of demanding positivity on all original vectors.

The complete source approximation cost remains unchanged. An identity
packet metric has an additional proved price of mesh width times derivative
energy. A joint all-precision certificate producer would imply arithmetic
nonnegativity; this module does not construct that producer or infer it
from parameter selection, a generic Green fixture, or approximation alone.
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

/-- The actual finite source pulled back to the exact complex zero-sum
coordinates. Index zero is the eliminated pivot. -/
def reducedSampleMatrix (M N : ℕ) : Matrix (Fin N) (Fin N) ℂ :=
  reducedMatrix (complexSampleMatrix M N)

/-- All nonpivot cell moments are retained exactly, including their phases. -/
def reducedCellMoments (N : ℕ) (u : ℝ → ℂ) : Fin N → ℂ :=
  tailVector (featureMoment kernelWindow (cellFeature (gridCell N)) u)

/-- Coordinate reduction adds no approximation loss on the actual
derivative carrier. This uses the proved complex zero-sum identity. -/
theorem arithmeticValue_reduced_finite_error (M N : ℕ) {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4) :
    |primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
        modThreeQuadratic_nonprincipal 4 f -
      complexQuadratic (reducedSampleMatrix M N) (reducedCellMoments N (deriv f))| ≤
      (8 * kernelApproximationBudget M N) * energy (deriv f) := by
  have h := arithmeticValue_finite_error M N hf hc hs
  rw [complexQuadratic_eq_reduced_of_sum_zero (complexSampleMatrix M N)
    (featureMoment kernelWindow (cellFeature (gridCell N)) (deriv f))
    (sum_derivativeCellMoments_eq_zero N hf hc hs)] at h
  exact h

/-- The original interval checker returns from the reduced matrix to the
original arithmetic value, retaining its entire packet metric. -/
theorem checked_reduced_arithmeticValue_lower {ν : Type*} [Fintype ν]
    (M N : ℕ) (P : Packet (Fin N ⊕ Fin N))
    (C : Certificate ℚ (Fin N ⊕ Fin N) Empty Empty ν)
    {f : ℝ → ℂ} (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4)
    (hencloses : Encloses P (realification (reducedSampleMatrix M N)))
    (hcheck : intervalCheck P C = true) :
    -(P.tolerance : ℝ) * quadratic (fun i j => (P.metric i j : ℝ))
        (splitVector (reducedCellMoments N (deriv f))) -
      (8 * kernelApproximationBudget M N) * energy (deriv f) ≤
        primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
          modThreeQuadratic_nonprincipal 4 f := by
  have hfinite := checked_complex_enclosure_lower P C (reducedSampleMatrix M N)
    hencloses hcheck (reducedCellMoments N (deriv f))
  have herr := (abs_le.mp (arithmeticValue_reduced_finite_error M N hf hc hs)).1
  linarith

/-- Deleting the pivot can only decrease squared coordinate norm. The
complete moment estimate pays the actual mesh width, not the full window. -/
theorem reducedDerivativeMoments_energy_le (N : ℕ) {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4) :
    (∑ i, ‖reducedCellMoments N (deriv f) i‖ ^ 2) ≤
      (8 / (N + 1 : ℕ)) * energy (deriv f) := by
  have htail := sum_tail_norm_sq_le
    (featureMoment kernelWindow (cellFeature (gridCell N)) (deriv f))
  have hfull := sum_gridCellMoment_sq_le N
    (integrable_deriv_of_compactC1 hf hc).integrableOn
    (integrable_deriv_sq_of_compactC1 hf hc).integrableOn
  rw [window_deriv_energy_eq hs] at hfull
  exact htail.trans hfull

/-- Full derivative-energy coefficient, including finite gamma, spatial
sampling, and the accepted reduced identity-metric tolerance. -/
def constrainedApproximationBudget (M N : ℕ) (τ : ℝ) : ℝ :=
  8 * kernelApproximationBudget M N + τ * (8 / (N + 1 : ℕ))

/-- Entry-enclosure error is already charged by the rational checker.
The remaining costs are combined without changing the energy norm. -/
theorem checked_identity_reduced_arithmeticValue_lower {ν : Type*} [Fintype ν]
    (M N : ℕ) (P : Packet (Fin N ⊕ Fin N))
    (C : Certificate ℚ (Fin N ⊕ Fin N) Empty Empty ν)
    {f : ℝ → ℂ} (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4)
    (hmetric : P.metric = 1)
    (hencloses : Encloses P (realification (reducedSampleMatrix M N)))
    (hcheck : intervalCheck P C = true) :
    -constrainedApproximationBudget M N (P.tolerance : ℝ) * energy (deriv f) ≤
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
  have hsource := checked_reduced_arithmeticValue_lower M N P C hf hc hs hencloses hcheck
  calc
    _ = -(P.tolerance : ℝ) * ((8 / (N + 1 : ℕ)) * energy (deriv f)) -
        (8 * kernelApproximationBudget M N) * energy (deriv f) := by
      unfold constrainedApproximationBudget
      ring
    _ ≤ -(P.tolerance : ℝ) * quadratic (fun i j => (P.metric i j : ℝ))
        (splitVector (reducedCellMoments N (deriv f))) -
        (8 * kernelApproximationBudget M N) * energy (deriv f) := by
      simpa only [neg_mul] using sub_le_sub_right (neg_le_neg hprice)
        ((8 * kernelApproximationBudget M N) * energy (deriv f))
    _ ≤ _ := hsource

/-- The two grid-dependent prices share a denominator; the gamma tail is
selected separately. This is an algebraic identity, not a sign estimate. -/
theorem constrainedApproximationBudget_eq (M N : ℕ) (τ : ℝ) :
    constrainedApproximationBudget M N τ =
      8 * truncationBudget M +
        (64 * partialLipschitzConstant M + 8 * τ) / (N + 1 : ℕ) := by
  unfold constrainedApproximationBudget kernelApproximationBudget
  ring

/-- A given uniform tolerance cap can be paid at arbitrary accuracy by
one choice of indices. This produces indices, not enclosures, acceptance,
or a bound on the tolerance needed by any actual source certificate. -/
theorem exists_constrainedApproximationBudget_lt {cap ε : ℝ}
    (_hcap : 0 ≤ cap) (hε : 0 < ε) :
    ∃ M N : ℕ, ∀ τ : ℝ, 0 ≤ τ → τ ≤ cap →
      constrainedApproximationBudget M N τ < ε := by
  obtain ⟨M, N₀, hbase⟩ := exists_kernelApproximationBudget_lt
    (show 0 < ε / 16 by positivity)
  have hspace : 0 ≤ 8 * partialLipschitzConstant M / (N₀ + 1 : ℕ) := by
    exact div_nonneg (mul_nonneg (by norm_num) (partialLipschitzConstant_nonneg M))
      (Nat.cast_nonneg _)
  have htail : 8 * truncationBudget M < ε / 2 := by
    unfold kernelApproximationBudget at hbase
    linarith
  obtain ⟨N, hN⟩ := exists_nat_gt ((2 * (64 * partialLipschitzConstant M + 8 * cap)) / ε)
  have hN' : 2 * (64 * partialLipschitzConstant M + 8 * cap) < (N : ℝ) * ε :=
    (div_lt_iff₀ hε).mp hN
  refine ⟨M, N, fun τ _hτ hτcap => ?_⟩
  rw [constrainedApproximationBudget_eq]
  have hnum : (64 * partialLipschitzConstant M + 8 * τ) / (N + 1 : ℕ) < ε / 2 := by
    apply (div_lt_iff₀ (by positivity : (0 : ℝ) < (N + 1 : ℕ))).mpr
    push_cast
    nlinarith
  linarith

/-- Conditional source sign: every dyadic stage must jointly supply the
actual reduced enclosure, passing rational certificate, identity metric,
and small complete budget at the same M,N. No such producer is built here. -/
theorem arithmeticValue_nonneg_of_reduced_certificates
    (producer : ∀ k : ℕ, ∃ M N r : ℕ,
      ∃ P : Packet (Fin N ⊕ Fin N),
      ∃ C : Certificate ℚ (Fin N ⊕ Fin N) Empty Empty (Fin r),
        P.metric = 1 ∧
        Encloses P (realification (reducedSampleMatrix M N)) ∧
        intervalCheck P C = true ∧
        constrainedApproximationBudget M N (P.tolerance : ℝ) ≤ (1 / 2 : ℝ) ^ k)
    {f : ℝ → ℂ} (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4) :
    0 ≤ primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
      modThreeQuadratic_nonprincipal 4 f := by
  have henergy : 0 ≤ energy (deriv f) := integral_nonneg (fun x => sq_nonneg _)
  apply nonneg_of_scaled_dyadic_lower henergy
  intro k
  obtain ⟨M, N, r, P, C, hm, he, hcheck, hb⟩ := producer k
  have hsource := checked_identity_reduced_arithmeticValue_lower
    M N P C hf hc hs hm he hcheck
  have hprice := mul_le_mul_of_nonneg_right hb henergy
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen
