# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reference.Variant1c6c293f289382695b14ef45f86f4bc450893e908db53f535ae18448b789dcf4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d52ecdda19efdad2389d56bbde53bfdc353fff1` · SHA-256 `a9a5c6eef417cb7c63d7c66793e171a936ae8d9809e66e9ba6ff6cfe08a1afba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModuleIdentity.Variant057c611c96338bb2a2fc86935551f6d0e61e0f9c08ea58ef085408fece2c5de5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"057c611c96338bb2a2fc86935551f6d0e61e0f9c08ea58ef085408fece2c5de5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ModuleIdentity.Variant057c611c96338bb2a2fc86935551f6d0e61e0f9c08ea58ef085408fece2c5de5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"057c611c96338bb2a2fc86935551f6d0e61e0f9c08ea58ef085408fece2c5de5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:dd72b57dce63c25b6a039856/workspace/lib/Surface/Refactor/Syntax/Reference.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.Syntax.Declaration

/-! # Modules, imports, and symbol references -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModuleIdentity.Variant057c611c96338bb2a2fc86935551f6d0e61e0f9c08ea58ef085408fece2c5de5

public section

namespace Surface.Refactor.Syntax

open Surface.Core.Transport

@[surface_novel]
structure ModuleIdentity where
  stableCode : Nat
  moduleNameHash : Hash256
deriving DecidableEq, Repr

@[surface_novel]
structure ReferenceIdentity where
  snapshotHash : Hash256
  stableCode : Nat
deriving DecidableEq, Repr

@[surface_novel]
structure ImportIdentity where
  snapshotHash : Hash256
  stableCode : Nat
deriving DecidableEq, Repr

@[surface_novel]
inductive ReferenceResolution where
  | unresolved
  | syntacticallyAssociated
  | compilerResolved
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure ReferenceRecord where
  identity : ReferenceIdentity
  sourceNodeIndex : Nat
  sourceSpan : SourceSpan
  symbolStringIndex : Nat
  targetDeclarationIndex : Option Nat
  resolution : ReferenceResolution
deriving DecidableEq, Repr

@[expose] def ReferenceRecord.Valid
    (layout : SourceByteLayout) (nodeCount stringCount declarationCount : Nat)
    (reference : ReferenceRecord) : Prop :=
  reference.sourceNodeIndex < nodeCount ∧
    reference.sourceSpan.Valid layout ∧
    reference.symbolStringIndex < stringCount ∧
    OptionalIndexValid declarationCount reference.targetDeclarationIndex

@[surface_novel]
inductive ImportKind where
  | leanImport
  | typescriptImport
  | typescriptExport
  | rustUse
  | rustModule
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure ImportRecord where
  identity : ImportIdentity
  kind : ImportKind
  sourceNodeIndex : Nat
  moduleStringIndex : Nat
  resolvedModuleIndex : Option Nat
deriving DecidableEq, Repr

@[expose] def ImportRecord.Valid
    (nodeCount stringCount moduleCount : Nat) (record : ImportRecord) : Prop :=
  record.sourceNodeIndex < nodeCount ∧
    record.moduleStringIndex < stringCount ∧
    OptionalIndexValid moduleCount record.resolvedModuleIndex

end Surface.Refactor.Syntax
```
