/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

/-!
# Weighted-sieve normalization and asymptotic type steering

This module converts an explicitly supplied finite nonnegative rational
weighted sieve into the existing column-stochastic `RootHeatState.HeatKernel`.

The first index of a sieve weight is the target and the second is the source.
Every source column is required to have strictly positive total weight. Column
normalization is therefore exact and preserves the supplied support.

A raw representative minorization is stated before normalization:

`delta * columnMass source ≤ weight target source`.

It supplies the existing normalized representative-minorization predicate and
therefore positive aggregate heat in every declared type. A time-dependent
schedule gives eventual type completeness whenever each sufficiently late
weighted sieve has a positive type-representative minorization.

This is a finite rational diffusion theorem. It does not prove that signed
Möbius weights are nonnegative, that an arithmetic sieve supplies the
minorization, that K₀-shaped/radical features separate exact source types, or
that positive type mass implies state, transition, or sofic-language
completeness.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED /
ARITHMETIC_MINORISATION_SUPPLIER_OPEN.
-/

universe u v

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.WeightedSieveTypeDiffusion

open scoped BigOperators
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState

/-- A finite nonnegative rational weighted sieve with positive mass in every
source column. No arithmetic construction of the weights is hidden here. -/
structure WeightedSieve (Root : Type u) [Fintype Root] where
  weight : Root → Root → ℚ
  nonnegative : ∀ target source, 0 ≤ weight target source
  positiveColumnMass : ∀ source, 0 < ∑ target, weight target source

namespace WeightedSieve

variable {Root : Type u} [Fintype Root]

/-- Total outgoing raw sieve mass from one source. -/
def columnMass (sieve : WeightedSieve Root) (source : Root) : ℚ :=
  ∑ target, sieve.weight target source

theorem columnMass_pos (sieve : WeightedSieve Root) (source : Root) :
    0 < sieve.columnMass source :=
  sieve.positiveColumnMass source

/-- Normalize every positive source column to obtain the existing exact
rational heat-kernel interface. -/
def normalizedKernel (sieve : WeightedSieve Root) : HeatKernel Root where
  transition := fun target source =>
    sieve.weight target source / sieve.columnMass source
  nonnegative := by
    intro target source
    exact div_nonneg (sieve.nonnegative target source)
      (le_of_lt (sieve.columnMass_pos source))
  stochastic := by
    intro source
    change
      (∑ target, sieve.weight target source / sieve.columnMass source) = 1
    rw [← Finset.sum_div]
    exact div_self (ne_of_gt (sieve.columnMass_pos source))

@[simp]
theorem normalizedKernel_transition
    (sieve : WeightedSieve Root) (target source : Root) :
    sieve.normalizedKernel.transition target source =
      sieve.weight target source / sieve.columnMass source :=
  rfl

end WeightedSieve

section TypeMinorization

variable {Root : Type u} {Kind : Type v}
  [Fintype Root] [Fintype Kind] [DecidableEq Kind]

/-- Raw weighted-sieve comparison sufficient for one normalized representative
destination in every declared type. -/
def RawRepresentativeMinorization
    (sieve : WeightedSieve Root) (typeOf : Root → Kind) (delta : ℚ) : Prop :=
  ∀ kind, ∃ target, typeOf target = kind ∧
    ∀ source, delta * sieve.columnMass source ≤
      sieve.weight target source

/-- Raw column-mass comparison transports exactly to the existing normalized
representative minorization predicate. -/
theorem representativeMinorization_of_raw
    (sieve : WeightedSieve Root) (typeOf : Root → Kind) (delta : ℚ)
    (minor : RawRepresentativeMinorization sieve typeOf delta) :
    RepresentativeMinorization sieve.normalizedKernel typeOf delta := by
  intro kind
  obtain ⟨target, targetType, rawBound⟩ := minor kind
  refine ⟨target, targetType, ?_⟩
  intro source
  change delta ≤ sieve.weight target source / sieve.columnMass source
  exact (le_div_iff₀ (sieve.columnMass_pos source)).2 (rawBound source)

/-- A positive raw representative lower bound gives positive next-step mass in
every declared type for every nonnegative positive-mass heat state. -/
theorem type_complete_after_weighted_sieve_step
    (sieve : WeightedSieve Root)
    (heat : Root → ℚ) (heat_nonnegative : ∀ root, 0 ≤ heat root)
    (typeOf : Root → Kind)
    (delta : ℚ) (delta_pos : 0 < delta)
    (heat_mass_pos : 0 < ∑ root, heat root)
    (minor : RawRepresentativeMinorization sieve typeOf delta) :
    TypeCompleteAt typeOf (sieve.normalizedKernel.step heat) := by
  exact type_complete_of_representative_minorization
    sieve.normalizedKernel heat heat_nonnegative typeOf
    delta delta_pos heat_mass_pos
    (representativeMinorization_of_raw sieve typeOf delta minor)

/-- A missing type label rules out every raw representative minorization,
irrespective of the numerical weights. -/
theorem no_raw_representative_minorization_of_missing_type
    (sieve : WeightedSieve Root) (typeOf : Root → Kind)
    (delta : ℚ) (missing : Kind)
    (absent : ∀ root, typeOf root ≠ missing) :
    ¬ RawRepresentativeMinorization sieve typeOf delta := by
  intro minor
  obtain ⟨target, targetType, _⟩ := minor missing
  exact absent target targetType

end TypeMinorization

/-- A time-indexed family of finite weighted sieves. -/
structure WeightedSieveSchedule (Root : Type u) [Fintype Root] where
  sieve : Nat → WeightedSieve Root

namespace WeightedSieveSchedule

variable {Root : Type u} [Fintype Root]

/-- The normalized stochastic kernel used at one schedule time. -/
def kernelAt (schedule : WeightedSieveSchedule Root) (time : Nat) :
    HeatKernel Root :=
  (schedule.sieve time).normalizedKernel

/-- Varying-kernel diffusion generated by a weighted-sieve schedule. -/
def evolve (schedule : WeightedSieveSchedule Root)
    (initial : Root → ℚ) : Nat → Root → ℚ
  | 0 => initial
  | time + 1 =>
      (schedule.kernelAt time).step (schedule.evolve initial time)

theorem evolve_nonnegative
    (schedule : WeightedSieveSchedule Root)
    (initial : Root → ℚ) (initial_nonnegative : ∀ root, 0 ≤ initial root)
    (time : Nat) :
    ∀ root, 0 ≤ schedule.evolve initial time root := by
  induction time with
  | zero =>
      exact initial_nonnegative
  | succ time previous =>
      exact (schedule.kernelAt time).step_nonneg
        (schedule.evolve initial time) previous

/-- Every normalized weighted-sieve step preserves total heat exactly. -/
theorem evolve_mass
    (schedule : WeightedSieveSchedule Root)
    (initial : Root → ℚ) (time : Nat) :
    ∑ root, schedule.evolve initial time root =
      ∑ root, initial root := by
  induction time with
  | zero =>
      rfl
  | succ time previous =>
      exact ((schedule.kernelAt time).step_mass
        (schedule.evolve initial time)).trans previous

section TypeSteering

variable {Kind : Type v} [Fintype Kind] [DecidableEq Kind]

/-- Pointwise positive asymptotic steering: after `start`, each actual weighted
sieve has its own positive representative lower bound. No uniform positive
infimum over time is required merely to prove positive type support. -/
theorem eventually_type_complete_of_weighted_sieve_steering
    (schedule : WeightedSieveSchedule Root)
    (initial : Root → ℚ) (initial_nonnegative : ∀ root, 0 ≤ initial root)
    (initial_mass_pos : 0 < ∑ root, initial root)
    (typeOf : Root → Kind)
    (delta : Nat → ℚ) (start : Nat)
    (delta_pos : ∀ time, start ≤ time → 0 < delta time)
    (steering : ∀ time, start ≤ time →
      RawRepresentativeMinorization
        (schedule.sieve time) typeOf (delta time)) :
    ∀ time, start ≤ time →
      TypeCompleteAt typeOf (schedule.evolve initial (time + 1)) := by
  intro time time_ge
  change TypeCompleteAt typeOf
    ((schedule.sieve time).normalizedKernel.step
      (schedule.evolve initial time))
  apply type_complete_after_weighted_sieve_step
    (schedule.sieve time)
    (schedule.evolve initial time)
    (schedule.evolve_nonnegative initial initial_nonnegative time)
    typeOf (delta time) (delta_pos time time_ge)
  · rw [schedule.evolve_mass initial time]
    exact initial_mass_pos
  · exact steering time time_ge

/-- A common positive lower bound is a convenient stronger supplier for the
pointwise asymptotic steering theorem. -/
theorem eventually_type_complete_of_uniform_weighted_sieve_steering
    (schedule : WeightedSieveSchedule Root)
    (initial : Root → ℚ) (initial_nonnegative : ∀ root, 0 ≤ initial root)
    (initial_mass_pos : 0 < ∑ root, initial root)
    (typeOf : Root → Kind)
    (delta : ℚ) (delta_pos : 0 < delta) (start : Nat)
    (steering : ∀ time, start ≤ time →
      RawRepresentativeMinorization
        (schedule.sieve time) typeOf delta) :
    ∀ time, start ≤ time →
      TypeCompleteAt typeOf (schedule.evolve initial (time + 1)) := by
  exact eventually_type_complete_of_weighted_sieve_steering
    schedule initial initial_nonnegative initial_mass_pos typeOf
    (fun _ => delta) start
    (fun _ _ => delta_pos) steering

end TypeSteering

end WeightedSieveSchedule

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.WeightedSieveTypeDiffusion
