# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightCanonicalDeficit

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54246d554313b3a74a0544460a4ca51da1cdec7b` · SHA-256 `555195c78d136f24a7975989d489b3aa6057976349052961fd62bcf99544ea3b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightFeatureNorm
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Canonical deficit for the pinned prime-weight response

The pinned prime-weight source supplies the concrete rank-one response

  c(v) * A_X^2,

where `A_X` is the weighted current-octave theta amplitude.  The preceding
criterion allowed both `c` and a nonnegative residual to be selected at every
stage.  This module performs two conservative repairs.

First, for a fixed coefficient it defines the least nonnegative residual
needed to majorize the next-octave theta amplitude:

  max 0 (target - |c A_X^2| / X).Second, it fixes one coefficient rule before the epsilon and scale
quantifiers.  The rule-relative residual criterion is proved equivalent to a
criterion using only the canonical deficit.

The coefficient rule still requires an independently proved arithmetic source
law.  Its metadata fields bind such a law but do not prove one.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
CANONICAL_MINIMAL_DEFICIT_DEFINED /
IMMUTABLE_COEFFICIENT_RULE_DEFINED /
RULE_RESIDUAL_DEFICIT_EQUIVALENCE_DEFINED /
COEFFICIENT_SOURCE_LAW_OPEN / NO_RH_CLAIM.
-/

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

namespace GRWTSK.RiemannHypothesis

/-- Magnitude of the normalized pinned rank-one response at scale `X`. -/
def pinnedPrimeWeightResponseMagnitude
    (X : ℕ) (targetCoefficient : ℝ) : ℝ :=
  |targetCoefficient * (pinnedPrimeWeightedAmplitude X)^2| /
    (X : ℝ)

/-- Least nonnegative residual needed for the selected response magnitude to
majorize the target theta amplitude. -/
def pinnedPrimeWeightCanonicalDeficit
    (X : ℕ) (targetCoefficient v : ℝ) : ℝ :=
  max 0
    ((|thetaError v| + 1) -
      pinnedPrimeWeightResponseMagnitude X targetCoefficient)

/-- The normalized response magnitude is nonnegative, including at the
totalized scale `X=0`. -/
theorem pinnedPrimeWeightResponseMagnitude_nonnegative
    (X : ℕ) (targetCoefficient : ℝ) :
    0 ≤ pinnedPrimeWeightResponseMagnitude X targetCoefficient := by
  unfold pinnedPrimeWeightResponseMagnitude
  exact div_nonneg (abs_nonneg _) (Nat.cast_nonneg _)

/-- The canonical deficit is nonnegative by construction. -/
theorem pinnedPrimeWeightCanonicalDeficit_nonnegative
    (X : ℕ) (targetCoefficient v : ℝ) :
    0 ≤ pinnedPrimeWeightCanonicalDeficit X targetCoefficient v := by
  unfold pinnedPrimeWeightCanonicalDeficit
  exact le_max_left _ _

/-- The selected response plus the canonical deficit always majorizes the
target theta amplitude. -/
theorem pinnedPrimeWeightCanonicalDeficit_majorizes
    (X : ℕ) (targetCoefficient v : ℝ) :
    |thetaError v| + 1 ≤
      pinnedPrimeWeightResponseMagnitude X targetCoefficient +
        pinnedPrimeWeightCanonicalDeficit X targetCoefficient v := by
  unfold pinnedPrimeWeightCanonicalDeficit
  have h :=
    le_max_right (0 : ℝ)
      ((|thetaError v| + 1) -
        pinnedPrimeWeightResponseMagnitude X targetCoefficient)
  linarith

/-- Minimality: every nonnegative residual giving the same majorization is at
least the canonical deficit. -/
theorem pinnedPrimeWeightCanonicalDeficit_le_of_majorant
    {X : ℕ} {targetCoefficient v residual : ℝ}
    (hresidual : 0 ≤ residual)
    (hmajorant :
      |thetaError v| + 1 ≤
        pinnedPrimeWeightResponseMagnitude X targetCoefficient +
          residual) :
    pinnedPrimeWeightCanonicalDeficit X targetCoefficient v ≤
      residual := by
  unfold pinnedPrimeWeightCanonicalDeficit
  exact max_le hresidual (by linarith)

/-- Exact fitting annihilates the canonical deficit.  This theorem is purely
algebraic and does not certify that the coefficient is source-derived. -/
theorem pinnedPrimeWeightCanonicalDeficit_eq_zero_of_exact_fit
    {X : ℕ} {targetCoefficient v : ℝ}
    (hfit :
      pinnedPrimeWeightResponseMagnitude X targetCoefficient =
        |thetaError v| + 1) :
    pinnedPrimeWeightCanonicalDeficit X targetCoefficient v = 0 := by
  unfold pinnedPrimeWeightCanonicalDeficit
  rw [hfit]
  simp

/-- One coefficient term fixed across all epsilon choices and all dyadic
stages.  The strings are immutable source bindings, not substitutes for an
arithmetic derivation of `coefficient`. -/
structure PinnedPrimeWeightCoefficientRule where
  sourceIdentity : String
  normalization : String
  invalidationKey : String
  coefficient : ℕ → ℝ → ℝ

/-- The real next octave consumed by one transition indexed by `j`. -/
def pinnedPrimeWeightNextOctave (j : ℕ) : Set ℝ :=
  Set.Icc ((dyadicScale (j + 1) : ℕ) : ℝ)
    (((2 * dyadicScale (j + 1) : ℕ) : ℝ))

/-- Rule-relative version of the preceding pinned criterion.  The coefficient
is fixed by one global rule; only the nonnegative residual remains selected at
each stage. -/
def PinnedPrimeWeightRuleResidualCriterionAt
    (rule : PinnedPrimeWeightCoefficientRule)
    (ρ : ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧
    ∃ R : ℝ, 0 ≤ R ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        ∃ residual : ℝ → ℝ,
          (∀ v, 0 ≤ residual v) ∧
          (∀ v ∈ pinnedPrimeWeightNextOctave j,
            |rule.coefficient j v| ≤ C) ∧
          (∀ v ∈ pinnedPrimeWeightNextOctave j,
            residual v ≤
              R * Real.rpow (dyadicScale j : ℝ)
                (quadraticThreshold ρ + η / 2)) ∧
          (∀ v ∈ pinnedPrimeWeightNextOctave j,
            |thetaError v| + 1 ≤
              pinnedPrimeWeightResponseMagnitude
                  (dyadicScale j) (rule.coefficient j v) +
                residual v)

/-- Canonical rule-relative criterion.  The arbitrary residual is replaced by
the least nonnegative residual for the fixed coefficient rule. -/
def PinnedPrimeWeightRuleDeficitCriterionAt
    (rule : PinnedPrimeWeightCoefficientRule)
    (ρ : ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧
    ∃ R : ℝ, 0 ≤ R ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        (∀ v ∈ pinnedPrimeWeightNextOctave j,
          |rule.coefficient j v| ≤ C) ∧
        (∀ v ∈ pinnedPrimeWeightNextOctave j,
          pinnedPrimeWeightCanonicalDeficit
              (dyadicScale j) (rule.coefficient j v) v ≤
            R * Real.rpow (dyadicScale j : ℝ)
              (quadraticThreshold ρ + η / 2))

/-- Any rule-relative residual supplier bounds the canonical minimal deficit. -/
theorem pinnedPrimeWeightRuleResidualCriterion_to_deficitCriterion
    {rule : PinnedPrimeWeightCoefficientRule} {ρ : ℝ}
    (hcriterion :
      PinnedPrimeWeightRuleResidualCriterionAt rule ρ) :
    PinnedPrimeWeightRuleDeficitCriterionAt rule ρ := by
  intro η hη
  obtain ⟨C, hC, R, hR, j₀, hstages⟩ :=
    hcriterion η hη
  refine ⟨C, hC, R, hR, j₀, ?_⟩
  intro j hj
  obtain ⟨residual, hresidual, hcoefficient,
      hresidualBound, hmajorant⟩ :=
    hstages j hj
  refine ⟨hcoefficient, ?_⟩
  intro v hv
  exact
    (pinnedPrimeWeightCanonicalDeficit_le_of_majorant
      (hresidual v) (hmajorant v hv)).trans
      (hresidualBound v hv)

/-- The canonical deficit itself supplies a valid rule-relative residual. -/
theorem pinnedPrimeWeightRuleDeficitCriterion_to_residualCriterion
    {rule : PinnedPrimeWeightCoefficientRule} {ρ : ℝ}
    (hcriterion :
      PinnedPrimeWeightRuleDeficitCriterionAt rule ρ) :
    PinnedPrimeWeightRuleResidualCriterionAt rule ρ := by
  intro η hη
  obtain ⟨C, hC, R, hR, j₀, hstages⟩ :=
    hcriterion η hη
  refine ⟨C, hC, R, hR, j₀, ?_⟩
  intro j hj
  obtain ⟨hcoefficient, hdeficitBound⟩ := hstages j hj
  let residual : ℝ → ℝ := fun v =>
    pinnedPrimeWeightCanonicalDeficit
      (dyadicScale j) (rule.coefficient j v) v
  refine ⟨residual, ?_, hcoefficient, ?_, ?_⟩
  · intro v
    simpa [residual] using
      (pinnedPrimeWeightCanonicalDeficit_nonnegative
        (dyadicScale j) (rule.coefficient j v) v)
  · intro v hv
    simpa [residual] using hdeficitBound v hv
  · intro v hv
    simpa [residual] using
      (pinnedPrimeWeightCanonicalDeficit_majorizes
        (dyadicScale j) (rule.coefficient j v) v)

/-- For one immutable coefficient rule, an arbitrary nonnegative residual
supplier is exactly equivalent to a bound on the canonical minimal deficit. -/
theorem pinnedPrimeWeightRuleResidualCriterion_iff_deficitCriterion
    (rule : PinnedPrimeWeightCoefficientRule) (ρ : ℝ) :
    PinnedPrimeWeightRuleResidualCriterionAt rule ρ ↔
      PinnedPrimeWeightRuleDeficitCriterionAt rule ρ := by
  constructor
  · exact pinnedPrimeWeightRuleResidualCriterion_to_deficitCriterion
  · exact pinnedPrimeWeightRuleDeficitCriterion_to_residualCriterion

/-- Forgetting the immutable-rule strengthening recovers the preceding pinned
criterion without changing its analytic conclusion. -/
theorem pinnedPrimeWeightRuleResidualCriterion_to_pinnedCriterion
    {rule : PinnedPrimeWeightCoefficientRule} {ρ : ℝ}
    (hcriterion :
      PinnedPrimeWeightRuleResidualCriterionAt rule ρ) :
    PinnedPrimeWeightCriterionAt ρ := by
  intro η hη
  obtain ⟨C, hC, R, hR, j₀, hstages⟩ :=
    hcriterion η hη
  refine ⟨C, hC, R, hR, j₀, ?_⟩
  intro j hj
  obtain ⟨residual, hresidual, hcoefficient,
      hresidualBound, hmajorant⟩ :=
    hstages j hj
  refine ⟨rule.coefficient j, residual, hresidual, ?_, ?_, ?_⟩
  · intro v hv
    exact hcoefficient v
      (by simpa [pinnedPrimeWeightNextOctave] using hv)
  · intro v hv
    exact hresidualBound v
      (by simpa [pinnedPrimeWeightNextOctave] using hv)
  · intro v hv
    have h := hmajorant v
      (by simpa [pinnedPrimeWeightNextOctave] using hv)
    simpa [pinnedPrimeWeightResponseMagnitude] using h

/-- A canonical-deficit supplier for one immutable rule constructs the prior
pinned source criterion. -/
theorem pinnedPrimeWeightRuleDeficitCriterion_to_pinnedCriterion
    {rule : PinnedPrimeWeightCoefficientRule} {ρ : ℝ}
    (hcriterion :
      PinnedPrimeWeightRuleDeficitCriterionAt rule ρ) :
    PinnedPrimeWeightCriterionAt ρ :=
  pinnedPrimeWeightRuleResidualCriterion_to_pinnedCriterion
    (pinnedPrimeWeightRuleDeficitCriterion_to_residualCriterion hcriterion)

/-- The immutable-rule canonical-deficit criterion supplies the generic
feature-norm criterion. -/
theorem pinnedPrimeWeightRuleDeficitCriterion_to_featureNormCriterion
    {rule : PinnedPrimeWeightCoefficientRule} {ρ : ℝ}
    (hcriterion :
      PinnedPrimeWeightRuleDeficitCriterionAt rule ρ) :
    PrimeThetaFeatureNormCriterionAt ρ :=
  pinnedPrimeWeightCriterion_to_featureNormCriterion
    (pinnedPrimeWeightRuleDeficitCriterion_to_pinnedCriterion hcriterion)

/-- The immutable-rule canonical-deficit criterion supplies the nonlinear
theta recurrence. -/
theorem pinnedPrimeWeightRuleDeficitCriterion_to_recurrence
    {rule : PinnedPrimeWeightCoefficientRule} {ρ : ℝ}
    (hcriterion :
      PinnedPrimeWeightRuleDeficitCriterionAt rule ρ) :
    QuadraticThetaSourceRecurrenceAt ρ :=
  pinnedPrimeWeightCriterion_to_recurrence
    (pinnedPrimeWeightRuleDeficitCriterion_to_pinnedCriterion hcriterion)

/-- In the admitted threshold range, the same criterion supplies one exact
quadratic descent step. -/
theorem pinnedPrimeWeightRuleDeficitCriterion_to_descent
    {rule : PinnedPrimeWeightCoefficientRule} {ρ : ℝ}
    (hρ : (3 : ℝ) / 4 ≤ ρ)
    (hcriterion :
      PinnedPrimeWeightRuleDeficitCriterionAt rule ρ) :
    QuadraticThetaDescentAt ρ :=
  pinnedPrimeWeightCriterion_to_descent hρ
    (pinnedPrimeWeightRuleDeficitCriterion_to_pinnedCriterion hcriterion)

end GRWTSK.RiemannHypothesis
```
