/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.Algebra.KTheory.PrimePowerCollisionSearchInventory
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

/-!
# Class-local diffusion for finite prime-power families

This module extends the concrete prime-power collision fixtures to an arbitrary
finite `FinitePrimePowerFamily` equipped with strictly positive target weights
inside every nonempty collision-class fibre.

The resulting raw weighted sieve is block diagonal by arithmetic-radical class.
Each source redistributes its mass inside its own class according to the same
normalized target profile. Class fibres may have different cardinalities and
different positive weights.

The construction proves:

* exact normalized transition weights;
* separate conservation of every collision-class mass;
* an exact one-step formula for each fine state;
* fine-state type completeness at every positive time whenever every class
  initially has positive aggregate mass;
* impossibility of positive global anchor reinjection across a class boundary;
* persistence of the radical/`K₀`-shaped decoding obstruction.

An explicit three-state example has unequal fibre sizes: one class contains the
state `2`, while the other contains `3` and `3^2`. The generic theorem gives
fine-state completeness without an equal-cardinality premise.

This is a finite rational diffusion interface. It proves no cross-class mixing,
asymptotic prime-power distribution, Chowla cancellation, probabilistic graph
sandwich, analytic K-theory realization, zeta-zero operator, or RH implication.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

universe u v

namespace GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyClassDiffusion

open scoped BigOperators
open GRWTSK.Algebra.KTheory.RadicalCollisionBoundary
open GRWTSK.Algebra.KTheory.PrimePowerCollisionSearchInventory
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.WeightedSieveTypeDiffusion

section GenericClassLocalDiffusion

variable {State : Type u} {Class : Type v}
  [Fintype State] [Fintype Class]
  [DecidableEq State] [DecidableEq Class]

/-- Strictly positive target weights on every state, together with an explicit
witness that every declared collision class has a state. No common fibre
cardinality is assumed. -/
structure ClassWeightProfile
    (family : FinitePrimePowerFamily State Class) where
  targetWeight : State → ℚ
  targetWeight_pos : ∀ state, 0 < targetWeight state
  fiber_nonempty : ∀ class, ∃ state, family.classOf state = class

namespace ClassWeightProfile

variable {family : FinitePrimePowerFamily State Class}

/-- Total raw target weight in one declared collision-class fibre. -/
def classMass
    (profile : ClassWeightProfile family) (class : Class) : ℚ :=
  ∑ state, if family.classOf state = class then
    profile.targetWeight state else 0

/-- Every declared class has strictly positive profile mass. This uses only one
positive state witness in the fibre; no cardinality comparison is required. -/
theorem classMass_pos
    (profile : ClassWeightProfile family) (class : Class) :
    0 < profile.classMass class := by
  obtain ⟨state, state_class⟩ := profile.fiber_nonempty class
  unfold classMass
  apply Finset.sum_pos'
  · intro candidate _
    by_cases candidate_class : family.classOf candidate = class
    · simpa [candidate_class] using
        (le_of_lt (profile.targetWeight_pos candidate))
    · simp [candidate_class]
  · refine ⟨state, Finset.mem_univ state, ?_⟩
    simpa [state_class] using profile.targetWeight_pos state

/-- Raw class-local sieve: a source sends weight only to targets in its own
collision class, according to the supplied positive target profile. -/
def classLocalSieve
    (profile : ClassWeightProfile family) : WeightedSieve State where
  weight := fun target source =>
    if family.classOf target = family.classOf source then
      profile.targetWeight target
    else 0
  nonnegative := by
    intro target source
    by_cases sameClass :
        family.classOf target = family.classOf source
    · simpa [sameClass] using
        (le_of_lt (profile.targetWeight_pos target))
    · simp [sameClass]
  positiveColumnMass := by
    intro source
    change 0 < ∑ target,
      if family.classOf target = family.classOf source then
        profile.targetWeight target
      else 0
    exact profile.classMass_pos (family.classOf source)

/-- A raw source column has exactly the total profile mass of its class. -/
@[simp]
theorem classLocalSieve_columnMass
    (profile : ClassWeightProfile family) (source : State) :
    profile.classLocalSieve.columnMass source =
      profile.classMass (family.classOf source) := by
  rfl

/-- Exact normalized class-local transition. Fibre cardinalities need not agree:
the denominator is the actual positive profile mass of the source class. -/
@[simp]
theorem classLocalSieve_normalized_transition
    (profile : ClassWeightProfile family) (target source : State) :
    profile.classLocalSieve.normalizedKernel.transition target source =
      if family.classOf target = family.classOf source then
        profile.targetWeight target /
          profile.classMass (family.classOf source)
      else 0 := by
  rw [WeightedSieve.normalizedKernel_transition,
    profile.classLocalSieve_columnMass]
  by_cases sameClass :
      family.classOf target = family.classOf source <;>
    simp [classLocalSieve, sameClass]

/-- A normalized transition is positive exactly inside one collision class. -/
theorem classLocalSieve_transition_pos_iff
    (profile : ClassWeightProfile family) (target source : State) :
    0 < profile.classLocalSieve.normalizedKernel.transition target source ↔
      family.classOf target = family.classOf source := by
  by_cases sameClass :
      family.classOf target = family.classOf source
  · simp [profile.classLocalSieve_normalized_transition, sameClass,
      div_pos (profile.targetWeight_pos target)
        (profile.classMass_pos (family.classOf source))]
  · simp [profile.classLocalSieve_normalized_transition, sameClass]

/-- Cross-class normalized transitions vanish exactly. -/
theorem classLocalSieve_transition_eq_zero_of_class_ne
    (profile : ClassWeightProfile family) {target source : State}
    (different :
      family.classOf target ≠ family.classOf source) :
    profile.classLocalSieve.normalizedKernel.transition target source = 0 := by
  simp [profile.classLocalSieve_normalized_transition, different]

/-- For one source, the normalized transition mass entering a selected class is
one for its own class and zero for every other class. -/
theorem transition_sum_over_class
    (profile : ClassWeightProfile family) (source : State) (class : Class) :
    (∑ target,
      if family.classOf target = class then
        profile.classLocalSieve.normalizedKernel.transition target source
      else 0) =
      if family.classOf source = class then 1 else 0 := by
  by_cases source_class : family.classOf source = class
  · rw [if_pos source_class]
    calc
      (∑ target,
        if family.classOf target = class then
          profile.classLocalSieve.normalizedKernel.transition target source
        else 0) =
          ∑ target,
            (if family.classOf target = class then
              profile.targetWeight target
            else 0) / profile.classMass class := by
              apply Finset.sum_congr rfl
              intro target _
              by_cases target_class : family.classOf target = class
              · have sameClass :
                    family.classOf target = family.classOf source :=
                  target_class.trans source_class.symm
                simp [target_class,
                  profile.classLocalSieve_normalized_transition,
                  sameClass, source_class]
              · simp [target_class]
      _ = profile.classMass class / profile.classMass class := by
            rw [← Finset.sum_div]
            rfl
      _ = 1 := div_self (ne_of_gt (profile.classMass_pos class))
  · rw [if_neg source_class]
    apply Finset.sum_eq_zero
    intro target _
    by_cases target_class : family.classOf target = class
    · have different :
          family.classOf target ≠ family.classOf source := by
        intro sameClass
        apply source_class
        exact sameClass.symm.trans target_class
      simp [target_class,
        profile.classLocalSieve_normalized_transition, different]
    · simp [target_class]

/-- Every class aggregate is conserved by one class-local diffusion step. This
is stronger than total mass conservation and does not require equal fibres. -/
theorem classMass_step_eq
    (profile : ClassWeightProfile family)
    (heat : State → ℚ) (class : Class) :
    aggregate family.classOf
        (profile.classLocalSieve.normalizedKernel.step heat) class =
      aggregate family.classOf heat class := by
  unfold aggregate HeatKernel.step
  calc
    (∑ target,
      if family.classOf target = class then
        ∑ source,
          profile.classLocalSieve.normalizedKernel.transition target source *
            heat source
      else 0) =
        ∑ target, ∑ source,
          (if family.classOf target = class then
            profile.classLocalSieve.normalizedKernel.transition target source
          else 0) * heat source := by
            apply Finset.sum_congr rfl
            intro target _
            by_cases target_class : family.classOf target = class <;>
              simp [target_class]
    _ = ∑ source, ∑ target,
          (if family.classOf target = class then
            profile.classLocalSieve.normalizedKernel.transition target source
          else 0) * heat source := by
            rw [Finset.sum_comm]
    _ = ∑ source,
          (∑ target,
            if family.classOf target = class then
              profile.classLocalSieve.normalizedKernel.transition target source
            else 0) * heat source := by
              apply Finset.sum_congr rfl
              intro source _
              rw [← Finset.sum_mul]
    _ = ∑ source,
          (if family.classOf source = class then 1 else 0) *
            heat source := by
              apply Finset.sum_congr rfl
              intro source _
              rw [profile.transition_sum_over_class source class]
    _ = ∑ source,
          if family.classOf source = class then heat source else 0 := by
              apply Finset.sum_congr rfl
              intro source _
              by_cases source_class : family.classOf source = class <;>
                simp [source_class]
    _ = aggregate family.classOf heat class := by
          rfl

/-- Every finite iterate preserves each collision-class mass separately. -/
theorem classMass_evolve_eq
    (profile : ClassWeightProfile family)
    (initial : State → ℚ) (time : ℕ) (class : Class) :
    aggregate family.classOf
        (profile.classLocalSieve.normalizedKernel.evolve initial time) class =
      aggregate family.classOf initial class := by
  induction time with
  | zero =>
      rfl
  | succ time previous =>
      change aggregate family.classOf
          (profile.classLocalSieve.normalizedKernel.step
            (profile.classLocalSieve.normalizedKernel.evolve initial time))
          class =
        aggregate family.classOf initial class
      rw [profile.classMass_step_eq, previous]

/-- Exact state-level update formula: the new heat at a target is its normalized
profile weight times the previous total mass of the target's class. -/
theorem step_eq_weightFraction_mul_classMass
    (profile : ClassWeightProfile family)
    (heat : State → ℚ) (target : State) :
    profile.classLocalSieve.normalizedKernel.step heat target =
      (profile.targetWeight target /
        profile.classMass (family.classOf target)) *
      aggregate family.classOf heat (family.classOf target) := by
  unfold HeatKernel.step aggregate
  calc
    (∑ source,
      profile.classLocalSieve.normalizedKernel.transition target source *
        heat source) =
      ∑ source,
        (profile.targetWeight target /
          profile.classMass (family.classOf target)) *
        (if family.classOf source = family.classOf target then
          heat source
        else 0) := by
          apply Finset.sum_congr rfl
          intro source _
          by_cases source_class :
              family.classOf source = family.classOf target
          · have sameClass :
                family.classOf target = family.classOf source :=
              source_class.symm
            simp [profile.classLocalSieve_normalized_transition,
              source_class, sameClass]
          · have different :
                family.classOf target ≠ family.classOf source := by
              intro sameClass
              exact source_class sameClass.symm
            simp [profile.classLocalSieve_normalized_transition,
              source_class, different]
    _ = (profile.targetWeight target /
          profile.classMass (family.classOf target)) *
        (∑ source,
          if family.classOf source = family.classOf target then
            heat source
          else 0) := by
            rw [← Finset.mul_sum]
    _ = (profile.targetWeight target /
          profile.classMass (family.classOf target)) *
        aggregate family.classOf heat (family.classOf target) := by
          rfl

/-- Class-type completeness is exactly preserved by one step. -/
theorem classTypeComplete_step_iff
    (profile : ClassWeightProfile family) (heat : State → ℚ) :
    TypeCompleteAt family.classOf
        (profile.classLocalSieve.normalizedKernel.step heat) ↔
      TypeCompleteAt family.classOf heat := by
  constructor
  · intro complete class
    simpa [profile.classMass_step_eq heat class] using complete class
  · intro complete class
    simpa [profile.classMass_step_eq heat class] using complete class

/-- Class-type completeness is exactly preserved by every finite iterate. -/
theorem classTypeComplete_evolve_iff
    (profile : ClassWeightProfile family)
    (initial : State → ℚ) (time : ℕ) :
    TypeCompleteAt family.classOf
        (profile.classLocalSieve.normalizedKernel.evolve initial time) ↔
      TypeCompleteAt family.classOf initial := by
  constructor
  · intro complete class
    simpa [profile.classMass_evolve_eq initial time class] using
      complete class
  · intro complete class
    simpa [profile.classMass_evolve_eq initial time class] using
      complete class

/-- Positive aggregate mass in every class gives positive heat at every fine
state after one class-local reset step. -/
theorem fineTypeComplete_after_step_of_classTypeComplete
    (profile : ClassWeightProfile family)
    (heat : State → ℚ)
    (classComplete : TypeCompleteAt family.classOf heat) :
    TypeCompleteAt (fun state : State => state)
      (profile.classLocalSieve.normalizedKernel.step heat) := by
  intro target
  have target_pos :
      0 <
        profile.classLocalSieve.normalizedKernel.step heat target := by
    rw [profile.step_eq_weightFraction_mul_classMass heat target]
    exact mul_pos
      (div_pos (profile.targetWeight_pos target)
        (profile.classMass_pos (family.classOf target)))
      (classComplete (family.classOf target))
  simpa [aggregate] using target_pos

/-- If every collision class initially has positive aggregate mass, every fine
state has positive heat at every positive finite diffusion time. -/
theorem fineTypeComplete_all_positive_times
    (profile : ClassWeightProfile family)
    (initial : State → ℚ)
    (initialClassComplete : TypeCompleteAt family.classOf initial) :
    ∀ time : ℕ,
      TypeCompleteAt (fun state : State => state)
        (profile.classLocalSieve.normalizedKernel.evolve initial (time + 1)) := by
  intro time
  change TypeCompleteAt (fun state : State => state)
    (profile.classLocalSieve.normalizedKernel.step
      (profile.classLocalSieve.normalizedKernel.evolve initial time))
  apply profile.fineTypeComplete_after_step_of_classTypeComplete
  intro class
  rw [profile.classMass_evolve_eq initial time class]
  exact initialClassComplete class

/-- A source in another class obstructs every strictly positive global anchor
reinjection bound. -/
theorem no_positive_anchor_reinjection_from_other_class
    (profile : ClassWeightProfile family)
    (anchor source : State)
    (different :
      family.classOf anchor ≠ family.classOf source)
    (beta : ℚ) (beta_pos : 0 < beta) :
    ¬ RawAnchorReinjection profile.classLocalSieve anchor beta := by
  intro reinject
  have bound := reinject source
  have raw_zero :
      profile.classLocalSieve.weight anchor source = 0 := by
    simp [classLocalSieve, different]
  have nonpositive :
      beta * profile.classLocalSieve.columnMass source ≤ 0 := by
    simpa [raw_zero] using bound
  have positive :
      0 < beta * profile.classLocalSieve.columnMass source :=
    mul_pos beta_pos
      (profile.classLocalSieve.columnMass_pos source)
  exact (not_lt_of_ge nonpositive) positive

/-- A same-class collision of distinct fine states prevents exact decoding from
the paired radical and radical-factored universal `K₀`-shaped feature. -/
theorem no_exact_feature_decoder_of_class_collision
    (profile : ClassWeightProfile family)
    {M : Type*} [CommMonoid M] (lift : ℕ →* M)
    {first second : State}
    (sameClass :
      family.classOf first = family.classOf second)
    (different : first ≠ second) :
    ¬ ∃ decode : GrothendieckKZero M × ℕ → State,
        ∀ state : State,
          decode
              (kZeroRadical lift (family.value state),
                Nat.radical (family.value state)) = state := by
  rintro ⟨decode, correct⟩
  have sameK :
      kZeroRadical lift (family.value first) =
        kZeroRadical lift (family.value second) :=
    family.kZero_eq_of_class_eq lift sameClass
  have sameRadical :
      Nat.radical (family.value first) =
        Nat.radical (family.value second) :=
    (family.radical_eq_iff_class_eq first second).2 sameClass
  apply different
  calc
    first =
        decode
          (kZeroRadical lift (family.value first),
            Nat.radical (family.value first)) := (correct first).symm
    _ = decode
          (kZeroRadical lift (family.value second),
            Nat.radical (family.value second)) :=
      congrArg decode (Prod.ext sameK sameRadical)
    _ = second := correct second

end ClassWeightProfile

end GenericClassLocalDiffusion

/-! ## Unequal-fibre concrete witness -/

namespace UnequalFiberExample

/-- Three fine states: `2`, `3`, and `3^2`. -/
abbrev UnequalState := Fin 3

/-- Two collision classes, with fibre sizes one and two. -/
abbrev UnequalClass := Fin 2

/-- State zero is the singleton class of two; states one and two are powers of
three in the second class. -/
def classOf (state : UnequalState) : UnequalClass :=
  if state = 0 then 0 else 1

/-- Arithmetic interpretation `2`, `3`, `3^2`. -/
def value (state : UnequalState) : ℕ :=
  if state = 0 then 2
  else if state = 1 then 3
  else 3 ^ 2

/-- Prime base for each collision class. -/
def base (class : UnequalClass) : ℕ :=
  if class = 0 then 2 else 3

/-- Positive exponent for each fine state. -/
def exponent (state : UnequalState) : ℕ :=
  if state = 2 then 2 else 1

/-- Explicit unequal-fibre prime-power family. -/
def family :
    FinitePrimePowerFamily UnequalState UnequalClass where
  base := base
  exponent := exponent
  classOf := classOf
  value := value
  base_prime := by
    intro class
    fin_cases class <;> norm_num [base]
  exponent_ne_zero := by
    intro state
    fin_cases state <;> norm_num [exponent]
  value_eq_pow := by
    intro state
    fin_cases state <;>
      norm_num [value, classOf, base, exponent]
  radical_eq_iff_class_eq := by
    intro source target
    fin_cases source <;> fin_cases target <;>
      norm_num [value, classOf, Nat.radical_eq_prod_primeFactors]

/-- Unit target weights. The class normalizers are determined by the actual
unequal fibre masses rather than a common cardinality. -/
def unitProfile : ClassWeightProfile family where
  targetWeight := fun _ => 1
  targetWeight_pos := by
    intro state
    norm_num
  fiber_nonempty := by
    intro class
    fin_cases class
    · exact ⟨0, by simp [family, classOf]⟩
    · exact ⟨1, by simp [family, classOf]⟩

/-- Initial mass places one half in each class, but only on one representative
of the two-state class. -/
def initialHeat (state : UnequalState) : ℚ :=
  if state = 0 then 1 / 2
  else if state = 1 then 1 / 2
  else 0

/-- Both unequal collision classes initially have positive aggregate mass. -/
theorem initialClassComplete :
    TypeCompleteAt family.classOf initialHeat := by
  intro class
  fin_cases class <;>
    norm_num [aggregate, family, classOf, initialHeat, Fin.sum_univ_three]

/-- The generic unequal-fibre theorem gives positive heat to every fine state at
all positive finite times. -/
theorem fineTypeComplete_all_positive_times :
    ∀ time : ℕ,
      TypeCompleteAt (fun state : UnequalState => state)
        (unitProfile.classLocalSieve.normalizedKernel.evolve
          initialHeat (time + 1)) :=
  unitProfile.fineTypeComplete_all_positive_times
    initialHeat initialClassComplete

/-- There is no single positive reinjection anchor across the two unequal
collision classes. -/
theorem no_positive_global_anchor_reinjection
    (beta : ℚ) (beta_pos : 0 < beta) :
    ¬ ∃ anchor : UnequalState,
        RawAnchorReinjection unitProfile.classLocalSieve anchor beta := by
  rintro ⟨anchor, reinject⟩
  fin_cases anchor
  · exact unitProfile.no_positive_anchor_reinjection_from_other_class
      0 1 (by simp [family, classOf]) beta beta_pos reinject
  · exact unitProfile.no_positive_anchor_reinjection_from_other_class
      1 0 (by simp [family, classOf]) beta beta_pos reinject
  · exact unitProfile.no_positive_anchor_reinjection_from_other_class
      2 0 (by simp [family, classOf]) beta beta_pos reinject

/-- Fine-state diffusion completeness coexists with failure of exact decoding
from the coarse radical/`K₀`-shaped feature on the `3` versus `3^2` collision. -/
theorem diffusion_complete_but_feature_not_decodable
    {M : Type*} [CommMonoid M] (lift : ℕ →* M) :
    (∀ time : ℕ,
      TypeCompleteAt (fun state : UnequalState => state)
        (unitProfile.classLocalSieve.normalizedKernel.evolve
          initialHeat (time + 1))) ∧
    ¬ ∃ decode : GrothendieckKZero M × ℕ → UnequalState,
        ∀ state : UnequalState,
          decode
              (kZeroRadical lift (family.value state),
                Nat.radical (family.value state)) = state := by
  refine ⟨fineTypeComplete_all_positive_times, ?_⟩
  exact unitProfile.no_exact_feature_decoder_of_class_collision
    lift (first := (1 : UnequalState)) (second := (2 : UnequalState))
    (by simp [family, classOf]) (by decide)

end UnequalFiberExample

end GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyClassDiffusion
