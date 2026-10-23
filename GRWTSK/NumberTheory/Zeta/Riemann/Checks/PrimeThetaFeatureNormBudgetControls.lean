/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPrimeThetaFeatureNorm
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.Checks.PrimeThetaFeatureNormBudgetControls

open GRWTSK.Logic.Satisfiability
open GRWTSK.RiemannHypothesis

/-- Canonical polarity used only to expose the numerical arity labels. -/
def positivePolarity (k : ℕ) : ClausePolarity k :=
  fun _ => true

/-- The two norm-certified suppliers retain their exact threshold identities. -/
theorem concrete_three_clause_feature_norm_criterion :
    ClauseIndexedPrimeThetaFeatureNormCriterion
        (positivePolarity 3) ↔
      PrimeThetaFeatureNormCriterionAt ((7 : ℝ) / 8) :=
  threeClauseIndexedFeatureNormCriterion_iff
    (positivePolarity 3)

theorem concrete_two_clause_feature_norm_criterion :
    ClauseIndexedPrimeThetaFeatureNormCriterion
        (positivePolarity 2) ↔
      PrimeThetaFeatureNormCriterionAt ((3 : ℝ) / 4) :=
  twoClauseIndexedFeatureNormCriterion_iff
    (positivePolarity 2)

/-- Every raw finite prime kernel is already separable in the canonical ordered
pair basis.  This is a universality control, not a source construction. -/
theorem arbitrary_prime_kernel_has_pair_basis
    {X : ℕ} (stage : PrimeThetaQuadraticKernelStage X)
    (v : ℝ) {p q : ℕ}
    (hp : p ∈ thetaPrimeWindow X)
    (hq : q ∈ thetaPrimeWindow X) :
    primeKernelPairBasisExpansion stage v p q =
      stage.kernel v p q :=
  primeKernelPairBasisExpansion_eq stage v hp hq

/-- Canonical separability preserves the original absolute mass exactly. -/
theorem pair_basis_does_not_improve_kernel_mass
    {X : ℕ} (stage : PrimeThetaQuadraticKernelStage X)
    (v : ℝ) :
    primeKernelPairBasisAbsoluteMass stage v =
      stage.kernelMass v :=
  primeKernelPairBasisAbsoluteMass_eq_kernelMass stage v

/-- One-factor stage whose left and right features are pointwise equal to one.
It exposes the cardinality accumulation hidden by pointwise bounds. -/
def constantOneFeatureStage
    (X : ℕ) (targetCoefficient : ℝ → ℝ) :
    PrimeThetaSeparableKernelStage X where
  sourceIdentity := "hostile-constant-one-features"
  normalization := "pointwise-unit-not-l1-normalized"
  invalidationKey := "cardinality-growth-visible"
  factorIndex := {0}
  coefficient := fun v r => if r = 0 then targetCoefficient v else 0
  leftFeature := fun r _ => if r = 0 then 1 else 0
  rightFeature := fun r _ => if r = 0 then 1 else 0
  residual := fun _ => 0
  residual_nonnegative := fun _ => by norm_num

@[simp]
theorem constantOneFeatureStage_leftFeature
    (X : ℕ) (targetCoefficient : ℝ → ℝ)
    (p : ℕ) :
    (constantOneFeatureStage X targetCoefficient).leftFeature 0 p = 1 := by
  simp [constantOneFeatureStage]

@[simp]
theorem constantOneFeatureStage_rightFeature
    (X : ℕ) (targetCoefficient : ℝ → ℝ)
    (q : ℕ) :
    (constantOneFeatureStage X targetCoefficient).rightFeature 0 q = 1 := by
  simp [constantOneFeatureStage]

/-- Pointwise-unit left features have `l1` norm equal to the prime-window
cardinality, not one. -/
@[simp]
theorem constantOneFeatureStage_leftL1
    (X : ℕ) (targetCoefficient : ℝ → ℝ) :
    (constantOneFeatureStage X targetCoefficient).leftFeatureL1 0 =
      ((thetaPrimeWindow X).card : ℝ) := by
  simp [constantOneFeatureStage,
    PrimeThetaSeparableKernelStage.leftFeatureL1]

/-- The same cardinality factor appears on the right. -/
@[simp]
theorem constantOneFeatureStage_rightL1
    (X : ℕ) (targetCoefficient : ℝ → ℝ) :
    (constantOneFeatureStage X targetCoefficient).rightFeatureL1 0 =
      ((thetaPrimeWindow X).card : ℝ) := by
  simp [constantOneFeatureStage,
    PrimeThetaSeparableKernelStage.rightFeatureL1]

/-- Consequently the complete factor mass contains the square of the source
window cardinality.  A pointwise `O(1)` feature estimate is not an `l1`
normalization theorem. -/
theorem constantOneFeatureStage_factorMass
    (X : ℕ) (targetCoefficient : ℝ → ℝ)
    (v : ℝ) :
    (constantOneFeatureStage X targetCoefficient).absoluteFactorMass v =
      |targetCoefficient v| *
        ((thetaPrimeWindow X).card : ℝ) ^ 2 := by
  rw [PrimeThetaSeparableKernelStage.absoluteFactorMass_eq_separatedFeatureNormMass]
  simp [constantOneFeatureStage,
    PrimeThetaSeparableKernelStage.separatedFeatureNormMass,
    pow_two]
  ring

/-- Mathematical data still needed from an actual source family. -/
def requiredSourceObligations : List String :=
  ["one immutable source-derived feature rule across all sufficiently late scales",
   "exact next-octave theta majorization by the induced signed response plus residual",
   "proved left and right l1 norm majorants for every retained source feature",
   "one scale-uniform coefficient-weighted certified feature budget",
   "complete residual control already at exponent Q(rho)+eta/2",
   "source identity, normalization, and invalidation binding for every stage"]

/-- Explicit nonimplication boundary. -/
def prohibitedPromotions : List String :=
  ["finite separability -> source structure",
   "pair-basis reconstruction -> useful compression",
   "finite rank -> scale-uniform factor budget",
   "pointwise feature bound -> l1 normalization",
   "positive Gram representation -> signed next-octave theta majorization",
   "clause arity -> feature normalization",
   "MAX-3SAT hardness -> prime feature norm estimate",
   "conditional feature-norm endpoint -> unconditional Riemann Hypothesis"]

end GRWTSK.RiemannHypothesis.Checks.PrimeThetaFeatureNormBudgetControls
