# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Approximation.Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8c8f9667c0671c19f3122da1ba87a96e7cf1404` · SHA-256 `6a45f520aeeac6a9aadf0fccea3f1dbffbd76a8768c72ef842a562e8a6bed505`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Precision.Variant1824dcf82ad91fd9706146db5dc9fbbc61126e6ec208c512278bb4062d7125ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1824dcf82ad91fd9706146db5dc9fbbc61126e6ec208c512278bb4062d7125ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Precision.Variant1824dcf82ad91fd9706146db5dc9fbbc61126e6ec208c512278bb4062d7125ea","mathematical_subject":"Foundations.Unclassified","original_sha256":"1824dcf82ad91fd9706146db5dc9fbbc61126e6ec208c512278bb4062d7125ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Bridge/Approximation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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

The composed Boolean → AnalyticNumber story is therefore not primitive.  It is a
factorization through arithmetic semantics.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Precision.Variant1824dcf82ad91fd9706146db5dc9fbbc61126e6ec208c512278bb4062d7125ea

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

This is not a global bijection.  It is a pair of certified maps plus
round-trip and refinement statements.
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

A finite projection is usually many-to-one on richer objects.  It becomes
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
```
