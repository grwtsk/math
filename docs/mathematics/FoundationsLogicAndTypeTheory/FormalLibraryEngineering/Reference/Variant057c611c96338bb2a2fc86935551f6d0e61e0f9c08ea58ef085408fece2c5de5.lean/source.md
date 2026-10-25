# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reference.Variant057c611c96338bb2a2fc86935551f6d0e61e0f9c08ea58ef085408fece2c5de5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `100a00cd7f00dec6f805b1b930578a298e1db223` · SHA-256 `057c611c96338bb2a2fc86935551f6d0e61e0f9c08ea58ef085408fece2c5de5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Refactor.Syntax.Declaration

/-! # Modules, imports, and symbol references -/

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
