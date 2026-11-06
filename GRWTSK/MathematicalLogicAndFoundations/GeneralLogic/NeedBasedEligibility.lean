/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.ObservationRefinement
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.RevocableAuthorization

set_option autoImplicit false

/-!
# Eligibility that factors through need rather than achievement

A state has independent need and achievement coordinates. Need-invariance is
exactly `Observation.Determined Prod.fst`; no new equivalence relation is added.
`Authorization.Policy.Complete` expresses a supplied coverage requirement, not
an ethical conclusion inferred from mathematics.

Primary argument: use existing predicate descent and the least fiber-saturated
enlargement. A gate can cover every required state only if it accepts every
achievement whenever any need exists. If some achievement passes a gate, its
least need-invariant enlargement removes that gate rather than removing the
need. The empty-need and empty-achievement boundary cases are not suppressed.

A separate obstruction reuses the sound-policy mixed-fiber theorem: achievement
alone cannot classify need when the same achievement accompanies opposite needs.
Enriched observations preserve existence of exact policies without changing
eligibility. These are conditional logical results, not empirical or legal rules.
Independent review and all Lean verification: NOT_RUN. Target: Lean v4.34.1.
-/

namespace GRWTSK.Logic.Eligibility

open Observation
open Authorization.Policy

universe u v w z

variable {Need : Type u} {Achievement : Type v}

/-- A gate requires both an underlying need and an independent achievement. -/
def gated (required : Need → Prop) (achievement : Achievement → Prop) :
    Need × Achievement → Prop := fun state => required state.1 ∧ achievement state.2

/-- Descent through the need projection is precisely independence from achievement. -/
theorem need_invariant_iff_rule (eligible : Need × Achievement → Prop) :
    Determined (fun state : Need × Achievement => state.1) eligible ↔
      ∃ rule : Need → Prop, ∀ need achievement, eligible (need, achievement) ↔ rule need := by
  constructor
  · intro h
    obtain ⟨rule, hrule⟩ := (determined_iff_factors _ eligible).mp h
    exact ⟨rule, fun need achievement => hrule (need, achievement)⟩
  · intro h
    obtain ⟨rule, hrule⟩ := h
    apply (determined_iff_factors _ eligible).mpr
    exact ⟨rule, fun state => hrule state.1 state.2⟩

/-- Invariance protects any specified achievement value, including no achievement. -/
theorem invariant_includes_unaccomplished (eligible : Need × Achievement → Prop)
    (invariant : Determined (fun state : Need × Achievement => state.1) eligible)
    (need : Need) (earned unaccomplished : Achievement)
    (accepted : eligible (need, earned)) : eligible (need, unaccomplished) :=
  (invariant (need, earned) (need, unaccomplished) rfl).mp accepted

/-- The gate is sound for the underlying requirement, but may be incomplete. -/
theorem gated_sound (required : Need → Prop) (achievement : Achievement → Prop) :
    Sound (fun state : Need × Achievement => state)
      (fun state => required state.1) (gated required achievement) :=
  fun _ accepted => accepted.1

/-- Complete coverage forces every achievement to pass when a required state exists. -/
theorem gated_complete_iff (required : Need → Prop) (achievement : Achievement → Prop) :
    Complete (fun state : Need × Achievement => state)
      (fun state => required state.1) (gated required achievement) ↔
        ((∃ need, required need) → ∀ value, achievement value) := by
  constructor
  · intro complete existsNeed value
    obtain ⟨need, needed⟩ := existsNeed
    exact (complete (need, value) needed).2
  · intro allAchievements state needed
    exact ⟨needed, allAchievements ⟨state.1, needed⟩ state.2⟩

/-- One required state and one excluded achievement refute complete coverage. -/
theorem gate_exclusion_obstructs_coverage
    (required : Need → Prop) (achievement : Achievement → Prop)
    {need : Need} {value : Achievement}
    (needed : required need) (excluded : ¬ achievement value) :
    ¬ Complete (fun state : Need × Achievement => state)
      (fun state => required state.1) (gated required achievement) := by
  intro complete
  exact excluded ((complete (need, value) needed).2)

/-- The exact saturated gate retains need and existentially forgets achievement. -/
theorem saturate_gate_iff (required : Need → Prop) (achievement : Achievement → Prop)
    (need : Need) (value : Achievement) :
    Saturate (fun state : Need × Achievement => state.1)
      (gated required achievement) (need, value) ↔
        required need ∧ ∃ earned, achievement earned := by
  constructor
  · intro h
    obtain ⟨state, sameNeed, needed, earned⟩ := h
    refine ⟨?_, state.2, earned⟩
    change state.1 = need at sameNeed
    rw [← sameNeed]
    exact needed
  · intro h
    obtain ⟨needed, earned, accepted⟩ := h
    exact ⟨(need, earned), rfl, needed, accepted⟩

/-- When some achievement passes, saturation leaves only the need requirement. -/
theorem saturate_gate_eq_requirement
    (required : Need → Prop) (achievement : Achievement → Prop)
    (someAchievement : ∃ value, achievement value) (state : Need × Achievement) :
    Saturate (fun x : Need × Achievement => x.1)
      (gated required achievement) state ↔ required state.1 := by
  exact (saturate_gate_iff required achievement state.1 state.2).trans
    ⟨And.left, fun needed => ⟨needed, someAchievement⟩⟩

/-- Every need-invariant extension of a nonempty achievement gate covers the need. -/
theorem least_invariant_extension_covers
    (required : Need → Prop) (achievement : Achievement → Prop)
    (eligible : Need × Achievement → Prop)
    (includes : ∀ state, gated required achievement state → eligible state)
    (invariant : Determined (fun state : Need × Achievement => state.1) eligible)
    (someAchievement : ∃ value, achievement value)
    (state : Need × Achievement) (needed : required state.1) : eligible state := by
  apply saturate_least (fun state : Need × Achievement => state.1) includes invariant state
  exact (saturate_gate_eq_requirement required achievement someAchievement state).mpr needed

/-- Achievement-only classification cannot be simultaneously sound and complete. -/
theorem achievement_only_cannot_classify_mixed_need
    (required : Need → Prop) (policy : Achievement → Prop)
    (sound : Sound (fun state : Need × Achievement => state.2)
      (fun state => required state.1) policy)
    {needed unneeded : Need} (value : Achievement)
    (positive : required needed) (negative : ¬ required unneeded) :
    ¬ Complete (fun state : Need × Achievement => state.2)
      (fun state => required state.1) policy := by
  exact sound_cannot_be_complete_on_mixed_fiber
    (fun state : Need × Achievement => state.2)
    (fun state => required state.1) policy sound
    (x := (needed, value)) (y := (unneeded, value)) rfl positive negative

/-- Enrichment preserves exact classifiability without weakening the requirement. -/
theorem exact_policy_after_refinement
    {Person : Type u} {Fine : Type w} {Coarse : Type z}
    (fine : Person → Fine) (coarse : Person → Coarse) (required : Person → Prop)
    (refinement : Observation.Refines fine coarse)
    (existing : ∃ policy, Sound coarse required policy ∧ Complete coarse required policy) :
    ∃ policy, Sound fine required policy ∧ Complete fine required policy := by
  apply (sound_complete_iff_determined fine required).mpr
  exact determined_of_refines refinement
    ((sound_complete_iff_determined coarse required).mp existing)

end GRWTSK.Logic.Eligibility
