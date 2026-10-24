/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PrimeThetaQuadraticKernelCriterion
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Finite source-feature factorization of the prime theta kernel

The prime-pair criterion consumes a signed kernel `K_v(p,q)`.  This module
constructs such a kernel from a finite family of exact separable source
features

  K_v(p,q) = sum_r c_r(v) L_r(p) R_r(q).

The displayed factorization is not itself a uniform estimate.  We therefore
define the complete absolute factor budget and prove, by the finite triangle
inequality, that it controls the induced kernel's l1 mass.

A second criterion records the remaining source obligations at the factor
level and transports them into the existing prime-kernel criterion.

No feature family, explicit-formula identity, uniform factor budget, descended
residual estimate, or threshold instance is constructed here.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
FINITE_SEPARABLE_KERNEL_BOUND_DEFINED /
SEPARABLE_CRITERION_TO_KERNEL_CRITERION_DEFINED /
SOURCE_FEATURE_FAMILY_OPEN / NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

/-- One finite source-bound separable factorization over the literal prime
window at scale `X`. -/
structure PrimeThetaSeparableKernelStage (X : ℕ) where
  sourceIdentity : String
  normalization : String
  invalidationKey : String
  factorIndex : Finset ℕ
  coefficient : ℝ → ℕ → ℝ
  leftFeature : ℕ → ℕ → ℝ
  rightFeature : ℕ → ℕ → ℝ
  residual : ℝ → ℝ
  residual_nonnegative : ∀ v, 0 ≤ residual v

namespace PrimeThetaSeparableKernelStage

/-- Signed kernel induced by the finite source features. -/
def inducedKernel
    {X : ℕ} (stage : PrimeThetaSeparableKernelStage X)
    (v : ℝ) (p q : ℕ) : ℝ :=
  ∑ r ∈ stage.factorIndex,
    stage.coefficient v r *
      stage.leftFeature r p *
      stage.rightFeature r q

/-- Forget the factorization only after constructing the exact signed kernel. -/
def toKernelStage
    {X : ℕ} (stage : PrimeThetaSeparableKernelStage X) :
    PrimeThetaQuadraticKernelStage X where
  sourceIdentity := stage.sourceIdentity
  normalization := stage.normalization
  invalidationKey := stage.invalidationKey
  kernel := stage.inducedKernel
  residual := stage.residual
  residual_nonnegative := stage.residual_nonnegative

/-- Complete finite absolute budget of all factor terms over both prime
coordinates. -/
def absoluteFactorMass
    {X : ℕ} (stage : PrimeThetaSeparableKernelStage X)
    (v : ℝ) : ℝ :=
  ∑ p ∈ thetaPrimeWindow X,
    ∑ q ∈ thetaPrimeWindow X,
      ∑ r ∈ stage.factorIndex,
        |stage.coefficient v r *
          stage.leftFeature r p *
          stage.rightFeature r q|

theorem absoluteFactorMass_nonnegative
    {X : ℕ} (stage : PrimeThetaSeparableKernelStage X)
    (v : ℝ) :
    0 ≤ stage.absoluteFactorMass v := by
  unfold absoluteFactorMass
  exact Finset.sum_nonneg fun p hp =>
    Finset.sum_nonneg fun q hq =>
      Finset.sum_nonneg fun r hr => abs_nonneg _

/-- Pointwise finite triangle inequality for the induced kernel. -/
theorem abs_inducedKernel_le_factorTerms
    {X : ℕ} (stage : PrimeThetaSeparableKernelStage X)
    (v : ℝ) (p q : ℕ) :
    |stage.inducedKernel v p q| ≤
      ∑ r ∈ stage.factorIndex,
        |stage.coefficient v r *
          stage.leftFeature r p *
          stage.rightFeature r q| := by
  unfold inducedKernel
  exact Finset.abs_sum_le_sum_abs _ _

/-- Summing the pointwise triangle inequality over the literal prime window
controls the induced kernel's l1 mass by the complete factor budget. -/
theorem kernelMass_le_absoluteFactorMass
    {X : ℕ} (stage : PrimeThetaSeparableKernelStage X)
    (v : ℝ) :
    stage.toKernelStage.kernelMass v ≤
      stage.absoluteFactorMass v := by
  unfold PrimeThetaQuadraticKernelStage.kernelMass
    absoluteFactorMass toKernelStage
  apply Finset.sum_le_sum
  intro p hp
  apply Finset.sum_le_sum
  intro q hq
  exact stage.abs_inducedKernel_le_factorTerms v p q

end PrimeThetaSeparableKernelStage

/-- Factor-level source criterion.  It retains the same source majorization and
residual obligations as the prime-kernel criterion, but replaces the raw
kernel-mass estimate by a bound on the complete finite factor budget. -/
def PrimeThetaSeparableKernelCriterionAt (ρ : ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ K : ℝ, 0 ≤ K ∧
    ∃ R : ℝ, 0 ≤ R ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        ∃ stage :
            PrimeThetaSeparableKernelStage (dyadicScale j),
          (∀ v ∈
              Set.Icc ((dyadicScale (j + 1) : ℕ) : ℝ)
                (((2 * dyadicScale (j + 1) : ℕ) : ℝ)),
            stage.absoluteFactorMass v ≤ K) ∧
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

/-- A complete separable-feature supplier constructs the raw prime-kernel
criterion without losing source identity, normalization, or residual data. -/
theorem primeThetaSeparableKernelCriterion_to_kernelCriterion
    {ρ : ℝ}
    (hcriterion : PrimeThetaSeparableKernelCriterionAt ρ) :
    PrimeThetaQuadraticKernelCriterionAt ρ := by
  intro η hη
  obtain ⟨K, hK, R, hR, j₀, hstages⟩ :=
    hcriterion η hη
  refine ⟨K, hK, R, hR, j₀, ?_⟩
  intro j hj
  obtain ⟨stage, hfactorMass, hresidual, hsource⟩ :=
    hstages j hj
  refine ⟨stage.toKernelStage, ?_, ?_, ?_⟩
  · intro v hv
    exact
      (stage.kernelMass_le_absoluteFactorMass v).trans
        (hfactorMass v hv)
  · intro v hv
    exact hresidual v hv
  · intro v hv
    exact hsource v hv

/-- The factor-level criterion therefore supplies the existing nonlinear theta
recurrence. -/
theorem primeThetaSeparableKernelCriterion_to_recurrence
    {ρ : ℝ}
    (hcriterion : PrimeThetaSeparableKernelCriterionAt ρ) :
    QuadraticThetaSourceRecurrenceAt ρ :=
  primeThetaQuadraticKernelCriterion_to_recurrence
    (primeThetaSeparableKernelCriterion_to_kernelCriterion hcriterion)

/-- In the admitted threshold range the same factor-level criterion supplies
one exact quadratic threshold descent. -/
theorem primeThetaSeparableKernelCriterion_to_descent
    {ρ : ℝ}
    (hρ : (3 : ℝ) / 4 ≤ ρ)
    (hcriterion : PrimeThetaSeparableKernelCriterionAt ρ) :
    QuadraticThetaDescentAt ρ :=
  primeThetaQuadraticKernelCriterion_to_descent hρ
    (primeThetaSeparableKernelCriterion_to_kernelCriterion hcriterion)

end GRWTSK.RiemannHypothesis
