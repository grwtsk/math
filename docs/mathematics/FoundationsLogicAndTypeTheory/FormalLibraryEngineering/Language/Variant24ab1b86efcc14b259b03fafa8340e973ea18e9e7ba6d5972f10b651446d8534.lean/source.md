# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Language.Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38cd109cb3a2b9a0105378c06a645c9c668cbb38` · SHA-256 `24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core.Transport.Hash

/-!
# Languages and parser identities for structural packets

Version one is intentionally closed: only Lean 4, TypeScript, TSX, and Rust
have wire codes.  Parser fingerprints identify an observation implementation;
they do not grant compiler or theorem authority.
-/

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
```
