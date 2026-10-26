/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.Algebra.KTheory.FinitePrimePowerFamilySearchDiffusion
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

/-!
# Rational-real cast bridge for finite prime-power family diffusion

The class-local weighted sieve is defined over `ℚ`, while the repository-search
Markov kernel is defined over `ℝ`. This module proves that the real search
kernel is not merely support-compatible with the rational heat kernel: its
finite evolution is exactly the pointwise rational-to-real cast of the rational
evolution.

For every finite type classifier, the real Markov `typeMass` is exactly the cast
of the rational aggregated heat in the same type fibre. Consequently, rational
lower bounds, zero-mass controls, and type-completeness statements transport in
both directions without an approximation or asymptotic error term.

The bridge is finite and algebraic. It does not add cross-class transitions,
prove convergence of a time-varying schedule, identify the kernel with an
analytic heat semigroup, or supply a spectral, Chowla, Kim--Vu, zeta-zero, RH,
or compression theorem.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

universe u v w

namespace GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyCastBridge

open scoped BigOperators
open GRWTSK.Algebra.KTheory.PrimePowerCollisionSearchInventory
open GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyClassDiffusion
open GRWTSK.Algebra.KTheory.FinitePrimePowerFamilySearchDiffusion
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState
open GRWTSK.GraphSandwichDiffusion

section GenericCastBridge

variable {State : Type u} {Class : Type v}
  [Fintype State] [Fintype Class]
  [DecidableEq State] [DecidableEq Class]

namespace ClassWeightProfile

variable {family : FinitePrimePowerFamily State Class}

/-- One real search step on cast rational heat is exactly the cast of one
rational class-local heat step. The only algebraic adjustment is the repository
kernel orientation: real transitions are source-to-target, while rational heat
transitions are target-to-source. -/
@[simp]
theorem searchKernel_step_cast
    (profile : ClassWeightProfile family)
    (heat : State → ℚ) (target : State) :
    profile.searchKernel.step (fun state => (heat state : ℝ)) target =
      (profile.classLocalSieve.normalizedKernel.step heat target : ℝ) := by
  classical
  change
    (∑ source : State,
      (heat source : ℝ) *
        (profile.classLocalSieve.normalizedKernel.transition
          target source : ℝ)) =
      ((∑ source : State,
        profile.classLocalSieve.normalizedKernel.transition
          target source * heat source) : ℝ)
  have rationalEquality :
      (∑ source : State,
        heat source *
          profile.classLocalSieve.normalizedKernel.transition
            target source) =
        ∑ source : State,
          profile.classLocalSieve.normalizedKernel.transition
            target source * heat source := by
    apply Finset.sum_congr rfl
    intro source _
    ring
  exact_mod_cast rationalEquality

/-- Every finite real search-kernel iterate is the exact pointwise cast of the
corresponding rational class-local heat iterate. -/
@[simp]
theorem searchKernel_evolve_cast
    (profile : ClassWeightProfile family)
    (initial : State → ℚ) (time : ℕ) (target : State) :
    profile.searchKernel.evolve
        (fun state => (initial state : ℝ)) time target =
      (profile.classLocalSieve.normalizedKernel.evolve
        initial time target : ℝ) := by
  induction time generalizing target with
  | zero =>
      rfl
  | succ time previous =>
      change
        profile.searchKernel.step
            (profile.searchKernel.evolve
              (fun state => (initial state : ℝ)) time)
            target =
          (profile.classLocalSieve.normalizedKernel.step
            (profile.classLocalSieve.normalizedKernel.evolve initial time)
            target : ℝ)
      have pointwiseCast :
          profile.searchKernel.evolve
              (fun state => (initial state : ℝ)) time =
            fun state =>
              (profile.classLocalSieve.normalizedKernel.evolve
                initial time state : ℝ) := by
        funext state
        exact previous state
      rw [pointwiseCast]
      exact profile.searchKernel_step_cast
        (profile.classLocalSieve.normalizedKernel.evolve initial time)
        target

/-- The total finite real heat is the cast of the total rational heat at every
finite time. This is an exact cast identity, separate from the already proved
mass-preservation theorem for either kernel. -/
@[simp]
theorem searchKernel_totalMass_cast
    (profile : ClassWeightProfile family)
    (initial : State → ℚ) (time : ℕ) :
    (∑ target : State,
      profile.searchKernel.evolve
        (fun state => (initial state : ℝ)) time target) =
      ((∑ target : State,
        profile.classLocalSieve.normalizedKernel.evolve
          initial time target) : ℝ) := by
  have pointwiseCast :
      (fun target =>
        profile.searchKernel.evolve
          (fun state => (initial state : ℝ)) time target) =
        fun target =>
          (profile.classLocalSieve.normalizedKernel.evolve
            initial time target : ℝ) := by
    funext target
    exact profile.searchKernel_evolve_cast initial time target
  rw [pointwiseCast]
  norm_cast

/-- For every finite type classifier, real Markov type mass is exactly the cast
of rational aggregate heat in the corresponding type fibre. -/
theorem searchKernel_typeMass_cast
    {TypeLabel : Type w} [Fintype TypeLabel] [DecidableEq TypeLabel]
    (profile : ClassWeightProfile family)
    (initial : State → ℚ) (typeOf : State → TypeLabel)
    (time : ℕ) (targetType : TypeLabel) :
    profile.searchKernel.typeMass
        (fun state => (initial state : ℝ))
        typeOf time targetType =
      (aggregate typeOf
        (profile.classLocalSieve.normalizedKernel.evolve initial time)
        targetType : ℝ) := by
  classical
  unfold FiniteSieveMarkovKernel.typeMass
  change
    (∑ target in Finset.univ.filter
        (fun target : State => typeOf target = targetType),
      profile.searchKernel.evolve
        (fun state => (initial state : ℝ)) time target) =
      (aggregate typeOf
        (profile.classLocalSieve.normalizedKernel.evolve initial time)
        targetType : ℝ)
  simp_rw [profile.searchKernel_evolve_cast initial time]
  have rationalIdentity :
      (∑ target in Finset.univ.filter
          (fun target : State => typeOf target = targetType),
        profile.classLocalSieve.normalizedKernel.evolve
          initial time target) =
        aggregate typeOf
          (profile.classLocalSieve.normalizedKernel.evolve initial time)
          targetType := by
    unfold aggregate
    rw [Finset.sum_filter]
  exact_mod_cast rationalIdentity

/-- Quantitative lower bounds on rational aggregated heat are equivalent to the
same lower bounds, after casting, on real finite type mass. -/
theorem searchKernel_typeMass_lower_iff
    {TypeLabel : Type w} [Fintype TypeLabel] [DecidableEq TypeLabel]
    (profile : ClassWeightProfile family)
    (initial : State → ℚ) (typeOf : State → TypeLabel)
    (time : ℕ) (targetType : TypeLabel) (epsilon : ℚ) :
    (epsilon : ℝ) ≤
        profile.searchKernel.typeMass
          (fun state => (initial state : ℝ))
          typeOf time targetType ↔
      epsilon ≤
        aggregate typeOf
          (profile.classLocalSieve.normalizedKernel.evolve initial time)
          targetType := by
  rw [profile.searchKernel_typeMass_cast
    initial typeOf time targetType]
  norm_cast

/-- Strict positivity of real type mass is equivalent to strict positivity of
rational aggregated heat. -/
theorem searchKernel_typeMass_pos_iff
    {TypeLabel : Type w} [Fintype TypeLabel] [DecidableEq TypeLabel]
    (profile : ClassWeightProfile family)
    (initial : State → ℚ) (typeOf : State → TypeLabel)
    (time : ℕ) (targetType : TypeLabel) :
    0 < profile.searchKernel.typeMass
        (fun state => (initial state : ℝ))
        typeOf time targetType ↔
      0 < aggregate typeOf
        (profile.classLocalSieve.normalizedKernel.evolve initial time)
        targetType := by
  rw [profile.searchKernel_typeMass_cast
    initial typeOf time targetType]
  norm_cast

/-- Zero real type mass is equivalent to zero rational aggregate heat. -/
theorem searchKernel_typeMass_eq_zero_iff
    {TypeLabel : Type w} [Fintype TypeLabel] [DecidableEq TypeLabel]
    (profile : ClassWeightProfile family)
    (initial : State → ℚ) (typeOf : State → TypeLabel)
    (time : ℕ) (targetType : TypeLabel) :
    profile.searchKernel.typeMass
        (fun state => (initial state : ℝ))
        typeOf time targetType = 0 ↔
      aggregate typeOf
        (profile.classLocalSieve.normalizedKernel.evolve initial time)
        targetType = 0 := by
  rw [profile.searchKernel_typeMass_cast
    initial typeOf time targetType]
  norm_cast

/-- The real finite-type positivity condition is exactly rational
`TypeCompleteAt` for the cast-compatible evolution. -/
theorem searchKernel_typeMassComplete_iff
    {TypeLabel : Type w} [Fintype TypeLabel] [DecidableEq TypeLabel]
    (profile : ClassWeightProfile family)
    (initial : State → ℚ) (typeOf : State → TypeLabel)
    (time : ℕ) :
    (∀ targetType : TypeLabel,
      0 < profile.searchKernel.typeMass
        (fun state => (initial state : ℝ))
        typeOf time targetType) ↔
      TypeCompleteAt typeOf
        (profile.classLocalSieve.normalizedKernel.evolve initial time) := by
  unfold TypeCompleteAt
  constructor
  · intro complete targetType
    exact (profile.searchKernel_typeMass_pos_iff
      initial typeOf time targetType).1 (complete targetType)
  · intro complete targetType
    exact (profile.searchKernel_typeMass_pos_iff
      initial typeOf time targetType).2 (complete targetType)

/-- For the identity fine-state classifier, real type mass is exactly the cast
of the rational point heat. -/
@[simp]
theorem searchKernel_fineTypeMass_cast
    (profile : ClassWeightProfile family)
    (initial : State → ℚ) (time : ℕ) (target : State) :
    profile.searchKernel.typeMass
        (fun state => (initial state : ℝ))
        (fun state : State => state) time target =
      (profile.classLocalSieve.normalizedKernel.evolve
        initial time target : ℝ) := by
  simpa [aggregate] using
    profile.searchKernel_typeMass_cast
      initial (fun state : State => state) time target

/-- Positive rational heat at one fine state is equivalent to positive real
Markov type mass at that same fine state. -/
theorem searchKernel_fineTypeMass_pos_iff
    (profile : ClassWeightProfile family)
    (initial : State → ℚ) (time : ℕ) (target : State) :
    0 < profile.searchKernel.typeMass
        (fun state => (initial state : ℝ))
        (fun state : State => state) time target ↔
      0 < profile.classLocalSieve.normalizedKernel.evolve
        initial time target := by
  rw [profile.searchKernel_fineTypeMass_cast initial time target]
  norm_cast

/-- Positive initial aggregate mass in every collision class yields positive
real Markov type mass in every fine state at every positive finite time. -/
theorem searchKernel_fineTypeMass_pos_all_positive_times
    (profile : ClassWeightProfile family)
    (initial : State → ℚ)
    (initialClassComplete :
      TypeCompleteAt family.classOf initial) :
    ∀ time : ℕ, ∀ target : State,
      0 < profile.searchKernel.typeMass
        (fun state => (initial state : ℝ))
        (fun state : State => state) (time + 1) target := by
  intro time
  exact (profile.searchKernel_typeMassComplete_iff
    initial (fun state : State => state) (time + 1)).2
      (profile.fineTypeComplete_all_positive_times
        initial initialClassComplete time)

/-- Negative control: an exactly zero rational type aggregate cannot become a
positive real type mass merely through the scalar cast. -/
theorem no_searchKernel_typeMass_pos_of_aggregate_eq_zero
    {TypeLabel : Type w} [Fintype TypeLabel] [DecidableEq TypeLabel]
    (profile : ClassWeightProfile family)
    (initial : State → ℚ) (typeOf : State → TypeLabel)
    (time : ℕ) (targetType : TypeLabel)
    (aggregateZero :
      aggregate typeOf
        (profile.classLocalSieve.normalizedKernel.evolve initial time)
        targetType = 0) :
    ¬ 0 < profile.searchKernel.typeMass
        (fun state => (initial state : ℝ))
        typeOf time targetType := by
  rw [profile.searchKernel_typeMass_cast
    initial typeOf time targetType, aggregateZero]
  norm_num

end ClassWeightProfile

end GenericCastBridge

end GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyCastBridge
