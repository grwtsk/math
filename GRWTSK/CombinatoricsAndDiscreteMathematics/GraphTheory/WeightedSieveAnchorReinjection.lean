/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.WeightedSieveTypeDiffusion
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

/-!
# Raw weighted-sieve anchor reinjection

This module bridges raw finite nonnegative rational sieve weights to the
existing quantitative `RootHeatState.AnchorReinjection` interface.

A raw reinjection certificate requires one anchor to receive at least a fixed
fraction of every source column before normalization. Combined with the
existing raw anchor-to-type steering certificate, this gives an explicit
two-step lower bound on every declared type mass. The scheduled version allows
the reinjection sieve and the outgoing type-steering sieve to vary with time.

The conclusion is conditional on the stated nonnegative weight inequalities.
No signed Möbius or character sum is silently treated as a probability weight,
no arithmetic sieve estimate is proved, and no K₀-shaped/radical collision is
resolved by positive type mass.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED /
ARITHMETIC_REINJECTION_SUPPLIER_OPEN.
-/

universe u v

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.WeightedSieveTypeDiffusion

open scoped BigOperators
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState

section RawReinjection

variable {Root : Type u} [Fintype Root]

/-- Every source column assigns at least `beta` of its normalized mass to one
selected anchor. The inequality is stated in raw sieve coordinates. -/
def RawAnchorReinjection
    (sieve : WeightedSieve Root) (anchor : Root) (beta : ℚ) : Prop :=
  ∀ source, beta * sieve.columnMass source ≤ sieve.weight anchor source

/-- Raw all-source anchor bounds transport exactly through positive column
normalization to the existing heat-kernel reinjection predicate. -/
theorem anchorReinjection_of_raw
    (sieve : WeightedSieve Root) (anchor : Root) (beta : ℚ)
    (reinject : RawAnchorReinjection sieve anchor beta) :
    AnchorReinjection sieve.normalizedKernel anchor beta := by
  intro source
  change beta ≤ sieve.weight anchor source / sieve.columnMass source
  exact (le_div_iff₀ (sieve.columnMass_pos source)).2 (reinject source)

end RawReinjection

section FixedWeightedSieve

variable {Root : Type u} {Kind : Type v}
  [Fintype Root] [Fintype Kind] [DecidableEq Kind]

/-- One fixed weighted sieve gives a quantitative type-mass floor after two
steps when it both reinjects every source into an anchor and steers that anchor
into every declared type. -/
theorem type_mass_lower_after_two_weighted_sieve_steps
    (sieve : WeightedSieve Root)
    (initial : Root → ℚ) (initial_nonnegative : ∀ root, 0 ≤ initial root)
    (typeOf : Root → Kind) (anchor : Root)
    (beta delta : ℚ) (delta_nonnegative : 0 ≤ delta)
    (reinject : RawAnchorReinjection sieve anchor beta)
    (outgoing : RawAnchorTypeMinorization sieve typeOf anchor delta)
    (time : Nat) (kind : Kind) :
    delta * (beta * (∑ root, initial root)) ≤
      aggregate typeOf
        (sieve.normalizedKernel.evolve initial (time + 2)) kind := by
  exact type_mass_lower_after_two_steps_of_reinjection
    sieve.normalizedKernel initial initial_nonnegative typeOf anchor
    beta delta delta_nonnegative
    (anchorReinjection_of_raw sieve anchor beta reinject)
    (anchorTypeMinorization_of_raw sieve typeOf anchor delta outgoing)
    time kind

/-- Positive raw reinjection and outgoing steering give complete type support
from time two onward for a fixed normalized weighted sieve, with an explicit
uniform floor inherited from total-mass conservation. -/
theorem eventually_type_complete_of_raw_anchor_reinjection
    (sieve : WeightedSieve Root)
    (initial : Root → ℚ) (initial_nonnegative : ∀ root, 0 ≤ initial root)
    (initial_mass_pos : 0 < ∑ root, initial root)
    (typeOf : Root → Kind) (anchor : Root)
    (beta delta : ℚ) (beta_pos : 0 < beta) (delta_pos : 0 < delta)
    (reinject : RawAnchorReinjection sieve anchor beta)
    (outgoing : RawAnchorTypeMinorization sieve typeOf anchor delta) :
    ∀ time,
      TypeCompleteAt typeOf
        (sieve.normalizedKernel.evolve initial (time + 2)) := by
  exact eventually_type_complete_of_anchor_reinjection
    sieve.normalizedKernel initial initial_nonnegative typeOf anchor
    beta delta beta_pos delta_pos initial_mass_pos
    (anchorReinjection_of_raw sieve anchor beta reinject)
    (anchorTypeMinorization_of_raw sieve typeOf anchor delta outgoing)

/-- An absorbing sink of a different type blocks simultaneous positive raw
reinjection and raw anchor-to-type steering. Adding restart mass would change
the sieve and requires a separate mathematical justification. -/
theorem no_positive_raw_anchor_steering_of_absorbing_sink
    (sieve : WeightedSieve Root) (typeOf : Root → Kind)
    (sink other : Root) (different : typeOf sink ≠ typeOf other)
    (absorbing : ∀ target, target ≠ sink → sieve.weight target sink = 0)
    (beta delta : ℚ) (beta_pos : 0 < beta) (delta_pos : 0 < delta) :
    ¬ ∃ anchor : Root,
        RawAnchorReinjection sieve anchor beta ∧
        RawAnchorTypeMinorization sieve typeOf anchor delta := by
  intro rawCertificates
  have normalizedAbsorbing :
      ∀ target, target ≠ sink →
        sieve.normalizedKernel.transition target sink = 0 := by
    intro target target_ne
    change sieve.weight target sink / sieve.columnMass sink = 0
    rw [absorbing target target_ne]
    simp
  apply no_positive_anchor_steering_of_absorbing_sink
    sieve.normalizedKernel typeOf sink other different normalizedAbsorbing
    beta delta beta_pos delta_pos
  obtain ⟨anchor, reinject, outgoing⟩ := rawCertificates
  exact ⟨anchor,
    anchorReinjection_of_raw sieve anchor beta reinject,
    anchorTypeMinorization_of_raw sieve typeOf anchor delta outgoing⟩

end FixedWeightedSieve

namespace WeightedSieveSchedule

variable {Root : Type u} [Fintype Root]

section ScheduledReinjection

variable {Kind : Type v} [Fintype Kind] [DecidableEq Kind]

/-- A raw reinjection step at time `time`, followed by raw anchor-to-type
steering at time `time + 1`, supplies an explicit type-mass floor at time
`time + 2`. The two normalized kernels may be different. -/
theorem type_mass_lower_after_two_scheduled_steps_of_raw_reinjection
    (schedule : WeightedSieveSchedule Root)
    (initial : Root → ℚ) (initial_nonnegative : ∀ root, 0 ≤ initial root)
    (typeOf : Root → Kind) (anchor : Root)
    (time : Nat) (beta delta : ℚ) (delta_nonnegative : 0 ≤ delta)
    (reinject : RawAnchorReinjection
      (schedule.sieve time) anchor beta)
    (outgoing : RawAnchorTypeMinorization
      (schedule.sieve (time + 1)) typeOf anchor delta)
    (kind : Kind) :
    delta * (beta * (∑ root, initial root)) ≤
      aggregate typeOf (schedule.evolve initial (time + 2)) kind := by
  have anchorFloor :
      beta * (∑ root, initial root) ≤
        schedule.evolve initial (time + 1) anchor := by
    change beta * (∑ root, initial root) ≤
      (schedule.sieve time).normalizedKernel.step
        (schedule.evolve initial time) anchor
    have bound := anchor_mass_floor_of_reinjection
      (schedule.sieve time).normalizedKernel
      (schedule.evolve initial time)
      (schedule.evolve_nonnegative initial initial_nonnegative time)
      anchor beta
      (anchorReinjection_of_raw
        (schedule.sieve time) anchor beta reinject)
    rw [schedule.evolve_mass initial time] at bound
    exact bound
  have steering := steering_of_anchor_type_minorization
    (schedule.sieve (time + 1)).normalizedKernel
    (schedule.evolve initial (time + 1))
    (schedule.evolve_nonnegative initial initial_nonnegative (time + 1))
    typeOf anchor delta (beta * (∑ root, initial root))
    (anchorTypeMinorization_of_raw
      (schedule.sieve (time + 1)) typeOf anchor delta outgoing)
    anchorFloor delta_nonnegative
  have typeBound := type_mass_lower_of_steering
    (schedule.sieve (time + 1)).normalizedKernel
    (schedule.evolve initial (time + 1))
    (schedule.evolve_nonnegative initial initial_nonnegative (time + 1))
    typeOf (delta * (beta * (∑ root, initial root))) steering kind
  change delta * (beta * (∑ root, initial root)) ≤
    aggregate typeOf
      ((schedule.sieve (time + 1)).normalizedKernel.step
        (schedule.evolve initial (time + 1))) kind
  exact typeBound

/-- Eventual two-stage steering for a varying weighted-sieve schedule. At each
late time, the first sieve reinjects all source mass into the anchor and the
next sieve steers that anchor into every type. Pointwise positive bounds are
enough for support; no uniform positive infimum is inferred. -/
theorem eventually_type_complete_of_scheduled_raw_anchor_reinjection
    (schedule : WeightedSieveSchedule Root)
    (initial : Root → ℚ) (initial_nonnegative : ∀ root, 0 ≤ initial root)
    (initial_mass_pos : 0 < ∑ root, initial root)
    (typeOf : Root → Kind) (anchor : Root)
    (beta delta : Nat → ℚ) (start : Nat)
    (beta_pos : ∀ time, start ≤ time → 0 < beta time)
    (delta_pos : ∀ time, start ≤ time → 0 < delta time)
    (reinject : ∀ time, start ≤ time →
      RawAnchorReinjection
        (schedule.sieve time) anchor (beta time))
    (outgoing : ∀ time, start ≤ time →
      RawAnchorTypeMinorization
        (schedule.sieve (time + 1)) typeOf anchor (delta time)) :
    ∀ time, start ≤ time →
      TypeCompleteAt typeOf (schedule.evolve initial (time + 2)) := by
  intro time time_ge kind
  exact lt_of_lt_of_le
    (mul_pos (delta_pos time time_ge)
      (mul_pos (beta_pos time time_ge) initial_mass_pos))
    (schedule.type_mass_lower_after_two_scheduled_steps_of_raw_reinjection
      initial initial_nonnegative typeOf anchor time
      (beta time) (delta time) (le_of_lt (delta_pos time time_ge))
      (reinject time time_ge) (outgoing time time_ge) kind)

end ScheduledReinjection

end WeightedSieveSchedule

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.WeightedSieveTypeDiffusion
