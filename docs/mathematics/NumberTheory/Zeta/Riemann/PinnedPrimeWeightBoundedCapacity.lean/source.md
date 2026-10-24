# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightBoundedCapacity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ce497796ef5b5baa088dde0755a6f53b8963e8a` · SHA-256 `d05f0c3d87bce3f6aaca6030764716c01c839673282cff515793e9ee365391af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightCanonicalDeficit
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Bounded response capacity for the pinned prime-weight source

For the concrete pinned response

  |c * A_X^2| / X,

this module solves the coefficient optimization problem under an absolute
budget `|c| ≤ C`.  When `C ≥ 0`, the largest possible response is

  C * A_X^2 / X,

and it is attained by the constant coefficient `c=C`.  Consequently the
associated bounded deficit is a lower bound for the canonical deficit of every
coefficient obeying the same budget.

This is an exact analytic obstruction.  It does not construct an
explicit-formula, detector, or safe-shift coefficient law, and it does not
prove the bounded deficit decays at either threshold.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
BOUNDED_COEFFICIENT_OPTIMIZATION_DEFINED /
CAPACITY_ATTAINMENT_DEFINED /
AMPLITUDE_NECESSITY_DEFINED /
COEFFICIENT_SOURCE_LAW_OPEN / NO_RH_CLAIM.
-/

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

namespace GRWTSK.RiemannHypothesis

/-- Largest normalized response available under the absolute coefficient
budget `C`.  The intended use carries `0 ≤ C`. -/
def pinnedPrimeWeightBoundedCapacity
    (X : ℕ) (C : ℝ) : ℝ :=
  C * (pinnedPrimeWeightedAmplitude X)^2 / (X : ℝ)

/-- Least residual compatible with the extremal response allowed by `C`. -/
def pinnedPrimeWeightBoundedDeficit
    (X : ℕ) (C v : ℝ) : ℝ :=
  max 0
    ((|thetaError v| + 1) -
      pinnedPrimeWeightBoundedCapacity X C)

theorem pinnedPrimeWeightBoundedCapacity_nonnegative
    (X : ℕ) {C : ℝ} (hC : 0 ≤ C) :
    0 ≤ pinnedPrimeWeightBoundedCapacity X C := by
  unfold pinnedPrimeWeightBoundedCapacity
  exact div_nonneg
    (mul_nonneg hC (sq_nonneg _))
    (Nat.cast_nonneg _)

theorem pinnedPrimeWeightBoundedDeficit_nonnegative
    (X : ℕ) (C v : ℝ) :
    0 ≤ pinnedPrimeWeightBoundedDeficit X C v := by
  unfold pinnedPrimeWeightBoundedDeficit
  exact le_max_left _ _

/-- The extremal capacity plus its bounded deficit always majorizes the target
amplitude. -/
theorem pinnedPrimeWeightBoundedDeficit_majorizes
    (X : ℕ) (C v : ℝ) :
    |thetaError v| + 1 ≤
      pinnedPrimeWeightBoundedCapacity X C +
        pinnedPrimeWeightBoundedDeficit X C v := by
  unfold pinnedPrimeWeightBoundedDeficit
  have h :=
    le_max_right (0 : ℝ)
      ((|thetaError v| + 1) -
        pinnedPrimeWeightBoundedCapacity X C)
  linarith

/-- No coefficient satisfying `|c| ≤ C` can produce a larger normalized
response than the bounded capacity. -/
theorem pinnedPrimeWeightResponseMagnitude_le_boundedCapacity
    {X : ℕ} {C c : ℝ} (hc : |c| ≤ C) :
    pinnedPrimeWeightResponseMagnitude X c ≤
      pinnedPrimeWeightBoundedCapacity X C := by
  unfold pinnedPrimeWeightResponseMagnitude
    pinnedPrimeWeightBoundedCapacity
  have hnum :
      |c * (pinnedPrimeWeightedAmplitude X)^2| ≤
        C * (pinnedPrimeWeightedAmplitude X)^2 := by
    rw [abs_mul, abs_of_nonneg (sq_nonneg (pinnedPrimeWeightedAmplitude X))]
    exact mul_le_mul_of_nonneg_right hc (sq_nonneg _)
  exact div_le_div_of_nonneg_right hnum (Nat.cast_nonneg _)

/-- The bounded deficit is a universal lower bound on the canonical deficit of
any coefficient obeying the same absolute budget. -/
theorem pinnedPrimeWeightBoundedDeficit_le_canonicalDeficit
    {X : ℕ} {C c v : ℝ} (hc : |c| ≤ C) :
    pinnedPrimeWeightBoundedDeficit X C v ≤
      pinnedPrimeWeightCanonicalDeficit X c v := by
  unfold pinnedPrimeWeightBoundedDeficit
    pinnedPrimeWeightCanonicalDeficit
  exact max_le_max le_rfl
    (sub_le_sub_left
      (pinnedPrimeWeightResponseMagnitude_le_boundedCapacity hc) _)

/-- The nonnegative extremal coefficient `c=C` attains the bounded capacity. -/
theorem pinnedPrimeWeightResponseMagnitude_eq_boundedCapacity
    (X : ℕ) {C : ℝ} (hC : 0 ≤ C) :
    pinnedPrimeWeightResponseMagnitude X C =
      pinnedPrimeWeightBoundedCapacity X C := by
  unfold pinnedPrimeWeightResponseMagnitude
    pinnedPrimeWeightBoundedCapacity
  rw [abs_of_nonneg (mul_nonneg hC (sq_nonneg _))]

/-- Hence the canonical deficit of `c=C` is exactly the bounded optimum. -/
theorem pinnedPrimeWeightCanonicalDeficit_eq_boundedDeficit
    (X : ℕ) {C : ℝ} (hC : 0 ≤ C) (v : ℝ) :
    pinnedPrimeWeightCanonicalDeficit X C v =
      pinnedPrimeWeightBoundedDeficit X C v := by
  unfold pinnedPrimeWeightCanonicalDeficit
    pinnedPrimeWeightBoundedDeficit
  rw [pinnedPrimeWeightResponseMagnitude_eq_boundedCapacity X hC]

/-- Exact minimum statement: every coefficient within the budget has deficit
at least the bounded optimum, and `c=C` realizes equality. -/
theorem pinnedPrimeWeightBoundedDeficit_is_minimum
    (X : ℕ) {C : ℝ} (hC : 0 ≤ C) (v : ℝ) :
    (∀ c : ℝ, |c| ≤ C →
      pinnedPrimeWeightBoundedDeficit X C v ≤
        pinnedPrimeWeightCanonicalDeficit X c v) ∧
      pinnedPrimeWeightCanonicalDeficit X C v =
        pinnedPrimeWeightBoundedDeficit X C v := by
  constructor
  · intro c hc
    exact pinnedPrimeWeightBoundedDeficit_le_canonicalDeficit hc
  · exact pinnedPrimeWeightCanonicalDeficit_eq_boundedDeficit X hC v

/-- A small bounded deficit forces the target, minus the admitted error, below
the available response capacity. -/
theorem pinnedPrimeWeight_target_sub_error_le_boundedCapacity
    {X : ℕ} {C v E : ℝ}
    (hE : pinnedPrimeWeightBoundedDeficit X C v ≤ E) :
    (|thetaError v| + 1) - E ≤
      pinnedPrimeWeightBoundedCapacity X C := by
  have hmajor := pinnedPrimeWeightBoundedDeficit_majorizes X C v
  linarith

/-- Denominator-free necessary amplitude condition at a positive scale. -/
theorem pinnedPrimeWeight_amplitude_sq_necessary
    {X : ℕ} (hX : 0 < X) {C v E : ℝ}
    (hE : pinnedPrimeWeightBoundedDeficit X C v ≤ E) :
    (X : ℝ) * ((|thetaError v| + 1) - E) ≤
      C * (pinnedPrimeWeightedAmplitude X)^2 := by
  have hXr : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast hX
  have hcapacity :=
    pinnedPrimeWeight_target_sub_error_le_boundedCapacity hE
  unfold pinnedPrimeWeightBoundedCapacity at hcapacity
  have hmul := (le_div_iff₀ hXr).mp hcapacity
  simpa [mul_comm] using hmul

/-- With zero coefficient budget, the best possible deficit is the complete
target amplitude. -/
theorem pinnedPrimeWeightBoundedDeficit_zero_budget
    (X : ℕ) (v : ℝ) :
    pinnedPrimeWeightBoundedDeficit X 0 v =
      |thetaError v| + 1 := by
  have htarget : 0 ≤ |thetaError v| + 1 := by positivity
  simp [pinnedPrimeWeightBoundedDeficit,
    pinnedPrimeWeightBoundedCapacity,
    max_eq_right htarget]

/-- If the pinned weighted amplitude vanishes, no bounded coefficient can
produce any response. -/
theorem pinnedPrimeWeightBoundedDeficit_of_amplitude_eq_zero
    {X : ℕ} (hA : pinnedPrimeWeightedAmplitude X = 0)
    (C v : ℝ) :
    pinnedPrimeWeightBoundedDeficit X C v =
      |thetaError v| + 1 := by
  have htarget : 0 ≤ |thetaError v| + 1 := by positivity
  simp [pinnedPrimeWeightBoundedDeficit,
    pinnedPrimeWeightBoundedCapacity, hA,
    max_eq_right htarget]

/-- One constant coefficient rule realizing the bounded analytic optimum.
Its metadata explicitly records that it is not an arithmetic source law. -/
def pinnedPrimeWeightConstantCapacityRule
    (C : ℝ) : PinnedPrimeWeightCoefficientRule where
  sourceIdentity :=
    "ANALYTIC OPTIMIZER ONLY: constant coefficient; no source identity"
  normalization := "coefficient(j,v)=C"
  invalidationKey :=
    "not explicit-formula/detector/safe-shift derived"
  coefficient := fun _ _ => C

/-- Necessary capacity condition allowing the coefficient budget to depend on
`eta`.  Every immutable bounded rule must pass this test. -/
def PinnedPrimeWeightCapacityCriterionAt (ρ : ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧
    ∃ R : ℝ, 0 ≤ R ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        ∀ v ∈ pinnedPrimeWeightNextOctave j,
          pinnedPrimeWeightBoundedDeficit
              (dyadicScale j) C v ≤
            R * Real.rpow (dyadicScale j : ℝ)
              (quadraticThreshold ρ + η / 2)

/-- Every immutable-rule deficit criterion implies the source-independent
capacity condition. -/
theorem pinnedPrimeWeightRuleDeficitCriterion_to_capacityCriterion
    {rule : PinnedPrimeWeightCoefficientRule} {ρ : ℝ}
    (hcriterion :
      PinnedPrimeWeightRuleDeficitCriterionAt rule ρ) :
    PinnedPrimeWeightCapacityCriterionAt ρ := by
  intro η hη
  obtain ⟨C, hC, R, hR, j₀, hstages⟩ :=
    hcriterion η hη
  refine ⟨C, hC, R, hR, j₀, ?_⟩
  intro j hj v hv
  obtain ⟨hcoefficient, hdeficit⟩ := hstages j hj
  exact
    (pinnedPrimeWeightBoundedDeficit_le_canonicalDeficit
      (hcoefficient v hv)).trans
      (hdeficit v hv)

/-- Stronger capacity criterion with one budget fixed before `eta`. -/
def PinnedPrimeWeightFixedCapacityCriterionAt
    (C ρ : ℝ) : Prop :=
  0 ≤ C ∧
  ∀ η : ℝ, 0 < η →
    ∃ R : ℝ, 0 ≤ R ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        ∀ v ∈ pinnedPrimeWeightNextOctave j,
          pinnedPrimeWeightBoundedDeficit
              (dyadicScale j) C v ≤
            R * Real.rpow (dyadicScale j : ℝ)
              (quadraticThreshold ρ + η / 2)

/-- A fixed-capacity criterion is realized exactly by the constant optimizer
rule. -/
theorem pinnedPrimeWeightFixedCapacityCriterion_to_constantRule
    {C ρ : ℝ}
    (hcriterion : PinnedPrimeWeightFixedCapacityCriterionAt C ρ) :
    PinnedPrimeWeightRuleDeficitCriterionAt
      (pinnedPrimeWeightConstantCapacityRule C) ρ := by
  intro η hη
  obtain ⟨R, hR, j₀, hstages⟩ := hcriterion.2 η hη
  refine ⟨C, hcriterion.1, R, hR, j₀, ?_⟩
  intro j hj
  refine ⟨?_, ?_⟩
  · intro v hv
    simp [pinnedPrimeWeightConstantCapacityRule,
      abs_of_nonneg hcriterion.1]
  · intro v hv
    change
      pinnedPrimeWeightCanonicalDeficit
          (dyadicScale j) C v ≤
        R * Real.rpow (dyadicScale j : ℝ)
          (quadraticThreshold ρ + η / 2)
    rw [pinnedPrimeWeightCanonicalDeficit_eq_boundedDeficit
      (dyadicScale j) hcriterion.1 v]
    exact hstages j hj v hv

/-- Conversely, the constant optimizer's deficit criterion is exactly the
fixed-capacity condition once `C ≥ 0` is retained. -/
theorem pinnedPrimeWeightConstantRule_to_fixedCapacityCriterion
    {C ρ : ℝ} (hC : 0 ≤ C)
    (hcriterion :
      PinnedPrimeWeightRuleDeficitCriterionAt
        (pinnedPrimeWeightConstantCapacityRule C) ρ) :
    PinnedPrimeWeightFixedCapacityCriterionAt C ρ := by
  refine ⟨hC, ?_⟩
  intro η hη
  obtain ⟨Cbound, hCbound, R, hR, j₀, hstages⟩ :=
    hcriterion η hη
  refine ⟨R, hR, j₀, ?_⟩
  intro j hj v hv
  obtain ⟨hcoefficient, hdeficit⟩ := hstages j hj
  have hd := hdeficit v hv
  change
    pinnedPrimeWeightCanonicalDeficit
        (dyadicScale j) C v ≤
      R * Real.rpow (dyadicScale j : ℝ)
        (quadraticThreshold ρ + η / 2) at hd
  rw [pinnedPrimeWeightCanonicalDeficit_eq_boundedDeficit
    (dyadicScale j) hC v] at hd
  exact hd

/-- Exact equivalence between fixed analytic capacity and the constant
optimizer rule. -/
theorem pinnedPrimeWeightFixedCapacityCriterion_iff_constantRule
    (C ρ : ℝ) :
    PinnedPrimeWeightFixedCapacityCriterionAt C ρ ↔
      (0 ≤ C ∧
        PinnedPrimeWeightRuleDeficitCriterionAt
          (pinnedPrimeWeightConstantCapacityRule C) ρ) := by
  constructor
  · intro h
    exact ⟨h.1,
      pinnedPrimeWeightFixedCapacityCriterion_to_constantRule h⟩
  · rintro ⟨hC, hrule⟩
    exact
      pinnedPrimeWeightConstantRule_to_fixedCapacityCriterion
        hC hrule

/-- The fixed-capacity criterion supplies the existing nonlinear recurrence.
The hard premise is precisely the decay of the bounded optimal deficit. -/
theorem pinnedPrimeWeightFixedCapacityCriterion_to_recurrence
    {C ρ : ℝ}
    (hcriterion : PinnedPrimeWeightFixedCapacityCriterionAt C ρ) :
    QuadraticThetaSourceRecurrenceAt ρ :=
  pinnedPrimeWeightRuleDeficitCriterion_to_recurrence
    (pinnedPrimeWeightFixedCapacityCriterion_to_constantRule hcriterion)

/-- In the admitted threshold range, the fixed-capacity criterion supplies one
quadratic descent step. -/
theorem pinnedPrimeWeightFixedCapacityCriterion_to_descent
    {C ρ : ℝ}
    (hρ : (3 : ℝ) / 4 ≤ ρ)
    (hcriterion : PinnedPrimeWeightFixedCapacityCriterionAt C ρ) :
    QuadraticThetaDescentAt ρ :=
  pinnedPrimeWeightRuleDeficitCriterion_to_descent hρ
    (pinnedPrimeWeightFixedCapacityCriterion_to_constantRule hcriterion)

end GRWTSK.RiemannHypothesis
```
