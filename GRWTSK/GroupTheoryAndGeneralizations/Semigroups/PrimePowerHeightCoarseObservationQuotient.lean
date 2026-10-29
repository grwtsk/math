/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.GroupTheoryAndGeneralizations.Semigroups.PrimePowerHeightRadicalKZeroObservationFunctor
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

/-!
# Finite coarse-observation quotient for prime-power height diffusion

This module forms the finite image quotient of the three-state prime-power
carrier under the paired coarse feature

`(radical-factored universal K₀-shaped value, arithmetic radical)`.

The quotient identifies exactly states with equal coarse features. On the
present carrier this is equivalent to equality of the declared radical class:
the singleton state `2` forms one quotient class, while `3` and `3^2` form the
other. The quotient is finite and covered by these two representatives.

The quotient map is constant under every canonical height arrow and every
bounded height-observation path. Existing fine-state diffusion completeness
therefore descends to positive coarse-quotient mass, but the quotient remains
strictly lossy: it cannot reconstruct the fine state or the prime-power
exponent.

The universal group completion remains only K₀-shaped. This module does not
construct analytic or geometric K-theory, a Frobenius action, a Hilbert--Pólya
operator, Chowla cancellation, a Kim--Vu probabilistic coupling, a zeta-zero
identification, a Riemann-hypothesis implication, the logarithmic-radical
identity, or an arithmetic compression estimate.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Algebra.KTheory.PrimePowerArithmeticHeightDiffusion

open scoped BigOperators Matrix.Norms.Frobenius
open GRWTSK.Algebra.KTheory.RadicalCollisionBoundary
open GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyClassDiffusion
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState
open GRWTSK.GraphSandwichDiffusion

namespace AlternatingExponentProfile

/-! ## Finite image quotient -/

/-- Finite coarse-observation quotient, represented as the realized image of the
paired radical/K₀-shaped feature. Equality in this subtype is exactly equality
of the retained coarse feature. -/
abbrev CoarseObservationQuotient
    (M : Type*) [CommMonoid M] (lift : ℕ →* M) :=
  { feature : RadicalKZeroFeature M //
    ∃ state : State, radicalKZeroFeature lift state = feature }

/-- Canonical quotient map from a fine state to its realized coarse feature. -/
def coarseObservationClass
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) (state : State) :
    CoarseObservationQuotient M lift :=
  ⟨radicalKZeroFeature lift state, state, rfl⟩

@[simp]
theorem coarseObservationClass_val
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) (state : State) :
    (coarseObservationClass lift state).1 =
      radicalKZeroFeature lift state :=
  rfl

/-- Every quotient feature is represented by an actual fine state. -/
theorem coarseObservationClass_surjective
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) :
    Function.Surjective (coarseObservationClass lift) := by
  rintro ⟨feature, ⟨state, feature_spec⟩⟩
  refine ⟨state, ?_⟩
  apply Subtype.ext
  exact feature_spec

/-- The coarse quotient is finite because it is a surjective image of the
finite three-state carrier. -/
noncomputable instance coarseObservationQuotientFinite
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) :
    Finite (CoarseObservationQuotient M lift) :=
  Finite.of_surjective
    (coarseObservationClass lift)
    (coarseObservationClass_surjective lift)

/-- Quotient-map equality is exactly equality of the retained coarse features. -/
@[simp]
theorem coarseObservationClass_eq_iff_feature_eq
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) (first second : State) :
    coarseObservationClass lift first =
        coarseObservationClass lift second ↔
      radicalKZeroFeature lift first =
        radicalKZeroFeature lift second := by
  constructor
  · intro equalClasses
    exact congrArg Subtype.val equalClasses
  · intro equalFeatures
    exact Subtype.ext equalFeatures

/-- On the declared finite prime-power carrier, equality of the paired coarse
feature is exactly equality of the arithmetic-radical collision class. -/
@[simp]
theorem coarseObservationClass_eq_iff_class_eq
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) (first second : State) :
    coarseObservationClass lift first =
        coarseObservationClass lift second ↔
      family.classOf first = family.classOf second := by
  constructor
  · intro equalClasses
    have equalFeatures :
        radicalKZeroFeature lift first =
          radicalKZeroFeature lift second :=
      (coarseObservationClass_eq_iff_feature_eq
        lift first second).1 equalClasses
    have equalRadicals :
        Nat.radical (family.value first) =
          Nat.radical (family.value second) :=
      congrArg Prod.snd equalFeatures
    exact
      (family.radical_eq_iff_class_eq first second).1
        equalRadicals
  · intro sameClass
    apply
      (coarseObservationClass_eq_iff_feature_eq
        lift first second).2
    exact radicalKZeroFeature_eq_of_class_eq
      lift sameClass

/-! ## Exact collision fibres -/

/-- The singleton `2` class and the `3`-power collision class are distinct in
the quotient because the arithmetic-radical coordinate is retained. -/
theorem coarseObservationClass_anchor_ne_collision
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) :
    coarseObservationClass lift (0 : State) ≠
      coarseObservationClass lift (1 : State) := by
  intro equalClasses
  have sameClass :=
    (coarseObservationClass_eq_iff_class_eq
      lift (0 : State) (1 : State)).1 equalClasses
  norm_num [
    family,
    UnequalFiberExample.family,
    UnequalFiberExample.classOf
  ] at sameClass

/-- The states `3` and `3^2` lie in the same coarse quotient class. -/
theorem coarseObservationClass_first_eq_second
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) :
    coarseObservationClass lift (1 : State) =
      coarseObservationClass lift (2 : State) := by
  apply
    (coarseObservationClass_eq_iff_class_eq
      lift (1 : State) (2 : State)).2
  norm_num [
    family,
    UnequalFiberExample.family,
    UnequalFiberExample.classOf
  ]

/-- Exact fibre of the singleton quotient class. -/
@[simp]
theorem coarseObservationClass_eq_anchor_iff
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) (state : State) :
    coarseObservationClass lift state =
        coarseObservationClass lift (0 : State) ↔
      state = 0 := by
  constructor
  · intro equalClasses
    have sameClass :=
      (coarseObservationClass_eq_iff_class_eq
        lift state (0 : State)).1 equalClasses
    fin_cases state <;>
      norm_num [
        family,
        UnequalFiberExample.family,
        UnequalFiberExample.classOf
      ] at sameClass ⊢
  · intro state_zero
    subst state
    rfl

/-- Exact fibre of the nontrivial collision quotient class. -/
@[simp]
theorem coarseObservationClass_eq_collision_iff
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) (state : State) :
    coarseObservationClass lift state =
        coarseObservationClass lift (1 : State) ↔
      state = 1 ∨ state = 2 := by
  constructor
  · intro equalClasses
    have sameClass :=
      (coarseObservationClass_eq_iff_class_eq
        lift state (1 : State)).1 equalClasses
    fin_cases state <;>
      norm_num [
        family,
        UnequalFiberExample.family,
        UnequalFiberExample.classOf
      ] at sameClass ⊢
  · rintro (state_one | state_two)
    · subst state
      rfl
    · subst state
      exact (coarseObservationClass_first_eq_second lift).symm

/-- Every coarse quotient element is one of the two explicit classes. -/
theorem coarseObservationQuotient_eq_anchor_or_collision
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M)
    (quotient : CoarseObservationQuotient M lift) :
    quotient = coarseObservationClass lift (0 : State) ∨
      quotient = coarseObservationClass lift (1 : State) := by
  obtain ⟨state, rfl⟩ :=
    coarseObservationClass_surjective lift quotient
  fin_cases state
  · exact Or.inl rfl
  · exact Or.inr rfl
  · exact Or.inr
      (coarseObservationClass_first_eq_second lift).symm

/-- The finite quotient has exactly the two represented classes: they are
distinct and cover every quotient value. -/
theorem coarseObservationQuotient_exactly_two_classes
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) :
    coarseObservationClass lift (0 : State) ≠
        coarseObservationClass lift (1 : State) ∧
      ∀ quotient : CoarseObservationQuotient M lift,
        quotient = coarseObservationClass lift (0 : State) ∨
          quotient = coarseObservationClass lift (1 : State) := by
  exact ⟨coarseObservationClass_anchor_ne_collision lift,
    coarseObservationQuotient_eq_anchor_or_collision lift⟩

/-! ## Height-orbit invariance -/

/-- Every canonical fine-state height arrow maps to equality in the coarse
quotient. -/
theorem coarseObservationClass_heightStateTransport
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M)
    (sourceHeight targetHeight : Nat) (state : State) :
    coarseObservationClass lift
        (heightStateTransport sourceHeight targetHeight state) =
      coarseObservationClass lift state := by
  apply
    (coarseObservationClass_eq_iff_class_eq
      lift
      (heightStateTransport sourceHeight targetHeight state)
      state).2
  exact heightStateTransport_preserves_class
    sourceHeight targetHeight state

/-- The quotient is constant along every bounded path with actual height-change
steps. -/
theorem coarseObservationClass_path_invariant
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M)
    {horizon : Nat}
    {first last : Fin (horizon + 1)}
    (path : BoundedObservationHeightPath horizon first last)
    (state : State) :
    coarseObservationClass lift
        (BoundedObservationHeightPath.transport path state) =
      coarseObservationClass lift state := by
  rw [
    BoundedObservationHeightPath.transport_eq_heightStateTransport
  ]
  exact coarseObservationClass_heightStateTransport
    lift first.val last.val state

/-! ## Quotient coverage induced by fine diffusion -/

/-- Aggregate real heat in one coarse quotient fibre. -/
noncomputable def coarseObservationMass
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M)
    (heat : State → ℝ)
    (quotient : CoarseObservationQuotient M lift) : ℝ := by
  classical
  exact
    ∑ state : State,
      if coarseObservationClass lift state = quotient then
        heat state
      else 0

/-- Coarse quotient completeness means positive aggregate heat in every realized
coarse-feature class. -/
def CoarseObservationCompleteAt
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) (heat : State → ℝ) : Prop :=
  ∀ quotient : CoarseObservationQuotient M lift,
    0 < coarseObservationMass lift heat quotient

/-- Every coarse quotient class inherits at least the existing `1/6` state-level
real heat floor. The collision class actually contains two fine states, but no
stronger aggregate bound is required here. -/
theorem coarseObservationMass_oneSixth_lower
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M)
    (height : Nat)
    (quotient : CoarseObservationQuotient M lift) :
    (1 / 6 : ℝ) ≤
      coarseObservationMass lift
        (observationAt height).realHeat quotient := by
  classical
  obtain ⟨state, stateMaps⟩ :=
    coarseObservationClass_surjective lift quotient
  unfold coarseObservationMass
  calc
    (1 / 6 : ℝ) ≤
        (observationAt height).realHeat state :=
      (observationAt height).real_floor state
    _ =
        if coarseObservationClass lift state = quotient then
          (observationAt height).realHeat state
        else 0 := by
      simp [stateMaps]
    _ ≤
        ∑ candidate : State,
          if coarseObservationClass lift candidate = quotient then
            (observationAt height).realHeat candidate
          else 0 := by
      apply Finset.single_le_sum
      · intro candidate _
        by_cases candidateMaps :
            coarseObservationClass lift candidate = quotient
        · simp [candidateMaps]
          exact le_trans (by norm_num)
            ((observationAt height).real_floor candidate)
        · simp [candidateMaps]
      · exact Finset.mem_univ state

/-- Every height slice is complete after passage to the coarse quotient. -/
theorem coarseObservationCompleteAt_height
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) (height : Nat) :
    CoarseObservationCompleteAt lift
      (observationAt height).realHeat := by
  intro quotient
  exact lt_of_lt_of_le (by norm_num)
    (coarseObservationMass_oneSixth_lower
      lift height quotient)

/-- Fine-state completeness and coarse-quotient completeness hold together; the
latter does not replace the former. -/
theorem fine_and_coarse_observation_complete
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) (height : Nat) :
    TypeCompleteAt (fun state : State => state)
        (observationAt height).rationalHeat ∧
      CoarseObservationCompleteAt lift
        (observationAt height).realHeat := by
  exact ⟨(observationAt height).rational_type_complete,
    coarseObservationCompleteAt_height lift height⟩

/-! ## Strict information-loss controls -/

/-- The quotient map is not injective: the distinct states `3` and `3^2` have
the same coarse class. -/
theorem coarseObservationClass_not_injective
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) :
    ¬ Function.Injective (coarseObservationClass lift) := by
  intro injective
  have equalStates :=
    injective (coarseObservationClass_first_eq_second lift)
  exact (by decide : (1 : State) ≠ (2 : State)) equalStates

/-- No exact fine-state reconstruction map exists from the finite quotient. -/
theorem no_exact_coarseObservationQuotient_state_decoder
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) :
    ¬ ∃ decode : CoarseObservationQuotient M lift → State,
        ∀ state : State,
          decode (coarseObservationClass lift state) = state := by
  rintro ⟨decode, correct⟩
  have collision :=
    coarseObservationClass_first_eq_second lift
  have equalStates : (1 : State) = (2 : State) := by
    calc
      (1 : State) =
          decode (coarseObservationClass lift (1 : State)) :=
        (correct (1 : State)).symm
      _ = decode (coarseObservationClass lift (2 : State)) :=
        congrArg decode collision
      _ = (2 : State) := correct (2 : State)
  exact (by decide : (1 : State) ≠ (2 : State)) equalStates

/-- No exact exponent reconstruction map exists from the finite quotient. -/
theorem no_exact_coarseObservationQuotient_exponent_decoder
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) :
    ¬ ∃ decode : CoarseObservationQuotient M lift → ℕ,
        ∀ state : State,
          decode (coarseObservationClass lift state) =
            family.exponent state := by
  rintro ⟨decode, correct⟩
  apply family_exponent_first_ne_second
  calc
    family.exponent (1 : State) =
        decode (coarseObservationClass lift (1 : State)) :=
      (correct (1 : State)).symm
    _ = decode (coarseObservationClass lift (2 : State)) :=
      congrArg decode
        (coarseObservationClass_first_eq_second lift)
    _ = family.exponent (2 : State) :=
      correct (2 : State)

/-! ## Provenance-bearing quotient certificate -/

/-- Immutable source identity for the coarse observation functor consumed here. -/
def radicalKZeroObservationFunctorSource : SourceIdentity where
  kind := .leanDeclaration
  identifier :=
    "GRWTSK.Algebra.KTheory.PrimePowerHeightRadicalKZeroObservationFunctor"
  locator :=
    "heightRadicalKZeroObservation_transport; BoundedObservationHeightPath.radicalKZeroObservation_invariant; canonicalRadicalKZeroObservationBoundaryCertificate"
  repository := some "grwtsk/math"
  commit := some "31c0f78cd9a6e27f777d0f64808f929def0ca1f2"
  path := some
    "GRWTSK/Algebra/KTheory/PrimePowerHeightRadicalKZeroObservationFunctor.lean"
  blob := some "44406c48288c89f1508bf01685b6506f9349e58e"

/-- Complete finite quotient/completeness/information-loss package. -/
structure CoarseObservationQuotientBoundaryCertificate
    (M : Type*) [CommMonoid M] (lift : ℕ →* M) where
  quotientFinite :
    Finite (CoarseObservationQuotient M lift)
  exactFeatureKernel :
    ∀ first second : State,
      coarseObservationClass lift first =
          coarseObservationClass lift second ↔
        radicalKZeroFeature lift first =
          radicalKZeroFeature lift second
  exactClassKernel :
    ∀ first second : State,
      coarseObservationClass lift first =
          coarseObservationClass lift second ↔
        family.classOf first = family.classOf second
  twoClassCoverage :
    coarseObservationClass lift (0 : State) ≠
        coarseObservationClass lift (1 : State) ∧
      ∀ quotient : CoarseObservationQuotient M lift,
        quotient = coarseObservationClass lift (0 : State) ∨
          quotient = coarseObservationClass lift (1 : State)
  pathInvariant :
    ∀ (horizon : Nat)
      {first last : Fin (horizon + 1)}
      (path : BoundedObservationHeightPath horizon first last)
      (state : State),
      coarseObservationClass lift
          (BoundedObservationHeightPath.transport path state) =
        coarseObservationClass lift state
  fineComplete :
    ∀ height : Nat,
      TypeCompleteAt (fun state : State => state)
        (observationAt height).rationalHeat
  quotientComplete :
    ∀ height : Nat,
      CoarseObservationCompleteAt lift
        (observationAt height).realHeat
  quotientFloor :
    ∀ height quotient,
      (1 / 6 : ℝ) ≤
        coarseObservationMass lift
          (observationAt height).realHeat quotient
  strictLoss :
    ¬ Function.Injective (coarseObservationClass lift)
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

/-- Canonical finite quotient certificate for every explicitly supplied
multiplicative lift into a commutative stable-object monoid. -/
noncomputable def canonicalCoarseObservationQuotientBoundaryCertificate
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) :
    CoarseObservationQuotientBoundaryCertificate M lift where
  quotientFinite := inferInstance
  exactFeatureKernel := by
    intro first second
    exact coarseObservationClass_eq_iff_feature_eq
      lift first second
  exactClassKernel := by
    intro first second
    exact coarseObservationClass_eq_iff_class_eq
      lift first second
  twoClassCoverage :=
    coarseObservationQuotient_exactly_two_classes lift
  pathInvariant := by
    intro horizon first last path state
    exact coarseObservationClass_path_invariant
      lift path state
  fineComplete := by
    intro height
    exact (observationAt height).rational_type_complete
  quotientComplete := by
    intro height
    exact coarseObservationCompleteAt_height lift height
  quotientFloor := by
    intro height quotient
    exact coarseObservationMass_oneSixth_lower
      lift height quotient
  strictLoss :=
    coarseObservationClass_not_injective lift
  noStateDecoder :=
    no_exact_coarseObservationQuotient_state_decoder lift
  noExponentDecoder :=
    no_exact_coarseObservationQuotient_exponent_decoder lift
  proofProvenance := [
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
