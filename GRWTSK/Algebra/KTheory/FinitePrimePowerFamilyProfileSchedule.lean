/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyCastBridge
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

/-!
# Time-varying class profiles for finite prime-power diffusion

This module replaces one fixed positive class-local profile by a schedule of
profiles. At time `t`, the rational diffusion uses the normalized weighted sieve
attached to `profile t`; the real search evolution uses the corresponding
source-to-target Markov orientation.

The construction proves:

* exact conservation of every collision-class mass for the varying rational
  evolution;
* an exact state formula at every scheduled step;
* exact rational-to-real cast compatibility at every finite time;
* exact equality between real scheduled type mass and cast rational aggregate
  heat;
* fine-state type completeness at every positive time from positive initial
  mass in every collision class;
* eventual quantitative lower floors from an explicit normalized-profile floor
  and an explicit initial class-mass floor.

No quantitative floor is inferred merely from pointwise positivity. The profile
fractions may approach zero with time unless a time-uniform late floor is
supplied. Every scheduled kernel remains block diagonal by collision class, so
no cross-class restart, teleportation, mixing, spectral gap, convergence,
Chowla cancellation, Kim--Vu coupling, zeta-zero operator, Riemann-hypothesis
consequence, or compression estimate is asserted.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

universe u v w

namespace GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyProfileSchedule

open scoped BigOperators
open GRWTSK.Algebra.KTheory.PrimePowerCollisionSearchInventory
open GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyClassDiffusion
open GRWTSK.Algebra.KTheory.FinitePrimePowerFamilySearchDiffusion
open GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyCastBridge
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.WeightedSieveTypeDiffusion
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.WeightedSieveAnchorReinjection
open GRWTSK.GraphSandwichDiffusion

section GenericProfileSchedule

variable {State : Type u} {Class : Type v}
  [Fintype State] [Fintype Class]
  [DecidableEq State] [DecidableEq Class]

/-- A time-indexed family of strictly positive class-local target profiles for
one fixed finite prime-power family. -/
structure ClassProfileSchedule
    (family : FinitePrimePowerFamily State Class) where
  profile : Nat → ClassWeightProfile family

namespace ClassProfileSchedule

variable {family : FinitePrimePowerFamily State Class}

/-- The rational class-local heat kernel used at one schedule time. -/
def rationalKernelAt
    (schedule : ClassProfileSchedule family) (time : Nat) :
    HeatKernel State :=
  (schedule.profile time).classLocalSieve.normalizedKernel

/-- The real source-to-target search kernel used at one schedule time. -/
def realKernelAt
    (schedule : ClassProfileSchedule family) (time : Nat) :
    FiniteSieveMarkovKernel State :=
  (schedule.profile time).searchKernel

/-- Time-varying rational class-local diffusion. -/
def rationalEvolve
    (schedule : ClassProfileSchedule family)
    (initial : State → ℚ) : Nat → State → ℚ
  | 0 => initial
  | time + 1 =>
      (schedule.rationalKernelAt time).step
        (schedule.rationalEvolve initial time)

/-- Time-varying real search-kernel diffusion. -/
def realEvolve
    (schedule : ClassProfileSchedule family)
    (initial : State → ℝ) : Nat → State → ℝ
  | 0 => initial
  | time + 1 =>
      (schedule.realKernelAt time).step
        (schedule.realEvolve initial time)

/-- Scheduled real mass in one fibre of a finite type classifier. -/
def realTypeMass
    {TypeLabel : Type w} [Fintype TypeLabel] [DecidableEq TypeLabel]
    (schedule : ClassProfileSchedule family)
    (initial : State → ℝ) (typeOf : State → TypeLabel)
    (time : Nat) (targetType : TypeLabel) : ℝ :=
  ∑ state, if typeOf state = targetType then
    schedule.realEvolve initial time state
  else 0

/-- Normalized target fraction used by the profile at one time. -/
def profileFraction
    (schedule : ClassProfileSchedule family)
    (time : Nat) (state : State) : ℚ :=
  (schedule.profile time).targetWeight state /
    (schedule.profile time).classMass (family.classOf state)

@[simp]
theorem rationalKernelAt_transition
    (schedule : ClassProfileSchedule family)
    (time : Nat) (target source : State) :
    (schedule.rationalKernelAt time).transition target source =
      (schedule.profile time).classLocalSieve.normalizedKernel.transition
        target source :=
  rfl

@[simp]
theorem realKernelAt_transition
    (schedule : ClassProfileSchedule family)
    (time : Nat) (source target : State) :
    (schedule.realKernelAt time).transition source target =
      ((schedule.rationalKernelAt time).transition target source : ℝ) :=
  rfl

@[simp]
theorem rationalEvolve_zero
    (schedule : ClassProfileSchedule family)
    (initial : State → ℚ) :
    schedule.rationalEvolve initial 0 = initial :=
  rfl

@[simp]
theorem rationalEvolve_succ
    (schedule : ClassProfileSchedule family)
    (initial : State → ℚ) (time : Nat) :
    schedule.rationalEvolve initial (time + 1) =
      (schedule.rationalKernelAt time).step
        (schedule.rationalEvolve initial time) :=
  rfl

@[simp]
theorem realEvolve_zero
    (schedule : ClassProfileSchedule family)
    (initial : State → ℝ) :
    schedule.realEvolve initial 0 = initial :=
  rfl

@[simp]
theorem realEvolve_succ
    (schedule : ClassProfileSchedule family)
    (initial : State → ℝ) (time : Nat) :
    schedule.realEvolve initial (time + 1) =
      (schedule.realKernelAt time).step
        (schedule.realEvolve initial time) :=
  rfl

/-- Every profile fraction is strictly positive. This is pointwise positivity,
not a time-uniform lower floor. -/
theorem profileFraction_pos
    (schedule : ClassProfileSchedule family)
    (time : Nat) (state : State) :
    0 < schedule.profileFraction time state := by
  exact div_pos
    ((schedule.profile time).targetWeight_pos state)
    ((schedule.profile time).classMass_pos (family.classOf state))

/-- Varying rational diffusion preserves nonnegativity. -/
theorem rationalEvolve_nonnegative
    (schedule : ClassProfileSchedule family)
    (initial : State → ℚ)
    (initial_nonnegative : ∀ state, 0 ≤ initial state) :
    ∀ time state, 0 ≤ schedule.rationalEvolve initial time state := by
  intro time
  induction time with
  | zero =>
      exact initial_nonnegative
  | succ time previous =>
      exact (schedule.rationalKernelAt time).step_nonneg
        (schedule.rationalEvolve initial time) previous

/-- Every scheduled rational step preserves total mass. -/
theorem rationalEvolve_totalMass
    (schedule : ClassProfileSchedule family)
    (initial : State → ℚ) (time : Nat) :
    ∑ state, schedule.rationalEvolve initial time state =
      ∑ state, initial state := by
  induction time with
  | zero =>
      rfl
  | succ time previous =>
      exact ((schedule.rationalKernelAt time).step_mass
        (schedule.rationalEvolve initial time)).trans previous

/-- Every collision-class aggregate is conserved by the time-varying schedule. -/
theorem rationalEvolve_classMass
    (schedule : ClassProfileSchedule family)
    (initial : State → ℚ) (time : Nat) (class : Class) :
    aggregate family.classOf
        (schedule.rationalEvolve initial time) class =
      aggregate family.classOf initial class := by
  induction time with
  | zero =>
      rfl
  | succ time previous =>
      change aggregate family.classOf
          ((schedule.profile time).classLocalSieve.normalizedKernel.step
            (schedule.rationalEvolve initial time)) class =
        aggregate family.classOf initial class
      rw [(schedule.profile time).classMass_step_eq
        (schedule.rationalEvolve initial time) class, previous]

/-- Exact scheduled state update: the current normalized profile fraction is
multiplied by the initial mass of the target's collision class. -/
theorem rationalEvolve_succ_eq_profileFraction_mul_initialClassMass
    (schedule : ClassProfileSchedule family)
    (initial : State → ℚ) (time : Nat) (target : State) :
    schedule.rationalEvolve initial (time + 1) target =
      schedule.profileFraction time target *
        aggregate family.classOf initial (family.classOf target) := by
  change
    (schedule.profile time).classLocalSieve.normalizedKernel.step
        (schedule.rationalEvolve initial time) target =
      schedule.profileFraction time target *
        aggregate family.classOf initial (family.classOf target)
  rw [(schedule.profile time).step_eq_weightFraction_mul_classMass
    (schedule.rationalEvolve initial time) target]
  rw [schedule.rationalEvolve_classMass initial time
    (family.classOf target)]
  rfl

/-- Positive initial mass in every collision class gives positive rational heat
at every fine state after every positive number of scheduled steps. -/
theorem rationalFineTypeComplete_all_positive_times
    (schedule : ClassProfileSchedule family)
    (initial : State → ℚ)
    (initialClassComplete :
      TypeCompleteAt family.classOf initial) :
    ∀ time : Nat,
      TypeCompleteAt (fun state : State => state)
        (schedule.rationalEvolve initial (time + 1)) := by
  intro time target
  have pointPositive :
      0 < schedule.rationalEvolve initial (time + 1) target := by
    rw [schedule.rationalEvolve_succ_eq_profileFraction_mul_initialClassMass
      initial time target]
    exact mul_pos
      (schedule.profileFraction_pos time target)
      (initialClassComplete (family.classOf target))
  simpa [aggregate] using pointPositive

/-- A zero initial collision-class aggregate remains exactly zero at every
scheduled time. Changing the profile cannot manufacture class mass. -/
theorem rationalClassMass_eq_zero_of_initial_eq_zero
    (schedule : ClassProfileSchedule family)
    (initial : State → ℚ) (class : Class)
    (initial_zero :
      aggregate family.classOf initial class = 0) :
    ∀ time : Nat,
      aggregate family.classOf
        (schedule.rationalEvolve initial time) class = 0 := by
  intro time
  rw [schedule.rationalEvolve_classMass initial time class, initial_zero]

/-- Every scheduled rational transition across distinct collision classes is
exactly zero. -/
theorem rationalTransition_eq_zero_of_class_ne
    (schedule : ClassProfileSchedule family)
    (time : Nat) {target source : State}
    (different :
      family.classOf target ≠ family.classOf source) :
    (schedule.rationalKernelAt time).transition target source = 0 := by
  exact (schedule.profile time).classLocalSieve_transition_eq_zero_of_class_ne
    different

/-- Every scheduled real transition across distinct collision classes is
exactly zero. -/
theorem realTransition_eq_zero_of_class_ne
    (schedule : ClassProfileSchedule family)
    (time : Nat) {source target : State}
    (different :
      family.classOf source ≠ family.classOf target) :
    (schedule.realKernelAt time).transition source target = 0 := by
  have rationalZero :
      (schedule.rationalKernelAt time).transition target source = 0 :=
    schedule.rationalTransition_eq_zero_of_class_ne time
      (fun sameClass => different sameClass.symm)
  rw [schedule.realKernelAt_transition, rationalZero]
  norm_num

/-- One scheduled real step on cast rational heat is exactly the cast of the
corresponding rational scheduled step. -/
@[simp]
theorem realKernelAt_step_cast
    (schedule : ClassProfileSchedule family)
    (time : Nat) (heat : State → ℚ) (target : State) :
    (schedule.realKernelAt time).step
        (fun state => (heat state : ℝ)) target =
      ((schedule.rationalKernelAt time).step heat target : ℝ) := by
  exact (schedule.profile time).searchKernel_step_cast heat target

/-- The varying real evolution is exactly the pointwise cast of the varying
rational evolution at every finite time. -/
@[simp]
theorem realEvolve_cast
    (schedule : ClassProfileSchedule family)
    (initial : State → ℚ) (time : Nat) (target : State) :
    schedule.realEvolve
        (fun state => (initial state : ℝ)) time target =
      (schedule.rationalEvolve initial time target : ℝ) := by
  induction time generalizing target with
  | zero =>
      rfl
  | succ time previous =>
      change
        (schedule.realKernelAt time).step
            (schedule.realEvolve
              (fun state => (initial state : ℝ)) time)
            target =
          ((schedule.rationalKernelAt time).step
            (schedule.rationalEvolve initial time) target : ℝ)
      have pointwiseCast :
          schedule.realEvolve
              (fun state => (initial state : ℝ)) time =
            fun state =>
              (schedule.rationalEvolve initial time state : ℝ) := by
        funext state
        exact previous state
      rw [pointwiseCast]
      exact schedule.realKernelAt_step_cast time
        (schedule.rationalEvolve initial time) target

/-- Scheduled real type mass is exactly the cast of the rational aggregate heat
in the same type fibre. -/
@[simp]
theorem realTypeMass_cast
    {TypeLabel : Type w} [Fintype TypeLabel] [DecidableEq TypeLabel]
    (schedule : ClassProfileSchedule family)
    (initial : State → ℚ) (typeOf : State → TypeLabel)
    (time : Nat) (targetType : TypeLabel) :
    schedule.realTypeMass
        (fun state => (initial state : ℝ))
        typeOf time targetType =
      (aggregate typeOf
        (schedule.rationalEvolve initial time)
        targetType : ℝ) := by
  unfold realTypeMass aggregate
  simp_rw [schedule.realEvolve_cast initial time]
  norm_cast

/-- Scheduled real type-mass lower bounds and rational aggregate lower bounds
are exactly equivalent under the scalar cast. -/
theorem realTypeMass_lower_iff
    {TypeLabel : Type w} [Fintype TypeLabel] [DecidableEq TypeLabel]
    (schedule : ClassProfileSchedule family)
    (initial : State → ℚ) (typeOf : State → TypeLabel)
    (time : Nat) (targetType : TypeLabel) (epsilon : ℚ) :
    (epsilon : ℝ) ≤
        schedule.realTypeMass
          (fun state => (initial state : ℝ))
          typeOf time targetType ↔
      epsilon ≤
        aggregate typeOf
          (schedule.rationalEvolve initial time)
          targetType := by
  rw [schedule.realTypeMass_cast initial typeOf time targetType]
  norm_cast

/-- Scheduled real type-mass positivity is exactly rational type-aggregate
positivity. -/
theorem realTypeMass_pos_iff
    {TypeLabel : Type w} [Fintype TypeLabel] [DecidableEq TypeLabel]
    (schedule : ClassProfileSchedule family)
    (initial : State → ℚ) (typeOf : State → TypeLabel)
    (time : Nat) (targetType : TypeLabel) :
    0 < schedule.realTypeMass
        (fun state => (initial state : ℝ))
        typeOf time targetType ↔
      0 < aggregate typeOf
        (schedule.rationalEvolve initial time)
        targetType := by
  rw [schedule.realTypeMass_cast initial typeOf time targetType]
  norm_cast

/-- Scheduled real positivity in every finite type is exactly rational
`TypeCompleteAt`. -/
theorem realTypeMassComplete_iff
    {TypeLabel : Type w} [Fintype TypeLabel] [DecidableEq TypeLabel]
    (schedule : ClassProfileSchedule family)
    (initial : State → ℚ) (typeOf : State → TypeLabel)
    (time : Nat) :
    (∀ targetType : TypeLabel,
      0 < schedule.realTypeMass
        (fun state => (initial state : ℝ))
        typeOf time targetType) ↔
      TypeCompleteAt typeOf
        (schedule.rationalEvolve initial time) := by
  unfold TypeCompleteAt
  constructor
  · intro complete targetType
    exact (schedule.realTypeMass_pos_iff
      initial typeOf time targetType).1 (complete targetType)
  · intro complete targetType
    exact (schedule.realTypeMass_pos_iff
      initial typeOf time targetType).2 (complete targetType)

/-- For the identity classifier, scheduled real type mass is the cast of the
rational point heat. -/
@[simp]
theorem realFineTypeMass_cast
    (schedule : ClassProfileSchedule family)
    (initial : State → ℚ) (time : Nat) (target : State) :
    schedule.realTypeMass
        (fun state => (initial state : ℝ))
        (fun state : State => state) time target =
      (schedule.rationalEvolve initial time target : ℝ) := by
  simpa [aggregate] using
    schedule.realTypeMass_cast
      initial (fun state : State => state) time target

/-- Positive initial class mass gives positive real scheduled type mass in every
fine state at every positive finite time. -/
theorem realFineTypeMass_pos_all_positive_times
    (schedule : ClassProfileSchedule family)
    (initial : State → ℚ)
    (initialClassComplete :
      TypeCompleteAt family.classOf initial) :
    ∀ time : Nat, ∀ target : State,
      0 < schedule.realTypeMass
        (fun state => (initial state : ℝ))
        (fun state : State => state) (time + 1) target := by
  intro time
  exact (schedule.realTypeMassComplete_iff
    initial (fun state : State => state) (time + 1)).2
      (schedule.rationalFineTypeComplete_all_positive_times
        initial initialClassComplete time)

/-! ## Explicit eventual lower floors -/

/-- After `start`, every scheduled normalized target fraction dominates the
declared state-dependent floor. -/
def HasEventualProfileFractionFloor
    (schedule : ClassProfileSchedule family)
    (stateFloor : State → ℚ) (start : Nat) : Prop :=
  ∀ time, start ≤ time → ∀ state,
    stateFloor state ≤ schedule.profileFraction time state

/-- Every initial collision-class aggregate dominates the declared class floor. -/
def HasInitialClassMassFloor
    (initial : State → ℚ) (classFloor : Class → ℚ) : Prop :=
  ∀ class,
    classFloor class ≤ aggregate family.classOf initial class

/-- Pointwise profile floors and initial class-mass floors multiply to an
explicit lower bound for every sufficiently late scheduled state. -/
theorem rationalFineMass_lower_of_eventual_floors
    (schedule : ClassProfileSchedule family)
    (initial : State → ℚ)
    (stateFloor : State → ℚ) (classFloor : Class → ℚ)
    (start : Nat)
    (stateFloor_pos : ∀ state, 0 < stateFloor state)
    (classFloor_pos : ∀ class, 0 < classFloor class)
    (profileFloor :
      schedule.HasEventualProfileFractionFloor stateFloor start)
    (initialFloor :
      HasInitialClassMassFloor (family := family)
        initial classFloor) :
    ∀ time, start ≤ time → ∀ target,
      stateFloor target * classFloor (family.classOf target) ≤
        schedule.rationalEvolve initial (time + 1) target := by
  intro time time_ge target
  rw [schedule.rationalEvolve_succ_eq_profileFraction_mul_initialClassMass
    initial time target]
  exact mul_le_mul
    (profileFloor time time_ge target)
    (initialFloor (family.classOf target))
    (le_of_lt (classFloor_pos (family.classOf target)))
    (le_of_lt (schedule.profileFraction_pos time target))

/-- The preceding quantitative floor implies eventual rational fine-type
completeness. -/
theorem eventually_rationalFineTypeComplete_of_floors
    (schedule : ClassProfileSchedule family)
    (initial : State → ℚ)
    (stateFloor : State → ℚ) (classFloor : Class → ℚ)
    (start : Nat)
    (stateFloor_pos : ∀ state, 0 < stateFloor state)
    (classFloor_pos : ∀ class, 0 < classFloor class)
    (profileFloor :
      schedule.HasEventualProfileFractionFloor stateFloor start)
    (initialFloor :
      HasInitialClassMassFloor (family := family)
        initial classFloor) :
    ∀ time, start ≤ time →
      TypeCompleteAt (fun state : State => state)
        (schedule.rationalEvolve initial (time + 1)) := by
  intro time time_ge target
  have lower :=
    schedule.rationalFineMass_lower_of_eventual_floors
      initial stateFloor classFloor start
      stateFloor_pos classFloor_pos profileFloor initialFloor
      time time_ge target
  have floorPositive :
      0 < stateFloor target *
        classFloor (family.classOf target) :=
    mul_pos (stateFloor_pos target)
      (classFloor_pos (family.classOf target))
  have pointPositive :
      0 < schedule.rationalEvolve initial (time + 1) target :=
    lt_of_lt_of_le floorPositive lower
  simpa [aggregate] using pointPositive

/-- The same eventual floor transports exactly to scheduled real fine-type
mass. -/
theorem realFineTypeMass_lower_of_eventual_floors
    (schedule : ClassProfileSchedule family)
    (initial : State → ℚ)
    (stateFloor : State → ℚ) (classFloor : Class → ℚ)
    (start : Nat)
    (stateFloor_pos : ∀ state, 0 < stateFloor state)
    (classFloor_pos : ∀ class, 0 < classFloor class)
    (profileFloor :
      schedule.HasEventualProfileFractionFloor stateFloor start)
    (initialFloor :
      HasInitialClassMassFloor (family := family)
        initial classFloor) :
    ∀ time, start ≤ time → ∀ target,
      (stateFloor target *
          classFloor (family.classOf target) : ℝ) ≤
        schedule.realTypeMass
          (fun state => (initial state : ℝ))
          (fun state : State => state)
          (time + 1) target := by
  intro time time_ge target
  rw [schedule.realFineTypeMass_cast initial (time + 1) target]
  exact_mod_cast
    schedule.rationalFineMass_lower_of_eventual_floors
      initial stateFloor classFloor start
      stateFloor_pos classFloor_pos profileFloor initialFloor
      time time_ge target

/-- A single uniform late profile floor and a single uniform positive initial
class floor yield a common quantitative lower bound for every fine state. -/
theorem realFineTypeMass_uniform_lower
    (schedule : ClassProfileSchedule family)
    (initial : State → ℚ)
    (profileFloor classFloor : ℚ) (start : Nat)
    (profileFloor_pos : 0 < profileFloor)
    (classFloor_pos : 0 < classFloor)
    (lateProfileFloor :
      ∀ time, start ≤ time → ∀ state,
        profileFloor ≤ schedule.profileFraction time state)
    (initialClassFloor :
      ∀ class,
        classFloor ≤ aggregate family.classOf initial class) :
    ∀ time, start ≤ time → ∀ target,
      (profileFloor * classFloor : ℝ) ≤
        schedule.realTypeMass
          (fun state => (initial state : ℝ))
          (fun state : State => state)
          (time + 1) target := by
  exact schedule.realFineTypeMass_lower_of_eventual_floors
    initial
    (fun _ => profileFloor)
    (fun _ => classFloor)
    start
    (fun _ => profileFloor_pos)
    (fun _ => classFloor_pos)
    lateProfileFloor
    initialClassFloor

/-- A different-class source blocks every positive raw global anchor
reinjection at every schedule time. -/
theorem no_positive_global_anchor_reinjection_at
    (schedule : ClassProfileSchedule family)
    (time : Nat) (anchor source : State)
    (different :
      family.classOf anchor ≠ family.classOf source)
    (beta : ℚ) (beta_pos : 0 < beta) :
    ¬ RawAnchorReinjection
      (schedule.profile time).classLocalSieve anchor beta := by
  exact (schedule.profile time).no_positive_anchor_reinjection_from_other_class
    anchor source different beta beta_pos

end ClassProfileSchedule

end GenericProfileSchedule

end GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyProfileSchedule
