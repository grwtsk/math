/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightCapacityRatio
import Mathlib.NumberTheory.Bertrand
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Bertrand positivity for the pinned prime-weight amplitude

Mathlib's formal Bertrand postulate supplies a prime in `(X,2X]` whenever
`X ≠ 0`.  The repository's literal pinned coefficient is `log(p)/p` on such a
prime, hence strictly positive.  Since the theta-error factor is also strictly
positive and every other summand is nonnegative, the complete pinned weighted
amplitude is strictly positive at every positive scale.

This removes the zero-amplitude guard from the finite-capacity ratio criterion
on all dyadic stages.  It does not bound the resulting ratio, construct an
explicit-formula coefficient law, prove either threshold criterion, or prove
the Riemann Hypothesis.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
BERTRAND_PRIME_WINDOW_OCCUPANCY_DEFINED /
PINNED_AMPLITUDE_STRICT_POSITIVITY_DEFINED /
ZERO_AMPLITUDE_GUARD_ELIMINATION_DEFINED /
UNIFORM_RATIO_BOUND_OPEN / NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- A prime satisfying the literal Bertrand inequalities belongs to the
repository's selected source window. -/
theorem prime_mem_thetaPrimeWindow
    {X p : ℕ}
    (hpPrime : p.Prime)
    (hXp : X < p)
    (hp2X : p ≤ 2 * X) :
    p ∈ thetaPrimeWindow X := by
  unfold thetaPrimeWindow
  rw [Finset.mem_filter]
  constructor
  · simpa [window] using
      (Finset.mem_Ioc.mpr ⟨hXp, hp2X⟩)
  · exact hpPrime

/-- Bertrand's postulate makes the literal prime window nonempty at every
nonzero scale. -/
theorem thetaPrimeWindow_nonempty_of_ne_zero
    (X : ℕ) (hX : X ≠ 0) :
    (thetaPrimeWindow X).Nonempty := by
  obtain ⟨p, hpPrime, hXp, hp2X⟩ :=
    Nat.exists_prime_lt_and_le_two_mul X hX
  exact
    ⟨p, prime_mem_thetaPrimeWindow hpPrime hXp hp2X⟩

/-- The actual pinned von Mangoldt coefficient is strictly positive on every
selected prime. -/
theorem primeCoefficient_positive
    {X p : ℕ} (hp : p ∈ thetaPrimeWindow X) :
    0 < coefficient p := by
  rw [primeCoefficient_eq_log_div hp]
  have hpPrime := thetaPrimeWindow_prime hp
  have hpOne : (1 : ℝ) < (p : ℝ) := by
    exact_mod_cast hpPrime.one_lt
  have hpPos : (0 : ℝ) < (p : ℝ) := by
    exact_mod_cast hpPrime.pos
  exact div_pos (Real.log_pos hpOne) hpPos

/-- Every term in the pinned weighted amplitude is nonnegative. -/
theorem pinnedPrimeWeightSummand_nonnegative
    {X p : ℕ} (hp : p ∈ thetaPrimeWindow X) :
    0 ≤ coefficient p * (|thetaError (p : ℝ)| + 1) := by
  exact mul_nonneg
    (primeCoefficient_nonnegative hp) (by positivity)

/-- Every selected prime contributes a strictly positive summand. -/
theorem pinnedPrimeWeightSummand_positive
    {X p : ℕ} (hp : p ∈ thetaPrimeWindow X) :
    0 < coefficient p * (|thetaError (p : ℝ)| + 1) := by
  exact mul_pos
    (primeCoefficient_positive hp) (by positivity)

/-- The actual pinned weighted amplitude is strictly positive at every nonzero
scale. -/
theorem pinnedPrimeWeightedAmplitude_pos_of_ne_zero
    (X : ℕ) (hX : X ≠ 0) :
    0 < pinnedPrimeWeightedAmplitude X := by
  obtain ⟨p, hp⟩ :=
    thetaPrimeWindow_nonempty_of_ne_zero X hX
  unfold pinnedPrimeWeightedAmplitude
  exact
    Finset.sum_pos'
      (fun q hq => pinnedPrimeWeightSummand_nonnegative hq)
      ⟨p, hp, pinnedPrimeWeightSummand_positive hp⟩

/-- Every dyadic source amplitude is strictly positive. -/
theorem pinnedPrimeWeightedAmplitude_dyadic_pos
    (j : ℕ) :
    0 < pinnedPrimeWeightedAmplitude (dyadicScale j) :=
  pinnedPrimeWeightedAmplitude_pos_of_ne_zero
    (dyadicScale j) (Nat.ne_of_gt (dyadicScale_pos j))

/-- Hence the denominator used by the required-capacity ratio is nonzero at
every dyadic stage. -/
theorem pinnedPrimeWeightedAmplitude_dyadic_ne_zero
    (j : ℕ) :
    pinnedPrimeWeightedAmplitude (dyadicScale j) ≠ 0 :=
  ne_of_gt (pinnedPrimeWeightedAmplitude_dyadic_pos j)

/-- Guard-free form of the finite-capacity stage requirement after Bertrand
has supplied denominator nonvanishing. -/
def pinnedPrimeWeightBertrandRatioRequirement
    (X : ℕ) (C v E : ℝ) : Prop :=
  |thetaError v| + 1 ≤ E ∨
    pinnedPrimeWeightRequiredCapacity X v E ≤ C

/-- At every nonzero scale, the guarded finite-capacity condition is exactly
the guard-free Bertrand ratio condition. -/
theorem pinnedPrimeWeightFiniteCapacityRequirement_iff_bertrandRatioRequirement
    {X : ℕ} (hX : X ≠ 0) {C v E : ℝ} :
    pinnedPrimeWeightFiniteCapacityRequirement X C v E ↔
      pinnedPrimeWeightBertrandRatioRequirement X C v E := by
  unfold pinnedPrimeWeightFiniteCapacityRequirement
    pinnedPrimeWeightBertrandRatioRequirement
  constructor
  · rintro (hcovered | ⟨_, hratio⟩)
    · exact Or.inl hcovered
    · exact Or.inr hratio
  · rintro (hcovered | hratio)
    · exact Or.inl hcovered
    · exact Or.inr
        ⟨ne_of_gt
            (pinnedPrimeWeightedAmplitude_pos_of_ne_zero X hX),
          hratio⟩

/-- For positive scales and nonnegative budgets, the original amplitude
inequality is exactly the guard-free Bertrand ratio condition. -/
theorem pinnedPrimeWeightAmplitudeRequirement_iff_bertrandRatioRequirement
    {X : ℕ} (hX : 0 < X) {C v E : ℝ}
    (hC : 0 ≤ C) :
    pinnedPrimeWeightAmplitudeRequirement X C v E ↔
      pinnedPrimeWeightBertrandRatioRequirement X C v E := by
  calc
    pinnedPrimeWeightAmplitudeRequirement X C v E ↔
        pinnedPrimeWeightFiniteCapacityRequirement X C v E :=
      pinnedPrimeWeightAmplitudeRequirement_iff_finiteCapacityRequirement
        hX hC
    _ ↔ pinnedPrimeWeightBertrandRatioRequirement X C v E :=
      pinnedPrimeWeightFiniteCapacityRequirement_iff_bertrandRatioRequirement
        (Nat.ne_of_gt hX)

/-- Variable-budget ratio criterion with the now-proved denominator guard
removed from every dyadic stage. -/
def PinnedPrimeWeightBertrandRatioCriterionAt
    (ρ : ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧
    ∃ R : ℝ, 0 ≤ R ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        ∀ v ∈ pinnedPrimeWeightNextOctave j,
          pinnedPrimeWeightBertrandRatioRequirement
            (dyadicScale j) C v
            (pinnedPrimeWeightStageErrorEnvelope j R ρ η)

/-- Fixed-budget form of the guard-free Bertrand ratio criterion. -/
def PinnedPrimeWeightFixedBertrandRatioCriterionAt
    (C ρ : ℝ) : Prop :=
  0 ≤ C ∧
  ∀ η : ℝ, 0 < η →
    ∃ R : ℝ, 0 ≤ R ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        ∀ v ∈ pinnedPrimeWeightNextOctave j,
          pinnedPrimeWeightBertrandRatioRequirement
            (dyadicScale j) C v
            (pinnedPrimeWeightStageErrorEnvelope j R ρ η)

/-- The variable-budget Bertrand criterion is exactly the guarded ratio
criterion from the preceding layer. -/
theorem pinnedPrimeWeightBertrandRatioCriterion_iff_capacityRatioCriterion
    (ρ : ℝ) :
    PinnedPrimeWeightBertrandRatioCriterionAt ρ ↔
      PinnedPrimeWeightCapacityRatioCriterionAt ρ := by
  constructor
  · intro hbertrand η hη
    obtain ⟨C, hC, R, hR, j₀, hstages⟩ :=
      hbertrand η hη
    refine ⟨C, hC, R, hR, j₀, ?_⟩
    intro j hj v hv
    exact
      (pinnedPrimeWeightFiniteCapacityRequirement_iff_bertrandRatioRequirement
        (Nat.ne_of_gt (dyadicScale_pos j))).2
        (hstages j hj v hv)
  · intro hratio η hη
    obtain ⟨C, hC, R, hR, j₀, hstages⟩ :=
      hratio η hη
    refine ⟨C, hC, R, hR, j₀, ?_⟩
    intro j hj v hv
    exact
      (pinnedPrimeWeightFiniteCapacityRequirement_iff_bertrandRatioRequirement
        (Nat.ne_of_gt (dyadicScale_pos j))).1
        (hstages j hj v hv)

/-- The same exact equivalence for one budget fixed before `eta`. -/
theorem pinnedPrimeWeightFixedBertrandRatioCriterion_iff_capacityRatioCriterion
    (C ρ : ℝ) :
    PinnedPrimeWeightFixedBertrandRatioCriterionAt C ρ ↔
      PinnedPrimeWeightFixedCapacityRatioCriterionAt C ρ := by
  constructor
  · intro hbertrand
    refine ⟨hbertrand.1, ?_⟩
    intro η hη
    obtain ⟨R, hR, j₀, hstages⟩ :=
      hbertrand.2 η hη
    refine ⟨R, hR, j₀, ?_⟩
    intro j hj v hv
    exact
      (pinnedPrimeWeightFiniteCapacityRequirement_iff_bertrandRatioRequirement
        (Nat.ne_of_gt (dyadicScale_pos j))).2
        (hstages j hj v hv)
  · intro hratio
    refine ⟨hratio.1, ?_⟩
    intro η hη
    obtain ⟨R, hR, j₀, hstages⟩ :=
      hratio.2 η hη
    refine ⟨R, hR, j₀, ?_⟩
    intro j hj v hv
    exact
      (pinnedPrimeWeightFiniteCapacityRequirement_iff_bertrandRatioRequirement
        (Nat.ne_of_gt (dyadicScale_pos j))).1
        (hstages j hj v hv)

/-- Every immutable bounded coefficient rule must satisfy the simplified
Bertrand ratio criterion. -/
theorem pinnedPrimeWeightRuleDeficitCriterion_to_bertrandRatioCriterion
    {rule : PinnedPrimeWeightCoefficientRule} {ρ : ℝ}
    (hcriterion :
      PinnedPrimeWeightRuleDeficitCriterionAt rule ρ) :
    PinnedPrimeWeightBertrandRatioCriterionAt ρ :=
  (pinnedPrimeWeightBertrandRatioCriterion_iff_capacityRatioCriterion ρ).2
    (pinnedPrimeWeightRuleDeficitCriterion_to_capacityRatioCriterion
      hcriterion)

/-- A fixed Bertrand ratio criterion supplies the existing quadratic
recurrence. -/
theorem pinnedPrimeWeightFixedBertrandRatioCriterion_to_recurrence
    {C ρ : ℝ}
    (hcriterion :
      PinnedPrimeWeightFixedBertrandRatioCriterionAt C ρ) :
    QuadraticThetaSourceRecurrenceAt ρ :=
  pinnedPrimeWeightFixedCapacityRatioCriterion_to_recurrence
    ((pinnedPrimeWeightFixedBertrandRatioCriterion_iff_capacityRatioCriterion
      C ρ).1 hcriterion)

/-- In the admitted range, a fixed Bertrand ratio criterion supplies one
quadratic threshold descent. -/
theorem pinnedPrimeWeightFixedBertrandRatioCriterion_to_descent
    {C ρ : ℝ}
    (hρ : (3 : ℝ) / 4 ≤ ρ)
    (hcriterion :
      PinnedPrimeWeightFixedBertrandRatioCriterionAt C ρ) :
    QuadraticThetaDescentAt ρ :=
  pinnedPrimeWeightFixedCapacityRatioCriterion_to_descent hρ
    ((pinnedPrimeWeightFixedBertrandRatioCriterion_iff_capacityRatioCriterion
      C ρ).1 hcriterion)

end GRWTSK.RiemannHypothesis
