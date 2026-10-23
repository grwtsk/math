/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightAmplitudeEnvelope
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Exact finite-capacity ratios for the pinned prime-weight route

The preceding amplitude-envelope layer reduced one stage to

  X * (target - admittedError) ≤ C * A_X^2.

This module separates the vacuous branch, where the admitted error already
covers the target, from the genuinely finite-capacity branch.  On the latter
branch the pinned amplitude must be nonzero and the least admissible
nonnegative coefficient budget is

  X * max 0 (target - admittedError) / A_X^2.

The explicit nonzero-amplitude condition is essential: real division is
totalized, so the bare ratio evaluates to zero when `A_X = 0`.  That value is
not a certificate unless the admitted error already covers the target.

This is an exact algebraic reduction.  It does not prove a pinned-amplitude
estimate, construct an arithmetic coefficient source, prove either threshold
criterion, or prove the Riemann Hypothesis.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
POSITIVE_PART_REDUCTION_DEFINED /
FINITE_CAPACITY_RATIO_DEFINED /
ZERO_AMPLITUDE_DICHOTOMY_DEFINED /
RATIO_CRITERION_EQUIVALENCE_DEFINED /
PINNED_AMPLITUDE_ESTIMATE_OPEN / NO_RH_CLAIM.
-/

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

namespace GRWTSK.RiemannHypothesis

/-- Positive part of the target left after the admitted error allowance. -/
def pinnedPrimeWeightRemainingTarget
    (v E : ℝ) : ℝ :=
  max 0 ((|thetaError v| + 1) - E)

/-- Totalized real-valued capacity ratio.  Its use as a finite certificate
requires a separately retained nonzero-amplitude premise. -/
def pinnedPrimeWeightRequiredCapacity
    (X : ℕ) (v E : ℝ) : ℝ :=
  (X : ℝ) * pinnedPrimeWeightRemainingTarget v E /
    (pinnedPrimeWeightedAmplitude X)^2

/-- Exact finite-capacity requirement, including the covered-target branch and
the nonzero-amplitude guard for the ratio branch. -/
def pinnedPrimeWeightFiniteCapacityRequirement
    (X : ℕ) (C v E : ℝ) : Prop :=
  |thetaError v| + 1 ≤ E ∨
    (pinnedPrimeWeightedAmplitude X ≠ 0 ∧
      pinnedPrimeWeightRequiredCapacity X v E ≤ C)

theorem pinnedPrimeWeightRemainingTarget_nonnegative
    (v E : ℝ) :
    0 ≤ pinnedPrimeWeightRemainingTarget v E := by
  unfold pinnedPrimeWeightRemainingTarget
  exact le_max_left _ _

/-- The positive part vanishes exactly when the admitted error covers the
complete target. -/
theorem pinnedPrimeWeightRemainingTarget_eq_zero_iff
    (v E : ℝ) :
    pinnedPrimeWeightRemainingTarget v E = 0 ↔
      |thetaError v| + 1 ≤ E := by
  constructor
  · intro hzero
    have hsub :
        (|thetaError v| + 1) - E ≤
          pinnedPrimeWeightRemainingTarget v E := by
      unfold pinnedPrimeWeightRemainingTarget
      exact le_max_right _ _
    rw [hzero] at hsub
    linarith
  · intro htarget
    unfold pinnedPrimeWeightRemainingTarget
    apply max_eq_left
    linarith

/-- On the nonvacuous branch, the positive part is the literal target gap. -/
theorem pinnedPrimeWeightRemainingTarget_eq_sub_of_lt
    {v E : ℝ} (hlt : E < |thetaError v| + 1) :
    pinnedPrimeWeightRemainingTarget v E =
      (|thetaError v| + 1) - E := by
  unfold pinnedPrimeWeightRemainingTarget
  apply max_eq_right
  linarith

/-- For a nonnegative coefficient budget, replacing the target gap by its
positive part does not change the amplitude requirement. -/
theorem pinnedPrimeWeightAmplitudeRequirement_iff_remainingTarget
    (X : ℕ) {C v E : ℝ} (hC : 0 ≤ C) :
    pinnedPrimeWeightAmplitudeRequirement X C v E ↔
      (X : ℝ) * pinnedPrimeWeightRemainingTarget v E ≤
        C * (pinnedPrimeWeightedAmplitude X)^2 := by
  by_cases htarget : |thetaError v| + 1 ≤ E
  · have hzero : pinnedPrimeWeightRemainingTarget v E = 0 :=
      (pinnedPrimeWeightRemainingTarget_eq_zero_iff v E).2 htarget
    constructor
    · intro _
      rw [hzero, mul_zero]
      exact mul_nonneg hC (sq_nonneg _)
    · intro _
      exact
        pinnedPrimeWeightAmplitudeRequirement_of_target_le_error
          X hC htarget
  · have hlt : E < |thetaError v| + 1 := lt_of_not_ge htarget
    unfold pinnedPrimeWeightAmplitudeRequirement
    rw [pinnedPrimeWeightRemainingTarget_eq_sub_of_lt hlt]

/-- The totalized required-capacity ratio is always nonnegative. -/
theorem pinnedPrimeWeightRequiredCapacity_nonnegative
    (X : ℕ) (v E : ℝ) :
    0 ≤ pinnedPrimeWeightRequiredCapacity X v E := by
  unfold pinnedPrimeWeightRequiredCapacity
  exact div_nonneg
    (mul_nonneg (Nat.cast_nonneg X)
      (pinnedPrimeWeightRemainingTarget_nonnegative v E))
    (sq_nonneg _)

/-- When the pinned amplitude is nonzero, the amplitude requirement is exactly
a lower bound on the available coefficient budget. -/
theorem pinnedPrimeWeightAmplitudeRequirement_iff_requiredCapacity_le
    {X : ℕ} {C v E : ℝ}
    (hC : 0 ≤ C)
    (hA : pinnedPrimeWeightedAmplitude X ≠ 0) :
    pinnedPrimeWeightAmplitudeRequirement X C v E ↔
      pinnedPrimeWeightRequiredCapacity X v E ≤ C := by
  rw [pinnedPrimeWeightAmplitudeRequirement_iff_remainingTarget X hC]
  unfold pinnedPrimeWeightRequiredCapacity
  have hA2 : 0 < (pinnedPrimeWeightedAmplitude X)^2 :=
    sq_pos_of_ne_zero hA
  constructor
  · intro h
    exact (div_le_iff₀ hA2).2 h
  · intro h
    exact (div_le_iff₀ hA2).1 h

/-- The required ratio is the least nonnegative coefficient budget satisfying
the stage inequality whenever the pinned amplitude is nonzero. -/
theorem pinnedPrimeWeightRequiredCapacity_is_least_nonnegative_budget
    {X : ℕ} {v E : ℝ}
    (hA : pinnedPrimeWeightedAmplitude X ≠ 0) :
    0 ≤ pinnedPrimeWeightRequiredCapacity X v E ∧
      pinnedPrimeWeightAmplitudeRequirement X
        (pinnedPrimeWeightRequiredCapacity X v E) v E ∧
      ∀ C : ℝ, 0 ≤ C →
        pinnedPrimeWeightAmplitudeRequirement X C v E →
          pinnedPrimeWeightRequiredCapacity X v E ≤ C := by
  have hnonneg :=
    pinnedPrimeWeightRequiredCapacity_nonnegative X v E
  refine ⟨hnonneg, ?_, ?_⟩
  · exact
      (pinnedPrimeWeightAmplitudeRequirement_iff_requiredCapacity_le
        hnonneg hA).2 le_rfl
  · intro C hC hrequirement
    exact
      (pinnedPrimeWeightAmplitudeRequirement_iff_requiredCapacity_le
        hC hA).1 hrequirement

/-- At positive scale, zero pinned amplitude leaves only the vacuous
covered-target branch. -/
theorem pinnedPrimeWeightAmplitudeRequirement_of_amplitude_eq_zero_iff
    {X : ℕ} (hX : 0 < X) {C v E : ℝ}
    (hA : pinnedPrimeWeightedAmplitude X = 0) :
    pinnedPrimeWeightAmplitudeRequirement X C v E ↔
      |thetaError v| + 1 ≤ E := by
  change
    (X : ℝ) * ((|thetaError v| + 1) - E) ≤
        C * (pinnedPrimeWeightedAmplitude X)^2 ↔
      |thetaError v| + 1 ≤ E
  rw [hA]
  norm_num
  have hXr : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast hX
  constructor <;> intro h <;> nlinarith

/-- A nonvacuous stage inequality at positive scale forces the pinned amplitude
to be nonzero. -/
theorem pinnedPrimeWeightAmplitudeRequirement_nonvacuous_amplitude_ne_zero
    {X : ℕ} (hX : 0 < X) {C v E : ℝ}
    (hlt : E < |thetaError v| + 1)
    (hrequirement :
      pinnedPrimeWeightAmplitudeRequirement X C v E) :
    pinnedPrimeWeightedAmplitude X ≠ 0 := by
  intro hzero
  have hcovered : |thetaError v| + 1 ≤ E :=
    (pinnedPrimeWeightAmplitudeRequirement_of_amplitude_eq_zero_iff
      hX hzero).1 hrequirement
  linarith

/-- A nonvacuous stage inequality at positive scale also forces a strictly
positive coefficient budget. -/
theorem pinnedPrimeWeightAmplitudeRequirement_nonvacuous_capacity_pos
    {X : ℕ} (hX : 0 < X) {C v E : ℝ}
    (hlt : E < |thetaError v| + 1)
    (hrequirement :
      pinnedPrimeWeightAmplitudeRequirement X C v E) :
    0 < C := by
  unfold pinnedPrimeWeightAmplitudeRequirement at hrequirement
  have hXr : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast hX
  have hleft :
      0 < (X : ℝ) * ((|thetaError v| + 1) - E) :=
    mul_pos hXr (sub_pos.mpr hlt)
  by_contra hnot
  have hC : C ≤ 0 := le_of_not_gt hnot
  have hright :
      C * (pinnedPrimeWeightedAmplitude X)^2 ≤ 0 :=
    mul_nonpos_of_nonpos_of_nonneg hC (sq_nonneg _)
  linarith

/-- Exact stagewise dichotomy: either the admitted error already covers the
target, or the pinned amplitude is nonzero and the finite required ratio lies
inside the declared budget. -/
theorem pinnedPrimeWeightAmplitudeRequirement_iff_finiteCapacityRequirement
    {X : ℕ} (hX : 0 < X) {C v E : ℝ}
    (hC : 0 ≤ C) :
    pinnedPrimeWeightAmplitudeRequirement X C v E ↔
      pinnedPrimeWeightFiniteCapacityRequirement X C v E := by
  constructor
  · intro hrequirement
    by_cases htarget : |thetaError v| + 1 ≤ E
    · exact Or.inl htarget
    · have hlt : E < |thetaError v| + 1 := lt_of_not_ge htarget
      have hA : pinnedPrimeWeightedAmplitude X ≠ 0 :=
        pinnedPrimeWeightAmplitudeRequirement_nonvacuous_amplitude_ne_zero
          hX hlt hrequirement
      exact Or.inr ⟨hA,
        (pinnedPrimeWeightAmplitudeRequirement_iff_requiredCapacity_le
          hC hA).1 hrequirement⟩
  · intro hfinite
    rcases hfinite with htarget | ⟨hA, hratio⟩
    · exact
        pinnedPrimeWeightAmplitudeRequirement_of_target_le_error
          X hC htarget
    · exact
        (pinnedPrimeWeightAmplitudeRequirement_iff_requiredCapacity_le
          hC hA).2 hratio

/-- Variable-budget ratio criterion.  It is the exact stagewise dichotomy form
of the preceding amplitude-envelope criterion. -/
def PinnedPrimeWeightCapacityRatioCriterionAt
    (ρ : ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧
    ∃ R : ℝ, 0 ≤ R ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        ∀ v ∈ pinnedPrimeWeightNextOctave j,
          pinnedPrimeWeightFiniteCapacityRequirement
            (dyadicScale j) C v
            (pinnedPrimeWeightStageErrorEnvelope j R ρ η)

/-- Fixed-budget ratio criterion. -/
def PinnedPrimeWeightFixedCapacityRatioCriterionAt
    (C ρ : ℝ) : Prop :=
  0 ≤ C ∧
  ∀ η : ℝ, 0 < η →
    ∃ R : ℝ, 0 ≤ R ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        ∀ v ∈ pinnedPrimeWeightNextOctave j,
          pinnedPrimeWeightFiniteCapacityRequirement
            (dyadicScale j) C v
            (pinnedPrimeWeightStageErrorEnvelope j R ρ η)

/-- The variable-budget ratio criterion and amplitude criterion are exactly
equivalent. -/
theorem pinnedPrimeWeightCapacityRatioCriterion_iff_amplitudeCriterion
    (ρ : ℝ) :
    PinnedPrimeWeightCapacityRatioCriterionAt ρ ↔
      PinnedPrimeWeightAmplitudeCriterionAt ρ := by
  constructor
  · intro hratio η hη
    obtain ⟨C, hC, R, hR, j₀, hstages⟩ := hratio η hη
    refine ⟨C, hC, R, hR, j₀, ?_⟩
    intro j hj v hv
    exact
      (pinnedPrimeWeightAmplitudeRequirement_iff_finiteCapacityRequirement
        (X := dyadicScale j) (C := C) (v := v)
        (E := pinnedPrimeWeightStageErrorEnvelope j R ρ η)
        (GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j) hC).2
        (hstages j hj v hv)
  · intro hamplitude η hη
    obtain ⟨C, hC, R, hR, j₀, hstages⟩ := hamplitude η hη
    refine ⟨C, hC, R, hR, j₀, ?_⟩
    intro j hj v hv
    exact
      (pinnedPrimeWeightAmplitudeRequirement_iff_finiteCapacityRequirement
        (X := dyadicScale j) (C := C) (v := v)
        (E := pinnedPrimeWeightStageErrorEnvelope j R ρ η)
        (GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j) hC).1
        (hstages j hj v hv)

/-- The fixed-budget ratio criterion and fixed amplitude criterion are exactly
equivalent. -/
theorem pinnedPrimeWeightFixedCapacityRatioCriterion_iff_amplitudeCriterion
    (C ρ : ℝ) :
    PinnedPrimeWeightFixedCapacityRatioCriterionAt C ρ ↔
      PinnedPrimeWeightFixedCapacityAmplitudeCriterionAt C ρ := by
  constructor
  · intro hratio
    refine ⟨hratio.1, ?_⟩
    intro η hη
    obtain ⟨R, hR, j₀, hstages⟩ := hratio.2 η hη
    refine ⟨R, hR, j₀, ?_⟩
    intro j hj v hv
    exact
      (pinnedPrimeWeightAmplitudeRequirement_iff_finiteCapacityRequirement
        (X := dyadicScale j) (C := C) (v := v)
        (E := pinnedPrimeWeightStageErrorEnvelope j R ρ η)
        (GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j) hratio.1).2
        (hstages j hj v hv)
  · intro hamplitude
    refine ⟨hamplitude.1, ?_⟩
    intro η hη
    obtain ⟨R, hR, j₀, hstages⟩ := hamplitude.2 η hη
    refine ⟨R, hR, j₀, ?_⟩
    intro j hj v hv
    exact
      (pinnedPrimeWeightAmplitudeRequirement_iff_finiteCapacityRequirement
        (X := dyadicScale j) (C := C) (v := v)
        (E := pinnedPrimeWeightStageErrorEnvelope j R ρ η)
        (GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j) hamplitude.1).1
        (hstages j hj v hv)

/-- Every immutable coefficient-rule criterion must pass the exact ratio
criterion. -/
theorem pinnedPrimeWeightRuleDeficitCriterion_to_capacityRatioCriterion
    {rule : PinnedPrimeWeightCoefficientRule} {ρ : ℝ}
    (hcriterion :
      PinnedPrimeWeightRuleDeficitCriterionAt rule ρ) :
    PinnedPrimeWeightCapacityRatioCriterionAt ρ :=
  (pinnedPrimeWeightCapacityRatioCriterion_iff_amplitudeCriterion ρ).2
    (pinnedPrimeWeightRuleDeficitCriterion_to_amplitudeCriterion
      hcriterion)

/-- A fixed ratio criterion supplies the already isolated quadratic
recurrence. -/
theorem pinnedPrimeWeightFixedCapacityRatioCriterion_to_recurrence
    {C ρ : ℝ}
    (hcriterion :
      PinnedPrimeWeightFixedCapacityRatioCriterionAt C ρ) :
    QuadraticThetaSourceRecurrenceAt ρ :=
  pinnedPrimeWeightFixedCapacityAmplitudeCriterion_to_recurrence
    ((pinnedPrimeWeightFixedCapacityRatioCriterion_iff_amplitudeCriterion
      C ρ).1 hcriterion)

/-- In the admitted threshold range, a fixed ratio criterion supplies one
quadratic descent step. -/
theorem pinnedPrimeWeightFixedCapacityRatioCriterion_to_descent
    {C ρ : ℝ}
    (hρ : (3 : ℝ) / 4 ≤ ρ)
    (hcriterion :
      PinnedPrimeWeightFixedCapacityRatioCriterionAt C ρ) :
    QuadraticThetaDescentAt ρ :=
  pinnedPrimeWeightFixedCapacityAmplitudeCriterion_to_descent hρ
    ((pinnedPrimeWeightFixedCapacityRatioCriterion_iff_amplitudeCriterion
      C ρ).1 hcriterion)

end GRWTSK.RiemannHypothesis
