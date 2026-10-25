# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Language.Variantcc55063edb3b27b86717f2e0fe1b6a7f10a9a2f85e985d427d19b2d220ae87a2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce451f5c8471f1b2fb44089c9edbf9624e05fd60` · SHA-256 `d570d5583b8b4d64fe319ffd60695b8016276eb2c3a779d265900f6331da0594`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LanguageId.Variant7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LanguageId.Variant7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:320433e3de5f4dfe34b2575f/workspace/lib/Surface/Refactor/Syntax/Language.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.Transport.Hash

/-!
# Languages and parser identities for structural packets

Version one is intentionally closed: only Lean 4, TypeScript, TSX, and Rust
have wire codes.  Parser fingerprints identify an observation implementation;
they do not grant compiler or theorem authority.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LanguageId.Variant7b276b53081cb835deb9833a0c7d3e4e1a8ca954da4173068f1010ed647177ea

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
  omega

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
