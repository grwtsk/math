# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SemanticCoding.Variantaeaedaae727e8d7d58b40659da4605e365c0b138487fc53ed4799c3ba1df9bd0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d83b0edfcfd289f44fade1f03537f0ae70f8ccbd` · SHA-256 `c7b14b41aefad7c0f7e1a337b3a2872b904e340dc2ba85f133b5f6e6ec6c9b33`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SemanticTyping.Variant2c4a3fbb084e9a03ddd1fe275f02ecb70e85ade5ac766c0e1bb5cc7963a724d9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2c4a3fbb084e9a03ddd1fe275f02ecb70e85ade5ac766c0e1bb5cc7963a724d9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.SemanticTyping.Variant2c4a3fbb084e9a03ddd1fe275f02ecb70e85ade5ac766c0e1bb5cc7963a724d9","mathematical_subject":"Logic.Foundations","original_sha256":"2c4a3fbb084e9a03ddd1fe275f02ecb70e85ade5ac766c0e1bb5cc7963a724d9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Cubical/SemanticCoding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Logic.Equiv.Basic

/-!
# Typed semantic cube coding

A Boolean coordinate is meaningful only through a declared predicate kind and
an exact predicate on states.  A `CodingEquivalenceInvariant` is the stronger
certificate required to identify the complete state space with the cube.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SemanticTyping.Variant2c4a3fbb084e9a03ddd1fe275f02ecb70e85ade5ac766c0e1bb5cc7963a724d9

namespace Mathematics.Cubical

universe u v w

/-- The predicate and semantic kind carried by every Boolean coordinate. -/
structure SemanticTyping
    (State : Type u) (Coordinate : Type v) (PredicateKind : Type w) where
  kind : Coordinate → PredicateKind
  holds : Coordinate → State → Prop
  encode : State → Coordinate → Bool
  encode_eq_true_iff :
    ∀ state coordinate,
      encode state coordinate = true ↔
        holds coordinate state

/--
The exact invariant needed before the semantic state space may be identified
with all vertices of a Boolean cube.
-/
structure CodingEquivalenceInvariant
    (State : Type u) (Coordinate : Type v) (PredicateKind : Type w) where
  typing : SemanticTyping State Coordinate PredicateKind
  equivalence : State ≃ (Coordinate → Bool)
  agrees :
    ∀ state coordinate,
      equivalence state coordinate =
        typing.encode state coordinate

namespace CodingEquivalenceInvariant

variable {State : Type u} {Coordinate : Type v} {PredicateKind : Type w}

/-- Complete semantic cube coding separates distinct mathematical states. -/
theorem encode_injective
    (certificate :
      CodingEquivalenceInvariant State Coordinate PredicateKind) :
    Function.Injective certificate.typing.encode := by
  intro left right equalEncoding
  apply certificate.equivalence.injective
  funext coordinate
  rw [certificate.agrees, certificate.agrees]
  exact congrFun equalEncoding coordinate

/-- Every Boolean vertex has one state when the coding equivalence is given. -/
theorem encode_surjective
    (certificate :
      CodingEquivalenceInvariant State Coordinate PredicateKind) :
    Function.Surjective certificate.typing.encode := by
  intro bits
  let state := certificate.equivalence.symm bits
  refine ⟨state, ?_⟩
  funext coordinate
  rw [← certificate.agrees]
  simp [state]

end CodingEquivalenceInvariant

/--
An admissible semantic automorphism acts on both states and coordinates and
preserves predicate kinds and truth values.
-/
structure SemanticAutomorphism
    {State : Type u} {Coordinate : Type v} {PredicateKind : Type w}
    (typing : SemanticTyping State Coordinate PredicateKind) where
  state : Equiv.Perm State
  coordinate : Equiv.Perm Coordinate
  preservesKind :
    ∀ index, typing.kind (coordinate index) = typing.kind index
  preservesTruth :
    ∀ index value,
      typing.holds (coordinate index) (state value) ↔
        typing.holds index value

/-- Semantic automorphisms transport the encoded bitfield exactly. -/
theorem SemanticAutomorphism.encode_equivariant
    {State : Type u} {Coordinate : Type v} {PredicateKind : Type w}
    {typing : SemanticTyping State Coordinate PredicateKind}
    (automorphism : SemanticAutomorphism typing)
    (value : State) (index : Coordinate) :
    typing.encode (automorphism.state value)
        (automorphism.coordinate index) =
      typing.encode value index := by
  apply Bool.eq_iff_iff.mpr
  rw [typing.encode_eq_true_iff, typing.encode_eq_true_iff]
  exact automorphism.preservesTruth index value

end Mathematics.Cubical
```
