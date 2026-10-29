-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rep.Variantf8fdff5f1e14fe7d9289c97b1e70a594c6129b7ba220f46567cc8ed1b7de3058","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f8fdff5f1e14fe7d9289c97b1e70a594c6129b7ba220f46567cc8ed1b7de3058","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Rep.Variantf8fdff5f1e14fe7d9289c97b1e70a594c6129b7ba220f46567cc8ed1b7de3058","mathematical_subject":"Foundations.Unclassified","original_sha256":"f8fdff5f1e14fe7d9289c97b1e70a594c6129b7ba220f46567cc8ed1b7de3058","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/DAF/Runtime/ReducerIR.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Domain-independent reducer IR

This intrinsically typed, total core contains only representation-independent
operations.  Matrix selection, packet framing, and finite-field conversion are
owned by domain adapters.  Consequently the runtime core has no dependency on
BinaryMatrix or filesystem modules.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rep.Variantf8fdff5f1e14fe7d9289c97b1e70a594c6129b7ba220f46567cc8ed1b7de3058

namespace DAF.Runtime

/-- Scalar and product representations supported by the generic reducer core. -/
inductive Rep : Type
  | natural
  | boolean
  | pair (left right : Rep)
  deriving DecidableEq, Repr

/-- Semantic interpretation of a generic runtime representation. -/
def Rep.Denote : Rep → Type
  | .natural => Nat
  | .boolean => Bool
  | .pair left right => left.Denote × right.Denote

/-- A total typed language for representation-independent reducers. -/
inductive ReducerIR : Rep → Rep → Type
  | identity : ReducerIR A A
  | compose : ReducerIR A B → ReducerIR B C → ReducerIR A C
  | pair : ReducerIR A B → ReducerIR A C → ReducerIR A (.pair B C)
  | projectLeft : ReducerIR (.pair A B) A
  | projectRight : ReducerIR (.pair A B) B
  | boolNot : ReducerIR .boolean .boolean
  | sequenceModulo (modulus : Nat) : ReducerIR .natural .natural

namespace ReducerIR

/-- Structural, total evaluation of the generic reducer language. -/
def eval : ReducerIR A B → A.Denote → B.Denote
  | .identity => id
  | .compose first second => fun input => second.eval (first.eval input)
  | .pair left right => fun input => (left.eval input, right.eval input)
  | .projectLeft => Prod.fst
  | .projectRight => Prod.snd
  | .boolNot => Bool.not
  | .sequenceModulo modulus => fun (sequence : Nat) => sequence % modulus

@[simp]
theorem eval_identity (value : A.Denote) :
    (identity : ReducerIR A A).eval value = value :=
  rfl

@[simp]
theorem eval_compose
    (first : ReducerIR A B)
    (second : ReducerIR B C)
    (value : A.Denote) :
    (compose first second).eval value = second.eval (first.eval value) :=
  rfl

@[simp]
theorem eval_sequenceModulo (modulus sequence : Nat) :
    (sequenceModulo modulus : ReducerIR .natural .natural).eval sequence =
      sequence % modulus :=
  rfl

end ReducerIR

end DAF.Runtime
