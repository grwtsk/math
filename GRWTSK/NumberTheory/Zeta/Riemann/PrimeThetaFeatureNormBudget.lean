/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PrimeThetaPairBasisSaturation
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# One-dimensional norm budgets for separable prime features

A separable prime kernel has complete absolute mass

  sum_{p,q,r} |c_r(v) L_r(p) R_r(q)|.

Finite Fubini and multiplicativity of absolute value identify this exactly with

  sum_r |c_r(v)| ||L_r||_1 ||R_r||_1.

This module proves that identity and introduces a proof-relevant norm
certificate.  The certificate records independently proved majorants for the
left and right source-feature `l1` norms.  Its coefficient-weighted budget then
controls the complete factor mass.

The resulting criterion is sufficient for the separable-kernel criterion and
therefore for the previously typed quadratic theta recurrence.  No actual
source feature family or uniform norm estimate is constructed here.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EXACT_FEATURE_L1_FACTORIZATION_DEFINED /
FEATURE_NORM_CRITERION_TO_RECURRENCE_DEFINED /
UNIFORM_CERTIFIED_BUDGET_OPEN / NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

namespace PrimeThetaSeparableKernelStage

/-- Current-window `l1` norm of one left source feature. -/
def leftFeatureL1
    {X : ℕ} (stage : PrimeThetaSeparableKernelStage X)
    (r : ℕ) : ℝ :=
  ∑ p ∈ thetaPrimeWindow X, |stage.leftFeature r p|

/-- Current-window `l1` norm of one right source feature. -/
def rightFeatureL1
    {X : ℕ} (stage : PrimeThetaSeparableKernelStage X)
    (r : ℕ) : ℝ :=
  ∑ q ∈ thetaPrimeWindow X, |stage.rightFeature r q|

/-- Coefficient-weighted product of the exact one-dimensional feature norms. -/
def separatedFeatureNormMass
    {X : ℕ} (stage : PrimeThetaSeparableKernelStage X)
    (v : ℝ) : ℝ :=
  ∑ r ∈ stage.factorIndex,
    |stage.coefficient v r| *
      stage.leftFeatureL1 r *
      stage.rightFeatureL1 r

theorem leftFeatureL1_nonnegative
    {X : ℕ} (stage : PrimeThetaSeparableKernelStage X)
    (r : ℕ) :
    0 ≤ stage.leftFeatureL1 r := by
  unfold leftFeatureL1
  exact Finset.sum_nonneg fun p hp => abs_nonneg _

theorem rightFeatureL1_nonnegative
    {X : ℕ} (stage : PrimeThetaSeparableKernelStage X)
    (r : ℕ) :
    0 ≤ stage.rightFeatureL1 r := by
  unfold rightFeatureL1
  exact Finset.sum_nonneg fun q hq => abs_nonneg _

theorem separatedFeatureNormMass_nonnegative
    {X : ℕ} (stage : PrimeThetaSeparableKernelStage X)
    (v : ℝ) :
    0 ≤ stage.separatedFeatureNormMass v := by
  unfold separatedFeatureNormMass
  exact Finset.sum_nonneg fun r _hr =>
    mul_nonneg (mul_nonneg (abs_nonneg _) (stage.leftFeatureL1_nonnegative r))
      (stage.rightFeatureL1_nonnegative r)

/-- Exact finite Fubini factorization of the complete absolute factor mass. -/
theorem absoluteFactorMass_eq_separatedFeatureNormMass
    {X : ℕ} (stage : PrimeThetaSeparableKernelStage X)
    (v : ℝ) :
    stage.absoluteFactorMass v =
      stage.separatedFeatureNormMass v := by
  unfold absoluteFactorMass separatedFeatureNormMass
    leftFeatureL1 rightFeatureL1
  simp_rw [abs_mul]
  calc
    (∑ p ∈ thetaPrimeWindow X,
        ∑ q ∈ thetaPrimeWindow X,
          ∑ r ∈ stage.factorIndex,
            |stage.coefficient v r| *
              |stage.leftFeature r p| *
              |stage.rightFeature r q|)
        = ∑ r ∈ stage.factorIndex,
            ∑ p ∈ thetaPrimeWindow X,
              ∑ q ∈ thetaPrimeWindow X,
                |stage.coefficient v r| *
                  |stage.leftFeature r p| *
                  |stage.rightFeature r q| := by
          calc
            _ = ∑ p ∈ thetaPrimeWindow X,
                  ∑ r ∈ stage.factorIndex,
                    ∑ q ∈ thetaPrimeWindow X,
                      |stage.coefficient v r| *
                        |stage.leftFeature r p| *
                        |stage.rightFeature r q| := by
                  apply Finset.sum_congr rfl
                  intro p hp
                  exact Finset.sum_comm
            _ = _ := by
                  exact Finset.sum_comm
    _ = ∑ r ∈ stage.factorIndex,
          |stage.coefficient v r| *
            (∑ p ∈ thetaPrimeWindow X,
              |stage.leftFeature r p|) *
            (∑ q ∈ thetaPrimeWindow X,
              |stage.rightFeature r q|) := by
          apply Finset.sum_congr rfl
          intro r hr
          calc
            (∑ p ∈ thetaPrimeWindow X,
                ∑ q ∈ thetaPrimeWindow X,
                  |stage.coefficient v r| *
                    |stage.leftFeature r p| *
                    |stage.rightFeature r q|)
                = ∑ p ∈ thetaPrimeWindow X,
                    (|stage.coefficient v r| *
                      |stage.leftFeature r p|) *
                      (∑ q ∈ thetaPrimeWindow X,
                        |stage.rightFeature r q|) := by
                      apply Finset.sum_congr rfl
                      intro p hp
                      rw [← Finset.mul_sum]
            _ = (∑ p ∈ thetaPrimeWindow X,
                    |stage.coefficient v r| *
                      |stage.leftFeature r p|) *
                  (∑ q ∈ thetaPrimeWindow X,
                    |stage.rightFeature r q|) := by
                      rw [← Finset.sum_mul]
            _ = (|stage.coefficient v r| *
                    (∑ p ∈ thetaPrimeWindow X,
                      |stage.leftFeature r p|)) *
                  (∑ q ∈ thetaPrimeWindow X,
                    |stage.rightFeature r q|) := by
                      rw [← Finset.mul_sum]
            _ = |stage.coefficient v r| *
                  (∑ p ∈ thetaPrimeWindow X,
                    |stage.leftFeature r p|) *
                  (∑ q ∈ thetaPrimeWindow X,
                    |stage.rightFeature r q|) := by
                      ring

end PrimeThetaSeparableKernelStage

/-- Independently proved one-dimensional feature-norm majorants for one source
stage. -/
structure PrimeThetaFeatureNormCertificate
    {X : ℕ} (stage : PrimeThetaSeparableKernelStage X) where
  leftBudget : ℕ → ℝ
  rightBudget : ℕ → ℝ
  leftBudget_nonnegative : ∀ r, 0 ≤ leftBudget r
  rightBudget_nonnegative : ∀ r, 0 ≤ rightBudget r
  leftL1_le :
    ∀ r ∈ stage.factorIndex,
      stage.leftFeatureL1 r ≤ leftBudget r
  rightL1_le :
    ∀ r ∈ stage.factorIndex,
      stage.rightFeatureL1 r ≤ rightBudget r

namespace PrimeThetaSeparableKernelStage

/-- Coefficient-weighted budget obtained from certified one-dimensional source
feature norms. -/
def certifiedFeatureBudget
    {X : ℕ} (stage : PrimeThetaSeparableKernelStage X)
    (certificate : PrimeThetaFeatureNormCertificate stage)
    (v : ℝ) : ℝ :=
  ∑ r ∈ stage.factorIndex,
    |stage.coefficient v r| *
      certificate.leftBudget r *
      certificate.rightBudget r

theorem certifiedFeatureBudget_nonnegative
    {X : ℕ} (stage : PrimeThetaSeparableKernelStage X)
    (certificate : PrimeThetaFeatureNormCertificate stage)
    (v : ℝ) :
    0 ≤ stage.certifiedFeatureBudget certificate v := by
  unfold certifiedFeatureBudget
  exact Finset.sum_nonneg fun r hr => by
    exact mul_nonneg
      (mul_nonneg (abs_nonneg _)
        (certificate.leftBudget_nonnegative r))
      (certificate.rightBudget_nonnegative r)

/-- Certified one-dimensional norms control the complete absolute factor mass. -/
theorem absoluteFactorMass_le_certifiedFeatureBudget
    {X : ℕ} (stage : PrimeThetaSeparableKernelStage X)
    (certificate : PrimeThetaFeatureNormCertificate stage)
    (v : ℝ) :
    stage.absoluteFactorMass v ≤
      stage.certifiedFeatureBudget certificate v := by
  rw [stage.absoluteFactorMass_eq_separatedFeatureNormMass]
  unfold separatedFeatureNormMass certifiedFeatureBudget
  apply Finset.sum_le_sum
  intro r hr
  have hleft := certificate.leftL1_le r hr
  have hright := certificate.rightL1_le r hr
  have hc : 0 ≤ |stage.coefficient v r| := abs_nonneg _
  have hleft0 : 0 ≤ stage.leftFeatureL1 r :=
    stage.leftFeatureL1_nonnegative r
  have hright0 : 0 ≤ stage.rightFeatureL1 r :=
    stage.rightFeatureL1_nonnegative r
  calc
    |stage.coefficient v r| *
          stage.leftFeatureL1 r *
          stage.rightFeatureL1 r
        ≤ |stage.coefficient v r| *
            certificate.leftBudget r *
            stage.rightFeatureL1 r :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left hleft hc) hright0
    _ ≤ |stage.coefficient v r| *
          certificate.leftBudget r *
          certificate.rightBudget r :=
      mul_le_mul_of_nonneg_left hright
        (mul_nonneg hc (certificate.leftBudget_nonnegative r))

end PrimeThetaSeparableKernelStage

/-- Source criterion whose scale-uniform budget is supplied through certified
one-dimensional feature norms. -/
def PrimeThetaFeatureNormCriterionAt (ρ : ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ K : ℝ, 0 ≤ K ∧
    ∃ R : ℝ, 0 ≤ R ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        ∃ stage :
            PrimeThetaSeparableKernelStage (dyadicScale j),
          ∃ certificate : PrimeThetaFeatureNormCertificate stage,
            (∀ v ∈
                Set.Icc ((dyadicScale (j + 1) : ℕ) : ℝ)
                  (((2 * dyadicScale (j + 1) : ℕ) : ℝ)),
              stage.certifiedFeatureBudget certificate v ≤ K) ∧
            (∀ v ∈
                Set.Icc ((dyadicScale (j + 1) : ℕ) : ℝ)
                  (((2 * dyadicScale (j + 1) : ℕ) : ℝ)),
              stage.residual v ≤
                R * Real.rpow (dyadicScale j : ℝ)
                  (quadraticThreshold ρ + η / 2)) ∧
            (∀ v ∈
                Set.Icc ((dyadicScale (j + 1) : ℕ) : ℝ)
                  (((2 * dyadicScale (j + 1) : ℕ) : ℝ)),
              |thetaError v| + 1 ≤
                |stage.toKernelStage.response v| /
                    (dyadicScale j : ℝ) +
                  stage.residual v)

/-- A complete norm-certified feature supplier constructs the preceding
separable-kernel criterion. -/
theorem primeThetaFeatureNormCriterion_to_separableCriterion
    {ρ : ℝ}
    (hcriterion : PrimeThetaFeatureNormCriterionAt ρ) :
    PrimeThetaSeparableKernelCriterionAt ρ := by
  intro η hη
  obtain ⟨K, hK, R, hR, j₀, hstages⟩ :=
    hcriterion η hη
  refine ⟨K, hK, R, hR, j₀, ?_⟩
  intro j hj
  obtain ⟨stage, certificate, hbudget, hresidual, hsource⟩ :=
    hstages j hj
  refine ⟨stage, ?_, ?_, ?_⟩
  · intro v hv
    exact
      (stage.absoluteFactorMass_le_certifiedFeatureBudget
        certificate v).trans
        (hbudget v hv)
  · intro v hv
    exact hresidual v hv
  · intro v hv
    exact hsource v hv

/-- The norm-certified feature criterion supplies the existing nonlinear theta
recurrence. -/
theorem primeThetaFeatureNormCriterion_to_recurrence
    {ρ : ℝ}
    (hcriterion : PrimeThetaFeatureNormCriterionAt ρ) :
    QuadraticThetaSourceRecurrenceAt ρ :=
  primeThetaSeparableKernelCriterion_to_recurrence
    (primeThetaFeatureNormCriterion_to_separableCriterion hcriterion)

/-- In the admitted threshold range the same criterion supplies one exact
quadratic threshold descent. -/
theorem primeThetaFeatureNormCriterion_to_descent
    {ρ : ℝ}
    (hρ : (3 : ℝ) / 4 ≤ ρ)
    (hcriterion : PrimeThetaFeatureNormCriterionAt ρ) :
    QuadraticThetaDescentAt ρ :=
  primeThetaSeparableKernelCriterion_to_descent hρ
    (primeThetaFeatureNormCriterion_to_separableCriterion hcriterion)

end GRWTSK.RiemannHypothesis
