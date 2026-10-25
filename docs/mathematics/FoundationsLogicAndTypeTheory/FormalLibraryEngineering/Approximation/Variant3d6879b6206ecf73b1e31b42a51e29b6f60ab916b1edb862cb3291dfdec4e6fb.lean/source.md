# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Approximation.Variant3d6879b6206ecf73b1e31b42a51e29b6f60ab916b1edb862cb3291dfdec4e6fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc279ef07d1226c5ff08f5ea29da96bb9a55cc5e` · SHA-256 `57f82c5f6d60a8a8fd69370a6245800e3b35265b9488ac4761f65e52e85463d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Precision.Variant96fdd30f52785551ae0446ea20dd3263f612c621b9742789d2e49f22e27fa92e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"96fdd30f52785551ae0446ea20dd3263f612c621b9742789d2e49f22e27fa92e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Precision.Variant96fdd30f52785551ae0446ea20dd3263f612c621b9742789d2e49f22e27fa92e","mathematical_subject":"Foundations.Unclassified","original_sha256":"96fdd30f52785551ae0446ea20dd3263f612c621b9742789d2e49f22e27fa92e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Application Support/Claude/local-agent-mode-sessions/ca894c7e-fbfc-4f86-9031-8b5d43fd5945/be06d025-2292-49e3-808a-dc51ca23d607/local_0de9d1e0-f1a1-472f-98ec-503d7f23f427/outputs/formal 2/lib/Bridge/Approximation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Precision.Variant96fdd30f52785551ae0446ea20dd3263f612c621b9742789d2e49f22e27fa92e

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
```
