/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.Algebra.KTheory.PrimePowerHeightCoarseObservationQuotient
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

/-!
# Lumped Markov dynamics on the coarse radical/K₀ quotient

This module pushes every finite prime-power height-slice transition through the
realized quotient by the paired coarse feature

`(radical-factored universal K₀-shaped value, arithmetic radical)`.

The fine kernel is block diagonal by the two radical classes. Its exact quotient
is therefore the identity Markov kernel on the two realized coarse classes. The
source proves the fibre-sum formula, one-step and finite-time lumpability, total
mass preservation, and compatibility with the time-varying profile schedule.

The signed exponent-sensitive collision mode is killed by the quotient map: its
values `1` and `-1` on `3` and `3^2` cancel in their common coarse fibre. The
quotient dynamics preserve that zero image and cannot reconstruct the lost mode,
fine state, or prime-power exponent.

The quotient is finite and exact only for the declared three-state carrier. The
universal group completion remains K₀-shaped. No analytic or geometric
K-theory, Frobenius action, Hilbert--Pólya operator, Chowla cancellation,
Kim--Vu coupling, zeta-zero identification, Riemann-hypothesis implication,
logarithmic-radical identity, or arithmetic compression estimate is asserted.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Algebra.KTheory.PrimePowerArithmeticHeightDiffusion

open scoped BigOperators Matrix.Norms.Frobenius
open GRWTSK.Algebra.KTheory.RadicalCollisionBoundary
open GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyClassDiffusion
open GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyProfileSchedule
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState
open GRWTSK.GraphSandwichDiffusion

namespace AlternatingExponentProfile

/-! ## Finite quotient instances and identity kernel -/

/-- The realized quotient inherits a finite enumeration from its finite source
carrier. -/
noncomputable instance coarseObservationQuotientFintype
    {M : Type*} [CommMonoid M] {lift : ℕ →* M} :
    Fintype (CoarseObservationQuotient M lift) :=
  Fintype.ofFinite _

/-- Equality on the realized quotient is used only inside finite sums. -/
noncomputable instance coarseObservationQuotientDecidableEq
    {M : Type*} [CommMonoid M] {lift : ℕ →* M} :
    DecidableEq (CoarseObservationQuotient M lift) :=
  Classical.decEq _

/-- Quotient-level Markov kernel for one height slice. Every fine transition
stays in its radical class, so the pushed-forward quotient transition is the
identity. The height argument records the source slice even though the quotient
kernel itself is height-independent. -/
noncomputable def coarseObservationKernel
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) (_height : Nat) :
    HeatKernel (CoarseObservationQuotient M lift) where
  transition := fun target source =>
    if target = source then 1 else 0
  nonnegative := by
    intro target source
    by_cases equalClasses : target = source <;>
      simp [equalClasses]
  stochastic := by
    intro source
    classical
    simp

@[simp]
theorem coarseObservationKernel_transition
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) (height : Nat)
    (target source : CoarseObservationQuotient M lift) :
    (coarseObservationKernel lift height).transition target source =
      if target = source then 1 else 0 :=
  rfl

/-- One quotient step is exactly the identity on quotient heat. -/
@[simp]
theorem coarseObservationKernel_step
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) (height : Nat)
    (heat : CoarseObservationQuotient M lift → ℚ)
    (quotient : CoarseObservationQuotient M lift) :
    (coarseObservationKernel lift height).step heat quotient =
      heat quotient := by
  classical
  simp [HeatKernel.step, coarseObservationKernel]

/-- Every finite quotient evolution is the identity. -/
@[simp]
theorem coarseObservationKernel_evolve
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) (height : Nat)
    (initial : CoarseObservationQuotient M lift → ℚ)
    (time : Nat) :
    (coarseObservationKernel lift height).evolve initial time =
      initial := by
  induction time with
  | zero =>
      rfl
  | succ time inductionHypothesis =>
      change
        (coarseObservationKernel lift height).step
            ((coarseObservationKernel lift height).evolve initial time) =
          initial
      rw [inductionHypothesis]
      funext quotient
      exact coarseObservationKernel_step
        lift height initial quotient

/-! ## Exact fibre pushforward and transition lumpability -/

/-- Rational pushforward of fine heat to the realized coarse quotient. -/
noncomputable def coarseRationalPushforward
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M)
    (heat : State → ℚ)
    (quotient : CoarseObservationQuotient M lift) : ℚ :=
  aggregate (coarseObservationClass lift) heat quotient

/-- Pushing to quotient fibres preserves total rational mass exactly. -/
theorem coarseRationalPushforward_totalMass
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M)
    (heat : State → ℚ) :
    (∑ quotient : CoarseObservationQuotient M lift,
      coarseRationalPushforward lift heat quotient) =
      ∑ state : State, heat state := by
  simpa [coarseRationalPushforward] using
    (aggregate_mass (coarseObservationClass lift) heat)

/-- Fine transition mass entering one quotient fibre from one fine source. -/
noncomputable def coarseObservationTransitionMass
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M)
    (height : Nat) (source : State)
    (quotient : CoarseObservationQuotient M lift) : ℚ :=
  coarseRationalPushforward lift
    (fun target =>
      (profileAt height).classLocalSieve.normalizedKernel.transition
        target source)
    quotient

/-- Exact strong lumpability: the sum of all fine transitions entering a coarse
fibre is the corresponding quotient transition. -/
theorem coarseObservationTransitionMass_eq_kernel
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M)
    (height : Nat) (source : State)
    (quotient : CoarseObservationQuotient M lift) :
    coarseObservationTransitionMass lift height source quotient =
      (coarseObservationKernel lift height).transition
        quotient (coarseObservationClass lift source) := by
  classical
  obtain ⟨representative, rfl⟩ :=
    coarseObservationClass_surjective lift quotient
  simpa [
    coarseObservationTransitionMass,
    coarseRationalPushforward,
    aggregate,
    coarseObservationKernel,
    coarseObservationClass_eq_iff_class_eq,
    eq_comm
  ] using
    (profileAt height).transition_sum_over_class
      source (family.classOf representative)

/-- One fine class-local step preserves every coarse quotient aggregate. -/
theorem coarseRationalPushforward_fineStep_eq
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M)
    (height : Nat) (heat : State → ℚ)
    (quotient : CoarseObservationQuotient M lift) :
    coarseRationalPushforward lift
        ((profileAt height).classLocalSieve.normalizedKernel.step heat)
        quotient =
      coarseRationalPushforward lift heat quotient := by
  classical
  obtain ⟨representative, rfl⟩ :=
    coarseObservationClass_surjective lift quotient
  simpa [
    coarseRationalPushforward,
    aggregate,
    coarseObservationClass_eq_iff_class_eq
  ] using
    (profileAt height).classMass_step_eq
      heat (family.classOf representative)

/-- Exact one-step Markov lumpability. -/
theorem coarseRationalPushforward_step_lumpable
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M)
    (height : Nat) (heat : State → ℚ)
    (quotient : CoarseObservationQuotient M lift) :
    coarseRationalPushforward lift
        ((profileAt height).classLocalSieve.normalizedKernel.step heat)
        quotient =
      (coarseObservationKernel lift height).step
        (coarseRationalPushforward lift heat) quotient := by
  rw [
    coarseRationalPushforward_fineStep_eq,
    coarseObservationKernel_step
  ]

/-- Every iterate of one fixed height slice preserves the coarse pushforward. -/
theorem coarseRationalPushforward_fineEvolve_eq
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M)
    (height time : Nat) (initial : State → ℚ)
    (quotient : CoarseObservationQuotient M lift) :
    coarseRationalPushforward lift
        ((profileAt height).classLocalSieve.normalizedKernel.evolve
          initial time)
        quotient =
      coarseRationalPushforward lift initial quotient := by
  classical
  obtain ⟨representative, rfl⟩ :=
    coarseObservationClass_surjective lift quotient
  simpa [
    coarseRationalPushforward,
    aggregate,
    coarseObservationClass_eq_iff_class_eq
  ] using
    (profileAt height).classMass_evolve_eq
      initial time (family.classOf representative)

/-- Fixed-height finite-time evolution commutes with the quotient kernel. -/
theorem coarseRationalPushforward_evolve_lumpable
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M)
    (height time : Nat) (initial : State → ℚ)
    (quotient : CoarseObservationQuotient M lift) :
    coarseRationalPushforward lift
        ((profileAt height).classLocalSieve.normalizedKernel.evolve
          initial time)
        quotient =
      (coarseObservationKernel lift height).evolve
        (coarseRationalPushforward lift initial) time quotient := by
  rw [
    coarseRationalPushforward_fineEvolve_eq,
    coarseObservationKernel_evolve
  ]

/-! ## Time-varying schedule lumpability -/

/-- The full nonconstant profile schedule preserves every coarse quotient mass. -/
theorem coarseRationalPushforward_scheduleEvolve_eq
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M)
    (initial : State → ℚ) (time : Nat)
    (quotient : CoarseObservationQuotient M lift) :
    coarseRationalPushforward lift
        (schedule.rationalEvolve initial time) quotient =
      coarseRationalPushforward lift initial quotient := by
  classical
  obtain ⟨representative, rfl⟩ :=
    coarseObservationClass_surjective lift quotient
  simpa [
    coarseRationalPushforward,
    aggregate,
    coarseObservationClass_eq_iff_class_eq
  ] using
    schedule.rationalEvolve_classMass
      initial time (family.classOf representative)

/-- The time-varying fine schedule is exactly lumped by the same identity
quotient kernel. -/
theorem coarseRationalPushforward_schedule_lumpable
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M)
    (quotientHeight : Nat)
    (initial : State → ℚ) (time : Nat)
    (quotient : CoarseObservationQuotient M lift) :
    coarseRationalPushforward lift
        (schedule.rationalEvolve initial time) quotient =
      (coarseObservationKernel lift quotientHeight).evolve
        (coarseRationalPushforward lift initial) time quotient := by
  rw [
    coarseRationalPushforward_scheduleEvolve_eq,
    coarseObservationKernel_evolve
  ]

/-- The quotient kernel itself preserves total mass at every step. -/
theorem coarseObservationKernel_step_totalMass
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) (height : Nat)
    (heat : CoarseObservationQuotient M lift → ℚ) :
    (∑ quotient,
      (coarseObservationKernel lift height).step heat quotient) =
      ∑ quotient, heat quotient :=
  (coarseObservationKernel lift height).step_mass heat

/-! ## Collision-mode annihilation and non-reconstruction -/

/-- The coarse quotient projection annihilates the signed exponent-sensitive
collision mode in every quotient fibre. -/
theorem coarseObservationMass_collisionMode_zero
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M)
    (quotient : CoarseObservationQuotient M lift) :
    coarseObservationMass lift collisionModeVector quotient = 0 := by
  classical
  rcases coarseObservationQuotient_eq_anchor_or_collision lift quotient with
    anchorClass | collisionClass
  · subst quotient
    norm_num [
      coarseObservationMass,
      collisionModeVector,
      coarseObservationClass_eq_anchor_iff,
      Fin.sum_univ_three
    ]
  · subst quotient
    norm_num [
      coarseObservationMass,
      collisionModeVector,
      coarseObservationClass_eq_collision_iff,
      Fin.sum_univ_three
    ]

/-- The fine transition already annihilates the collision mode, so its quotient
image is also zero. -/
theorem coarseObservationMass_transitionCollision_zero
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M)
    (height : Nat)
    (quotient : CoarseObservationQuotient M lift) :
    coarseObservationMass lift
        (transitionActionAt height collisionModeVector)
        quotient = 0 := by
  rw [transitionAction_collision height]
  simp [coarseObservationMass]

/-- Quotient evolution preserves the zero image of the collision mode at every
finite time. -/
theorem coarseObservationKernel_collision_evolve_zero
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M)
    (height time : Nat) :
    (coarseObservationKernel lift height).evolve
        (fun quotient =>
          (coarseObservationMass lift collisionModeVector quotient : ℚ))
        time =
      fun _ => 0 := by
  rw [coarseObservationKernel_evolve]
  funext quotient
  have zeroReal :=
    coarseObservationMass_collisionMode_zero lift quotient
  exact_mod_cast zeroReal

/-- Fibre summation is not injective on real state vectors: the nonzero collision
mode and the zero vector have the same quotient image. -/
theorem coarseObservationMassMap_not_injective
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) :
    ¬ Function.Injective
        (fun vector : State → ℝ =>
          fun quotient : CoarseObservationQuotient M lift =>
            coarseObservationMass lift vector quotient) := by
  intro injective
  have imageEquality :
      (fun quotient : CoarseObservationQuotient M lift =>
        coarseObservationMass lift collisionModeVector quotient) =
      (fun quotient : CoarseObservationQuotient M lift =>
        coarseObservationMass lift (fun _ => 0) quotient) := by
    funext quotient
    rw [coarseObservationMass_collisionMode_zero]
    simp [coarseObservationMass]
  have vectorEquality := injective imageEquality
  have atFirst := congrFun vectorEquality (1 : State)
  norm_num [collisionModeVector] at atFirst

/-! ## Provenance-bearing boundary certificate -/

/-- Immutable source identity for the finite coarse quotient consumed here. -/
def coarseObservationQuotientSource : SourceIdentity where
  kind := .leanDeclaration
  identifier :=
    "GRWTSK.Algebra.KTheory.PrimePowerHeightCoarseObservationQuotient"
  locator :=
    "coarseObservationClass_eq_iff_class_eq; coarseObservationCompleteAt_height; canonicalCoarseObservationQuotientBoundaryCertificate"
  repository := some "grwtsk/math"
  commit := some "3d2a2a61d0e1eb2e4133033408d7546842316088"
  path := some
    "GRWTSK/Algebra/KTheory/PrimePowerHeightCoarseObservationQuotient.lean"
  blob := some "ba0e93e15bebfa32cc2707ca20c741e45ae5192e"

/-- Complete quotient-kernel/lumpability/information-loss package. -/
structure CoarseObservationMarkovBoundaryCertificate
    (M : Type*) [CommMonoid M] (lift : ℕ →* M) where
  transitionLumpability :
    ∀ height source quotient,
      coarseObservationTransitionMass lift height source quotient =
        (coarseObservationKernel lift height).transition
          quotient (coarseObservationClass lift source)
  stepLumpability :
    ∀ height heat quotient,
      coarseRationalPushforward lift
          ((profileAt height).classLocalSieve.normalizedKernel.step heat)
          quotient =
        (coarseObservationKernel lift height).step
          (coarseRationalPushforward lift heat) quotient
  scheduleLumpability :
    ∀ quotientHeight initial time quotient,
      coarseRationalPushforward lift
          (schedule.rationalEvolve initial time) quotient =
        (coarseObservationKernel lift quotientHeight).evolve
          (coarseRationalPushforward lift initial) time quotient
  pushforwardTotalMass :
    ∀ heat,
      (∑ quotient : CoarseObservationQuotient M lift,
        coarseRationalPushforward lift heat quotient) =
        ∑ state : State, heat state
  quotientStepMass :
    ∀ height heat,
      (∑ quotient,
        (coarseObservationKernel lift height).step heat quotient) =
        ∑ quotient, heat quotient
  quotientComplete :
    ∀ height,
      CoarseObservationCompleteAt lift
        (observationAt height).realHeat
  collisionProjectionZero :
    ∀ quotient,
      coarseObservationMass lift collisionModeVector quotient = 0
  collisionDynamicsZero :
    ∀ height time,
      (coarseObservationKernel lift height).evolve
          (fun quotient =>
            (coarseObservationMass lift collisionModeVector quotient : ℚ))
          time =
        fun _ => 0
  projectionNotInjective :
    ¬ Function.Injective
        (fun vector : State → ℝ =>
          fun quotient : CoarseObservationQuotient M lift =>
            coarseObservationMass lift vector quotient)
  noStateDecoder :
    ¬ ∃ decode : CoarseObservationQuotient M lift → State,
        ∀ state : State,
          decode (coarseObservationClass lift state) = state
  noExponentDecoder :
    ¬ ∃ decode : CoarseObservationQuotient M lift → ℕ,
        ∀ state : State,
          decode (coarseObservationClass lift state) =
            family.exponent state
  proofProvenance : List SourceIdentity
  analogyProvenance : List SourceIdentity
  unresolvedSuppliers : List SourceIdentity

/-- Canonical exact quotient Markov certificate for every supplied multiplicative
lift into a commutative stable-object monoid. -/
noncomputable def canonicalCoarseObservationMarkovBoundaryCertificate
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) :
    CoarseObservationMarkovBoundaryCertificate M lift where
  transitionLumpability := by
    intro height source quotient
    exact coarseObservationTransitionMass_eq_kernel
      lift height source quotient
  stepLumpability := by
    intro height heat quotient
    exact coarseRationalPushforward_step_lumpable
      lift height heat quotient
  scheduleLumpability := by
    intro quotientHeight initial time quotient
    exact coarseRationalPushforward_schedule_lumpable
      lift quotientHeight initial time quotient
  pushforwardTotalMass := by
    intro heat
    exact coarseRationalPushforward_totalMass lift heat
  quotientStepMass := by
    intro height heat
    exact coarseObservationKernel_step_totalMass
      lift height heat
  quotientComplete := by
    intro height
    exact coarseObservationCompleteAt_height lift height
  collisionProjectionZero := by
    intro quotient
    exact coarseObservationMass_collisionMode_zero
      lift quotient
  collisionDynamicsZero := by
    intro height time
    exact coarseObservationKernel_collision_evolve_zero
      lift height time
  projectionNotInjective :=
    coarseObservationMassMap_not_injective lift
  noStateDecoder :=
    no_exact_coarseObservationQuotient_state_decoder lift
  noExponentDecoder :=
    no_exact_coarseObservationQuotient_exponent_decoder lift
  proofProvenance := [
    coarseObservationQuotientSource,
    radicalKZeroObservationFunctorSource,
    heightTransportGroupoidSource,
    coarseRadicalCollisionSource,
    heightTimeCompositionSource,
    finiteSemigroupSource,
    heightTensorSource,
    profileScheduleSource,
    certifiedSearchSource,
    mathlibMatrixExponentialSource
  ]
  analogyProvenance := [
    linearChainSpectrumAnalogy,
    hilbertPolyaAnalogy
  ]
  unresolvedSuppliers := [
    analyticHeatSemigroupSupplier,
    chowlaPositiveWeightSupplier
  ]

end AlternatingExponentProfile

end GRWTSK.Algebra.KTheory.PrimePowerArithmeticHeightDiffusion
