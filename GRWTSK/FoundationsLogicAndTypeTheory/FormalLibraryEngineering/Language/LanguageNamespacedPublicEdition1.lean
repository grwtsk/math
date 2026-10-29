-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LanguageId.Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LanguageId.Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:dd72b57dce63c25b6a039856/workspace/lib/Surface/Refactor/Syntax/Language.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.Transport.Hash

/-!
# Languages and parser identities for structural packets

Version one is intentionally closed: only Lean 4, TypeScript, TSX, and Rust
have wire codes.  Parser fingerprints identify an observation implementation;
they do not grant compiler or theorem authority.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LanguageId.Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534

public section

namespace Surface.Refactor.Syntax

open Surface.Core.Transport

@[surface_novel]
inductive LanguageId where
  | lean4
  | typescript
  | tsx
  | rust
deriving DecidableEq, Repr, BEq

@[expose] def LanguageId.code : LanguageId → Nat
  | .lean4 => 1
  | .typescript => 2
  | .tsx => 3
  | .rust => 4

@[expose] def LanguageId.ofCode? : Nat → Option LanguageId
  | 1 => some .lean4
  | 2 => some .typescript
  | 3 => some .tsx
  | 4 => some .rust
  | _ => none

@[surface_novel, surface_published]
theorem languageCode_roundtrip (language : LanguageId) :
    LanguageId.ofCode? language.code = some language := by
  cases language <;> rfl

@[surface_novel, surface_published]
theorem unknown_language_code_fails_closed (code : Nat)
    (notLean : code ≠ 1) (notTypescript : code ≠ 2)
    (notTsx : code ≠ 3) (notRust : code ≠ 4) :
    LanguageId.ofCode? code = none := by
  simp [LanguageId.ofCode?]

@[surface_novel]
structure ParserFingerprint where
  language : LanguageId
  implementationId : String
  implementationVersion : Nat
  normalizationSchemaVersion : Nat
  featureFlags : List String
  dialectOrEdition : String
deriving DecidableEq, Repr

@[expose] def ParserFingerprint.Valid (fingerprint : ParserFingerprint) : Prop :=
  fingerprint.implementationId ≠ "" ∧
    0 < fingerprint.implementationVersion ∧
    fingerprint.normalizationSchemaVersion = 1 ∧
    fingerprint.featureFlags.Nodup ∧
    fingerprint.dialectOrEdition ≠ ""

instance (fingerprint : ParserFingerprint) : Decidable fingerprint.Valid := by
  unfold ParserFingerprint.Valid
  infer_instance

@[surface_novel]
inductive ParserAuthority where
  | canonicalCompilerObserved
  | structuralParserObserved
  | recoveredPreview
  | invalid
deriving DecidableEq, Repr, BEq

@[expose] def ParserAuthority.isCanonicalCompilerObservation : ParserAuthority → Bool
  | .canonicalCompilerObserved => true
  | _ => false

@[surface_novel, surface_published]
theorem recoveredPreview_is_not_canonical :
    ParserAuthority.recoveredPreview.isCanonicalCompilerObservation = false :=
  rfl

@[surface_novel, surface_published]
theorem structuralParserObservation_is_not_canonical :
    ParserAuthority.structuralParserObserved.isCanonicalCompilerObservation = false :=
  rfl

@[surface_novel]
structure SourceFileIdentity where
  rootCode : Nat
  normalizedRelativePathHash : Hash256
  language : LanguageId
deriving DecidableEq, Repr

@[surface_novel]
structure SourceSnapshotId where
  sourceHash : Hash256
  sourceByteLength : Nat
deriving DecidableEq, Repr

@[surface_novel]
structure BuildTargetIdentity where
  stableCode : Nat
  targetNameHash : Hash256
deriving DecidableEq, Repr

end Surface.Refactor.Syntax
