/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.Algebra.KTheory.PrimePowerHeightTransportGroupoid
import GRWTSK.Algebra.KTheory.RadicalCollisionBoundary
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

/-!
# Radical/K₀ observation functor for prime-power height transport

This module maps the coherent finite height-transport groupoid to the coarse
feature consisting of:

* the universal Grothendieck-group value obtained after arithmetic-radical
  compression; and
* the arithmetic radical itself.

The observation is invariant under every canonical height arrow. Equal-parity
arrows act identically on fine states, while opposite-parity arrows swap `3`
and `3^2`; these two states have the same radical and the same radical-factored
`K₀`-shaped value. A bounded path syntax with actual height-change steps proves
invariance under arbitrary finite path composition.

The construction simultaneously retains the existing fine-state diffusion
completeness and the decoding obstruction. Groupoid-coherent spectral transport
does not reconstruct the exponent-sensitive state or exponent from the coarse
radical/`K₀` feature.

The universal group completion used here is only `K₀`-shaped. No analytic or
geometric `K₀`, Frobenius action, Hilbert--Pólya operator, Chowla cancellation,
Kim--Vu probabilistic coupling, Riemann-hypothesis implication, logarithmic
radical identity, or arithmetic compression estimate is asserted.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Algebra.KTheory.PrimePowerArithmeticHeightDiffusion

open scoped BigOperators Matrix.Norms.Frobenius
open GRWTSK.Algebra.KTheory.RadicalCollisionBoundary
open GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyClassDiffusion
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState
open GRWTSK.GraphSandwichDiffusion

namespace AlternatingExponentProfile

/-! ## State transport underlying the vector groupoid -/

/-- Fine-state map underlying the canonical vector transport. Equal parity is
identity; opposite parity swaps the two states in the nontrivial radical class. -/
def heightStateTransport
    (sourceHeight targetHeight : Nat) (state : State) : State :=
  if sourceHeight % 2 = targetHeight % 2 then
    state
  else
    swapState state

@[simp]
theorem heightStateTransport_of_sameParity
    {sourceHeight targetHeight : Nat}
    (sameParity : sourceHeight % 2 = targetHeight % 2)
    (state : State) :
    heightStateTransport sourceHeight targetHeight state = state := by
  simp [heightStateTransport, sameParity]

@[simp]
theorem heightStateTransport_of_differentParity
    {sourceHeight targetHeight : Nat}
    (differentParity : sourceHeight % 2 ≠ targetHeight % 2)
    (state : State) :
    heightStateTransport sourceHeight targetHeight state =
      swapState state := by
  simp [heightStateTransport, differentParity]

@[simp]
theorem heightStateTransport_refl
    (height : Nat) (state : State) :
    heightStateTransport height height state = state := by
  simp [heightStateTransport]

/-- The state swap remains inside one arithmetic-radical collision class. -/
@[simp]
theorem family_class_swapState (state : State) :
    family.classOf (swapState state) = family.classOf state := by
  fin_cases state <;>
    norm_num [
      family,
      UnequalFiberExample.family,
      UnequalFiberExample.classOf,
      swapState
    ]

/-- Every canonical height arrow preserves the declared radical class. -/
theorem heightStateTransport_preserves_class
    (sourceHeight targetHeight : Nat) (state : State) :
    family.classOf
        (heightStateTransport sourceHeight targetHeight state) =
      family.classOf state := by
  by_cases sameParity :
      sourceHeight % 2 = targetHeight % 2
  · simp [heightStateTransport, sameParity]
  · simp [heightStateTransport, sameParity]

/-- Canonical fine-state transport composes through every intermediate height. -/
theorem heightStateTransport_comp
    (firstHeight middleHeight lastHeight : Nat)
    (state : State) :
    heightStateTransport middleHeight lastHeight
        (heightStateTransport firstHeight middleHeight state) =
      heightStateTransport firstHeight lastHeight state := by
  have firstModLt : firstHeight % 2 < 2 :=
    Nat.mod_lt _ (by norm_num)
  have middleModLt : middleHeight % 2 < 2 :=
    Nat.mod_lt _ (by norm_num)
  have lastModLt : lastHeight % 2 < 2 :=
    Nat.mod_lt _ (by norm_num)
  by_cases firstMiddle :
      firstHeight % 2 = middleHeight % 2
  · by_cases middleLast :
        middleHeight % 2 = lastHeight % 2
    · have firstLast :
          firstHeight % 2 = lastHeight % 2 :=
        firstMiddle.trans middleLast
      simp [heightStateTransport, firstMiddle, middleLast, firstLast]
    · have firstLast :
          firstHeight % 2 ≠ lastHeight % 2 := by
        intro equality
        apply middleLast
        exact firstMiddle.symm.trans equality
      simp [heightStateTransport, firstMiddle, middleLast, firstLast]
  · by_cases middleLast :
        middleHeight % 2 = lastHeight % 2
    · have firstLast :
          firstHeight % 2 ≠ lastHeight % 2 := by
        intro equality
        apply firstMiddle
        exact equality.trans middleLast.symm
      simp [heightStateTransport, firstMiddle, middleLast, firstLast]
    · have firstLast :
          firstHeight % 2 = lastHeight % 2 := by
        omega
      simp [heightStateTransport, firstMiddle, middleLast, firstLast]

@[simp]
theorem heightStateTransport_inverse_left
    (sourceHeight targetHeight : Nat) (state : State) :
    heightStateTransport targetHeight sourceHeight
        (heightStateTransport sourceHeight targetHeight state) =
      state := by
  calc
    heightStateTransport targetHeight sourceHeight
        (heightStateTransport sourceHeight targetHeight state) =
      heightStateTransport sourceHeight sourceHeight state :=
        heightStateTransport_comp
          sourceHeight targetHeight sourceHeight state
    _ = state := heightStateTransport_refl sourceHeight state

@[simp]
theorem heightStateTransport_inverse_right
    (sourceHeight targetHeight : Nat) (state : State) :
    heightStateTransport sourceHeight targetHeight
        (heightStateTransport targetHeight sourceHeight state) =
      state := by
  calc
    heightStateTransport sourceHeight targetHeight
        (heightStateTransport targetHeight sourceHeight state) =
      heightStateTransport targetHeight targetHeight state :=
        heightStateTransport_comp
          targetHeight sourceHeight targetHeight state
    _ = state := heightStateTransport_refl targetHeight state

/-- The state transport is the map underlying vector transport on coordinate
vectors. This binds the observation functor to the existing operator groupoid. -/
theorem heightTransport_coordinateVector
    (sourceHeight targetHeight : Nat) (state : State) :
    heightTransport sourceHeight targetHeight
        (coordinateVector state) =
      coordinateVector
        (heightStateTransport sourceHeight targetHeight state) := by
  by_cases sameParity :
      sourceHeight % 2 = targetHeight % 2
  · simp [heightTransport, heightStateTransport, sameParity]
  · funext candidate
    fin_cases state <;> fin_cases candidate <;>
      simp [
        heightTransport,
        heightStateTransport,
        sameParity,
        coordinateVector,
        swapVector,
        swapState
      ]

/-! ## Coarse radical/K₀ observation -/

/-- Coarse feature retained by the observation functor. The first coordinate is
the universal group-completion value after radical compression; the second is
the arithmetic radical itself. -/
abbrev RadicalKZeroFeature
    (M : Type*) [CommMonoid M] :=
  GrothendieckKZero M × ℕ

/-- Coarse feature of one fine arithmetic state. -/
def radicalKZeroFeature
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) (state : State) :
    RadicalKZeroFeature M :=
  (kZeroRadical lift (family.value state),
    Nat.radical (family.value state))

/-- Height-indexed observation. Its value is deliberately independent of height;
naturality concerns the transported fine state. -/
def heightRadicalKZeroObservation
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) (_height : Nat) (state : State) :
    RadicalKZeroFeature M :=
  radicalKZeroFeature lift state

/-- Equal collision class gives equal paired radical/K₀ feature. -/
theorem radicalKZeroFeature_eq_of_class_eq
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) {first second : State}
    (sameClass :
      family.classOf first = family.classOf second) :
    radicalKZeroFeature lift first =
      radicalKZeroFeature lift second := by
  apply Prod.ext
  · exact family.kZero_eq_of_class_eq lift sameClass
  · exact
      (family.radical_eq_iff_class_eq first second).2 sameClass

/-- The coarse observation is natural under every canonical height arrow. -/
theorem heightRadicalKZeroObservation_transport
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M)
    (sourceHeight targetHeight : Nat) (state : State) :
    heightRadicalKZeroObservation lift targetHeight
        (heightStateTransport sourceHeight targetHeight state) =
      heightRadicalKZeroObservation lift sourceHeight state := by
  apply radicalKZeroFeature_eq_of_class_eq
  exact heightStateTransport_preserves_class
    sourceHeight targetHeight state

/-- Typed finite observation functor from height arrows to equality of coarse
features. The state map is retained explicitly, rather than inferred from common
Graph Sandwich support. -/
structure HeightRadicalKZeroObservationFunctor
    (M : Type*) [CommMonoid M] (lift : ℕ →* M) where
  observe : Nat → State → RadicalKZeroFeature M
  stateMap : Nat → Nat → State → State
  observe_spec :
    ∀ height state,
      observe height state =
        heightRadicalKZeroObservation lift height state
  stateMap_spec :
    ∀ sourceHeight targetHeight state,
      stateMap sourceHeight targetHeight state =
        heightStateTransport sourceHeight targetHeight state
  mapIdentity :
    ∀ height state,
      stateMap height height state = state
  mapComposition :
    ∀ firstHeight middleHeight lastHeight state,
      stateMap middleHeight lastHeight
          (stateMap firstHeight middleHeight state) =
        stateMap firstHeight lastHeight state
  naturality :
    ∀ sourceHeight targetHeight state,
      observe targetHeight
          (stateMap sourceHeight targetHeight state) =
        observe sourceHeight state

/-- Canonical coarse observation functor on the parity/swap height groupoid. -/
def canonicalHeightRadicalKZeroObservationFunctor
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) :
    HeightRadicalKZeroObservationFunctor M lift where
  observe := heightRadicalKZeroObservation lift
  stateMap := heightStateTransport
  observe_spec := by
    intro height state
    rfl
  stateMap_spec := by
    intro sourceHeight targetHeight state
    rfl
  mapIdentity := heightStateTransport_refl
  mapComposition := heightStateTransport_comp
  naturality := heightRadicalKZeroObservation_transport lift

/-! ## Bounded paths with genuine height-change steps -/

/-- Bounded path syntax with an actual elementary arrow between any two selected
heights. This provides non-vacuous height-changing paths in the finite horizon. -/
inductive BoundedObservationHeightPath (horizon : Nat) :
    Fin (horizon + 1) → Fin (horizon + 1) → Type
  | refl (height : Fin (horizon + 1)) :
      BoundedObservationHeightPath horizon height height
  | step (source target : Fin (horizon + 1)) :
      BoundedObservationHeightPath horizon source target
  | compose
      {first middle last : Fin (horizon + 1)}
      (left : BoundedObservationHeightPath horizon first middle)
      (right : BoundedObservationHeightPath horizon middle last) :
      BoundedObservationHeightPath horizon first last

namespace BoundedObservationHeightPath

/-- Fine-state transport along a bounded observation path. -/
def transport
    {horizon : Nat}
    {first last : Fin (horizon + 1)} :
    BoundedObservationHeightPath horizon first last →
      State → State
  | .refl _ => fun state => state
  | .step source target =>
      heightStateTransport source.val target.val
  | .compose left right =>
      fun state => transport right (transport left state)

@[simp]
theorem transport_refl
    {horizon : Nat}
    (height : Fin (horizon + 1)) (state : State) :
    transport (.refl height) state = state :=
  rfl

@[simp]
theorem transport_step
    {horizon : Nat}
    (source target : Fin (horizon + 1)) (state : State) :
    transport (.step source target) state =
      heightStateTransport source.val target.val state :=
  rfl

@[simp]
theorem transport_compose
    {horizon : Nat}
    {first middle last : Fin (horizon + 1)}
    (left : BoundedObservationHeightPath horizon first middle)
    (right : BoundedObservationHeightPath horizon middle last)
    (state : State) :
    transport (.compose left right) state =
      transport right (transport left state) :=
  rfl

/-- Every composed path contracts to the canonical endpoint state transport. -/
theorem transport_eq_heightStateTransport
    {horizon : Nat}
    {first last : Fin (horizon + 1)}
    (path : BoundedObservationHeightPath horizon first last)
    (state : State) :
    transport path state =
      heightStateTransport first.val last.val state := by
  induction path generalizing state with
  | refl height =>
      exact heightStateTransport_refl height.val state
  | step source target =>
      rfl
  | compose left right leftIH rightIH =>
      simp only [transport_compose]
      rw [leftIH, rightIH]
      exact heightStateTransport_comp _ _ _ state

/-- Reverse a bounded path. -/
def reverse
    {horizon : Nat}
    {first last : Fin (horizon + 1)} :
    BoundedObservationHeightPath horizon first last →
      BoundedObservationHeightPath horizon last first
  | .refl height => .refl height
  | .step source target => .step target source
  | .compose left right =>
      .compose (reverse right) (reverse left)

/-- Reversing the path recovers the original fine state. -/
@[simp]
theorem reverse_transport_inverse
    {horizon : Nat}
    {first last : Fin (horizon + 1)}
    (path : BoundedObservationHeightPath horizon first last)
    (state : State) :
    transport (reverse path) (transport path state) = state := by
  calc
    transport (reverse path) (transport path state) =
      heightStateTransport last.val first.val
        (heightStateTransport first.val last.val state) := by
          rw [transport_eq_heightStateTransport,
            transport_eq_heightStateTransport]
    _ = state :=
      heightStateTransport_inverse_left
        first.val last.val state

/-- Coarse radical/K₀ observation is invariant under every bounded path. -/
theorem radicalKZeroObservation_invariant
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M)
    {horizon : Nat}
    {first last : Fin (horizon + 1)}
    (path : BoundedObservationHeightPath horizon first last)
    (state : State) :
    heightRadicalKZeroObservation lift last.val
        (transport path state) =
      heightRadicalKZeroObservation lift first.val state := by
  rw [transport_eq_heightStateTransport]
  exact heightRadicalKZeroObservation_transport
    lift first.val last.val state

end BoundedObservationHeightPath

/-! ## Concrete collision and decoding obstruction -/

/-- Opposite-parity transport sends the state `3` to the state `3^2`. -/
@[simp]
theorem heightStateTransport_zero_one_first :
    heightStateTransport 0 1 (1 : State) = (2 : State) := by
  norm_num [heightStateTransport, swapState]

/-- The two transported states have distinct exponent-sensitive types. -/
theorem family_exponent_first_ne_second :
    family.exponent (1 : State) ≠
      family.exponent (2 : State) := by
  norm_num [
    family,
    UnequalFiberExample.family,
    UnequalFiberExample.exponent
  ]

/-- The opposite-parity state transport changes the exponent-sensitive type. -/
theorem zeroOne_transport_changes_exponent :
    family.exponent
        (heightStateTransport 0 1 (1 : State)) ≠
      family.exponent (1 : State) := by
  rw [heightStateTransport_zero_one_first]
  exact family_exponent_first_ne_second.symm

/-- The same transported pair has identical coarse radical/K₀ feature. -/
theorem radicalKZeroFeature_first_eq_second
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) :
    radicalKZeroFeature lift (1 : State) =
      radicalKZeroFeature lift (2 : State) := by
  apply radicalKZeroFeature_eq_of_class_eq
  norm_num [
    family,
    UnequalFiberExample.family,
    UnequalFiberExample.classOf
  ]

/-- No exact fine-state decoder factors through the coarse paired feature. -/
theorem no_exact_radicalKZero_state_decoder
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) :
    ¬ ∃ decode : RadicalKZeroFeature M → State,
        ∀ state : State,
          decode (radicalKZeroFeature lift state) = state := by
  change
    ¬ ∃ decode : GrothendieckKZero M × ℕ → State,
        ∀ state : State,
          decode
              (kZeroRadical lift (family.value state),
                Nat.radical (family.value state)) = state
  exact
    (profileAt 0).no_exact_feature_decoder_of_class_collision
      lift
      (first := (1 : State))
      (second := (2 : State))
      (by
        norm_num [
          family,
          UnequalFiberExample.family,
          UnequalFiberExample.classOf
        ])
      (by decide)

/-- No exact exponent decoder factors through the coarse paired feature. -/
theorem no_exact_radicalKZero_exponent_decoder
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) :
    ¬ ∃ decode : RadicalKZeroFeature M → ℕ,
        ∀ state : State,
          decode (radicalKZeroFeature lift state) =
            family.exponent state := by
  rintro ⟨decode, correct⟩
  apply family_exponent_first_ne_second
  calc
    family.exponent (1 : State) =
        decode (radicalKZeroFeature lift (1 : State)) :=
      (correct (1 : State)).symm
    _ = decode (radicalKZeroFeature lift (2 : State)) :=
      congrArg decode (radicalKZeroFeature_first_eq_second lift)
    _ = family.exponent (2 : State) :=
      correct (2 : State)

/-- Even after arbitrary coherent height-path transport, no decoder can recover
the endpoint exponent from the path-invariant coarse observation. -/
theorem no_exact_path_exponent_decoder
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) :
    ¬ ∃ decode : RadicalKZeroFeature M → ℕ,
        ∀ (horizon : Nat)
          (first last : Fin (horizon + 1))
          (path : BoundedObservationHeightPath horizon first last)
          (state : State),
          decode
              (heightRadicalKZeroObservation lift last.val
                (BoundedObservationHeightPath.transport path state)) =
            family.exponent
              (BoundedObservationHeightPath.transport path state) := by
  rintro ⟨decode, correct⟩
  apply no_exact_radicalKZero_exponent_decoder lift
  refine ⟨decode, ?_⟩
  intro state
  have atRefl :=
    correct 0 (0 : Fin 1) (0 : Fin 1)
      (BoundedObservationHeightPath.refl (0 : Fin 1)) state
  simpa [
    BoundedObservationHeightPath.transport,
    heightRadicalKZeroObservation
  ] using atRefl

/-! ## Completeness/identifiability boundary with provenance -/

/-- Immutable source identity for the coherent height-transport groupoid. -/
def heightTransportGroupoidSource : SourceIdentity where
  kind := .leanDeclaration
  identifier :=
    "GRWTSK.Algebra.KTheory.PrimePowerHeightTransportGroupoid"
  locator :=
    "heightTransport; heightTransport_intertwines; canonicalHeightTransportCoherenceCertificate"
  repository := some "grwtsk/math"
  commit := some "7adebb9a732f33ccf586d1575c30e2a60dae35ab"
  path := some
    "GRWTSK/Algebra/KTheory/PrimePowerHeightTransportGroupoid.lean"
  blob := some "7f54a5ccf00b6a22bbe1ce9b0cb460d43ee69979"

/-- Immutable dependency identity for the coarse radical/K₀ collision boundary. -/
def coarseRadicalCollisionSource : SourceIdentity where
  kind := .leanDeclaration
  identifier :=
    "GRWTSK.Algebra.KTheory.RadicalCollisionBoundary"
  locator :=
    "kZeroRadical_eq_of_radical_eq; no_exact_nat_type_decoder; no_type_complete_feature_only_steering_of_collision"
  repository := some "grwtsk/math"
  commit := some "12415749e8a200e1f9b4852bfbe286c478f40670"
  path := some
    "GRWTSK/Algebra/KTheory/RadicalCollisionBoundary.lean"
  blob := some "cb089379fe59d20f73168057ba920fd0591f81a2"

/-- Complete finite boundary package: diffusion is fine-state complete at every
height, coarse observations are path invariant, and exact fine-state or exponent
decoding remains impossible. -/
structure RadicalKZeroObservationBoundaryCertificate
    (M : Type*) [CommMonoid M] (lift : ℕ →* M) where
  observationFunctor :
    HeightRadicalKZeroObservationFunctor M lift
  pathInvariant :
    ∀ (horizon : Nat)
      {first last : Fin (horizon + 1)}
      (path : BoundedObservationHeightPath horizon first last)
      (state : State),
      heightRadicalKZeroObservation lift last.val
          (BoundedObservationHeightPath.transport path state) =
        heightRadicalKZeroObservation lift first.val state
  fineTypeComplete :
    ∀ height : Nat,
      TypeCompleteAt (fun state : State => state)
        (observationAt height).rationalHeat
  coarseCollision :
    radicalKZeroFeature lift (1 : State) =
      radicalKZeroFeature lift (2 : State)
  exponentSeparation :
    family.exponent (1 : State) ≠
      family.exponent (2 : State)
  noStateDecoder :
    ¬ ∃ decode : RadicalKZeroFeature M → State,
        ∀ state : State,
          decode (radicalKZeroFeature lift state) = state
  noExponentDecoder :
    ¬ ∃ decode : RadicalKZeroFeature M → ℕ,
        ∀ state : State,
          decode (radicalKZeroFeature lift state) =
            family.exponent state
  proofProvenance : List SourceIdentity
  analogyProvenance : List SourceIdentity
  unresolvedSuppliers : List SourceIdentity

/-- Canonical completeness/identifiability boundary for every multiplicative
lift into a supplied commutative stable-object monoid. -/
def canonicalRadicalKZeroObservationBoundaryCertificate
    {M : Type*} [CommMonoid M]
    (lift : ℕ →* M) :
    RadicalKZeroObservationBoundaryCertificate M lift where
  observationFunctor :=
    canonicalHeightRadicalKZeroObservationFunctor lift
  pathInvariant := by
    intro horizon first last path state
    exact
      BoundedObservationHeightPath.radicalKZeroObservation_invariant
        lift path state
  fineTypeComplete := by
    intro height
    exact (observationAt height).rational_type_complete
  coarseCollision :=
    radicalKZeroFeature_first_eq_second lift
  exponentSeparation :=
    family_exponent_first_ne_second
  noStateDecoder :=
    no_exact_radicalKZero_state_decoder lift
  noExponentDecoder :=
    no_exact_radicalKZero_exponent_decoder lift
  proofProvenance := [
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
