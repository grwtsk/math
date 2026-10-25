import Authority

/-!
# Generic bridge interfaces

This file is independent of Boolean, Number, and AnalyticNumber.

It records the reusable proof-engineering pattern:

* a finite-to-target map is an approximation, not an equality of worlds;
* a target-to-finite map is a projection, not an inverse unless separately
  certified;
* exact equivalence is permitted only between two finite-stage models with the
  same information content;
* observable quotients are explicit when a finite projection forgets analytic or
  higher-level data.

The same vocabulary is instantiated twice in the project:

  Boolean → Number
  Number → AnalyticNumber

The composed Boolean → AnalyticNumber story is therefore not primitive. It is a
factorization through arithmetic semantics.
-/

namespace Bridge

/-- Precision metadata for a finite approximation or projection. -/
structure Precision where
  level : Nat
  errorNumerator : Nat
  errorExponent : Nat
  positiveLevel : level > 0

/-- Certificate-gated error bound. -/
structure ErrorBound where
  numerator : Nat
  exponent : Nat
  sound : Prop
  soundProof : sound

/-- Finite-to-target approximation with explicit precision and error metadata. -/
structure FiniteToTargetApproximation
    (Finite Target : Type) where
  lift : Finite → Target
  precision : Precision
  error : ErrorBound
  liftSound : Prop
  liftSoundProof : liftSound

/-- Target-to-finite projection with explicit precision and error metadata. -/
structure TargetToFiniteProjection
    (Target Finite : Type) where
  project : Target → Finite
  precision : Precision
  error : ErrorBound
  projectionSound : Prop
  projectionSoundProof : projectionSound

/--
A bidirectional bridge.

This is not a global bijection. It is a pair of certified maps plus round-trip
and refinement statements.
-/
structure BidirectionalBridge
    (Finite Target : Type) where
  toTarget : FiniteToTargetApproximation Finite Target
  toFinite : TargetToFiniteProjection Target Finite
  finiteRoundTripSound : Prop
  finiteRoundTripProof : finiteRoundTripSound
  targetRoundTripSound : Prop
  targetRoundTripProof : targetRoundTripSound
  refinementSound : Prop
  refinementProof : refinementSound

theorem finite_to_target_sound
    {Finite Target : Type}
    (B : BidirectionalBridge Finite Target) :
    B.toTarget.liftSound :=
  B.toTarget.liftSoundProof

theorem target_to_finite_sound
    {Finite Target : Type}
    (B : BidirectionalBridge Finite Target) :
    B.toFinite.projectionSound :=
  B.toFinite.projectionSoundProof

theorem bidirectional_bridge_has_round_trip_bounds
    {Finite Target : Type}
    (B : BidirectionalBridge Finite Target) :
    B.finiteRoundTripSound ∧ B.targetRoundTripSound :=
  ⟨B.finiteRoundTripProof, B.targetRoundTripProof⟩

theorem bidirectional_bridge_refinement_sound
    {Finite Target : Type}
    (B : BidirectionalBridge Finite Target) :
    B.refinementSound :=
  B.refinementProof

/--
Exact finite-stage equivalence.

This should be used only when both sides are finite-stage models carrying the
same information content.
-/
structure ExactFiniteEquivalence
    (Left Right : Type) where
  toRight : Left → Right
  toLeft : Right → Left
  leftInverse :
    ∀ x : Left, toLeft (toRight x) = x
  rightInverse :
    ∀ y : Right, toRight (toLeft y) = y

theorem exact_finite_equivalence_left
    {Left Right : Type}
    (E : ExactFiniteEquivalence Left Right)
    (x : Left) :
    E.toLeft (E.toRight x) = x :=
  E.leftInverse x

theorem exact_finite_equivalence_right
    {Left Right : Type}
    (E : ExactFiniteEquivalence Left Right)
    (y : Right) :
    E.toRight (E.toLeft y) = y :=
  E.rightInverse y

/--
Observable quotient interface.

A finite projection is usually many-to-one on richer objects. It becomes
bijective only after quotienting by finite observational equivalence.
-/
structure ObservableQuotient
    (Rich Finite : Type) where
  project : Rich → Finite
  equivalent : Rich → Rich → Prop
  equivalent_iff_same_projection :
    ∀ a b : Rich,
      equivalent a b ↔ project a = project b
  quotientRep : Finite → Rich
  quotientLeftInverse :
    ∀ x : Finite, project (quotientRep x) = x

theorem quotient_equivalent_iff_same_projection
    {Rich Finite : Type}
    (Q : ObservableQuotient Rich Finite)
    (a b : Rich) :
    Q.equivalent a b ↔ Q.project a = Q.project b :=
  Q.equivalent_iff_same_projection a b

theorem quotient_rep_projects_to_input
    {Rich Finite : Type}
    (Q : ObservableQuotient Rich Finite)
    (x : Finite) :
    Q.project (Q.quotientRep x) = x :=
  Q.quotientLeftInverse x

end Bridge
