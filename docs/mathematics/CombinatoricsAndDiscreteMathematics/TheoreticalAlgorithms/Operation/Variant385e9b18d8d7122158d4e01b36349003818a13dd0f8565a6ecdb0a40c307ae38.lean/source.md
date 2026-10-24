# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Operation.Variant385e9b18d8d7122158d4e01b36349003818a13dd0f8565a6ecdb0a40c307ae38

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `acd86c2a40dace23b2fb369218e1accf83efe7d1` · SHA-256 `3aa43e4a6c3dffde02494a46db8e540e388b1e21593145fb453b6a8d081f8a19`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SurgeryOperationContext.Variant5bc1cc4ff8b81c2440717434e0bef070867374c25104b8ca321f38a97552cb9a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5bc1cc4ff8b81c2440717434e0bef070867374c25104b8ca321f38a97552cb9a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SurgeryOperationContext.Variant5bc1cc4ff8b81c2440717434e0bef070867374c25104b8ca321f38a97552cb9a","mathematical_subject":"Computation.DataStructures","original_sha256":"5bc1cc4ff8b81c2440717434e0bef070867374c25104b8ca321f38a97552cb9a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:dd72b57dce63c25b6a039856/workspace/lib/Surface/Refactor/Surgery/Operation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.Syntax.Packet
public import Surface.Core.Transport.Bytes

/-!
# Typed structural surgery operations

Structural operations are immutable intents resolved against one exact structural
packet.  Their only source-mutation representation is an ordered list of guarded,
half-open byte edits.  This module is a pure finite model: it performs no path
resolution, parser execution, hashing, or filesystem I/O.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SurgeryOperationContext.Variant5bc1cc4ff8b81c2440717434e0bef070867374c25104b8ca321f38a97552cb9a

public section

namespace Surface.Refactor.Surgery

open Surface.Core.Transport Surface.Refactor.Syntax

/-- Immutable context shared by every version-one structural operation. -/
@[surface_novel]
structure SurgeryOperationContext where
  schemaVersion : Nat
  operationId : Hash256
  baseSourceSnapshotHash : Hash256
  baseRepositoryRevision : Nat
  language : LanguageId
  targetFile : SourceFileIdentity
  targetNode : Option SyntaxNodeId
  targetDeclaration : Option DeclarationIdentity
  expectedSourceSpan : SourceSpan
  expectedSourceSliceHash : Hash256
deriving DecidableEq, Repr

@[expose] def SurgeryOperationContext.Valid
    (context : SurgeryOperationContext) : Prop :=
  context.schemaVersion = 1 ∧
    context.operationId.Valid ∧
    context.baseSourceSnapshotHash.Valid ∧
    context.expectedSourceSliceHash.Valid ∧
    context.targetFile.language = context.language ∧
    FitsU32 context.baseRepositoryRevision

@[surface_novel]
structure InsertTokenPayload where
  tokenKindCode : Nat
  bytes : CanonicalBytes
deriving DecidableEq, Repr

@[surface_novel]
structure RemoveTokenPayload where
  tokenIndex : Nat
deriving DecidableEq, Repr

@[surface_novel]
structure ReplaceTokenPayload where
  tokenIndex : Nat
  replacementKindCode : Nat
  replacementBytes : CanonicalBytes
deriving DecidableEq, Repr

@[surface_novel]
structure ReplaceNodeTextPayload where
  node : SyntaxNodeId
  replacementBytes : CanonicalBytes
deriving DecidableEq, Repr

@[surface_novel]
structure MoveSubtreePayload where
  sourceNode : SyntaxNodeId
  destinationFile : SourceFileIdentity
  destinationParent : SyntaxNodeId
  destinationOrdinal : Nat
deriving DecidableEq, Repr

@[surface_novel]
structure CopySubtreePayload where
  sourceNode : SyntaxNodeId
  destinationFile : SourceFileIdentity
  destinationParent : SyntaxNodeId
  destinationOrdinal : Nat
deriving DecidableEq, Repr

@[surface_novel]
structure DeleteSubtreePayload where
  rootNode : SyntaxNodeId
deriving DecidableEq, Repr

@[surface_novel]
structure ImportPayload where
  moduleNameUtf8 : CanonicalBytes
  compilerResolved : Bool
deriving DecidableEq, Repr

@[surface_novel]
structure RenameSymbolPayload where
  declaration : DeclarationIdentity
  replacementNameUtf8 : CanonicalBytes
  compilerResolvedReferenceCount : Nat
deriving DecidableEq, Repr

@[surface_novel]
structure MoveDeclarationPayload where
  declaration : DeclarationIdentity
  destinationFile : SourceFileIdentity
  destinationNode : Option SyntaxNodeId
  compilerResolvedReferenceCount : Nat
deriving DecidableEq, Repr

@[surface_novel]
structure ReplaceProofBodyPayload where
  declaration : DeclarationIdentity
  replacementBytes : CanonicalBytes
  expectedNormalizedTypeHash : Hash256
deriving DecidableEq, Repr

/--
Closed version-one operation language.  Every constructor carries the complete
snapshot/revision/language/span guard through `SurgeryOperationContext`.
-/
@[surface_novel]
inductive SurgeryOperation where
  | insertToken (context : SurgeryOperationContext) (payload : InsertTokenPayload)
  | removeToken (context : SurgeryOperationContext) (payload : RemoveTokenPayload)
  | replaceToken (context : SurgeryOperationContext) (payload : ReplaceTokenPayload)
  | replaceNodeText (context : SurgeryOperationContext) (payload : ReplaceNodeTextPayload)
  | moveSubtree (context : SurgeryOperationContext) (payload : MoveSubtreePayload)
  | copySubtree (context : SurgeryOperationContext) (payload : CopySubtreePayload)
  | deleteSubtree (context : SurgeryOperationContext) (payload : DeleteSubtreePayload)
  | insertImport (context : SurgeryOperationContext) (payload : ImportPayload)
  | removeImport (context : SurgeryOperationContext) (payload : ImportPayload)
  | renameSymbol (context : SurgeryOperationContext) (payload : RenameSymbolPayload)
  | moveDeclaration (context : SurgeryOperationContext) (payload : MoveDeclarationPayload)
  | replaceProofBody (context : SurgeryOperationContext) (payload : ReplaceProofBodyPayload)
deriving DecidableEq, Repr

@[expose] def SurgeryOperation.context : SurgeryOperation → SurgeryOperationContext
  | .insertToken context _ | .removeToken context _ | .replaceToken context _
  | .replaceNodeText context _ | .moveSubtree context _ | .copySubtree context _
  | .deleteSubtree context _ | .insertImport context _ | .removeImport context _
  | .renameSymbol context _ | .moveDeclaration context _ | .replaceProofBody context _ =>
      context

@[expose] def SurgeryOperation.kindCode : SurgeryOperation → Nat
  | .insertToken .. => 1
  | .removeToken .. => 2
  | .replaceToken .. => 3
  | .replaceNodeText .. => 4
  | .moveSubtree .. => 5
  | .copySubtree .. => 6
  | .deleteSubtree .. => 7
  | .insertImport .. => 8
  | .removeImport .. => 9
  | .renameSymbol .. => 10
  | .moveDeclaration .. => 11
  | .replaceProofBody .. => 12

/-- Canonical low-level edit; runtime hash observations are explicit inputs. -/
@[surface_novel]
structure ExactGuardedByteEdit where
  targetPathUtf8 : CanonicalBytes
  targetFile : SourceFileIdentity
  expectedFileHash : Hash256
  expectedRange : SourceSpan
  expectedBeforeByteHash : Hash256
  expectedAfterByteHash : Hash256
  expectedAfterFileHash : Hash256
  beforeBytes : CanonicalBytes
  afterBytes : CanonicalBytes
  sequenceNumber : Nat
deriving DecidableEq, Repr

@[expose] def ExactGuardedByteEdit.WellFormed
    (edit : ExactGuardedByteEdit) : Prop :=
  edit.targetPathUtf8 ≠ [] ∧
    edit.expectedFileHash.Valid ∧
    edit.expectedBeforeByteHash.Valid ∧
    edit.expectedAfterByteHash.Valid ∧
    edit.expectedAfterFileHash.Valid ∧
    edit.expectedRange.byteLength = edit.beforeBytes.length ∧
    FitsU32 edit.sequenceNumber

/-- Pure exact replacement on bytes; the caller separately checks the hash guards. -/
@[expose] def replaceByteRange
    (source : CanonicalBytes) (span : SourceSpan) (replacement : CanonicalBytes) :
    CanonicalBytes :=
  source.take span.startByte ++ replacement ++ source.drop span.endByte

@[expose] def sourceSlice (source : CanonicalBytes) (span : SourceSpan) : CanonicalBytes :=
  (source.drop span.startByte).take span.byteLength

/--
The model applies an edit only after the exact observed file and selected-slice
hashes have been supplied.  Lean compares these finite identities but does not
claim to compute SHA-256.
-/
@[expose] def applyExactGuardedByteEdit
    (observedFileHash observedBeforeByteHash : Hash256)
    (source : CanonicalBytes) (edit : ExactGuardedByteEdit) : Option CanonicalBytes :=
  if observedFileHash = edit.expectedFileHash ∧
      observedBeforeByteHash = edit.expectedBeforeByteHash ∧
      edit.expectedRange.endByte ≤ source.length ∧
      sourceSlice source edit.expectedRange = edit.beforeBytes then
    some (replaceByteRange source edit.expectedRange edit.afterBytes)
  else
    none

@[expose] def byteRangesDisjoint
    (left right : ExactGuardedByteEdit) : Prop :=
  left.targetFile ≠ right.targetFile ∨
    left.expectedRange.endByte ≤ right.expectedRange.startByte ∨
    right.expectedRange.endByte ≤ left.expectedRange.startByte

@[expose] def CompiledEditsNonoverlapping
    (edits : List ExactGuardedByteEdit) : Prop :=
  edits.Pairwise byteRangesDisjoint

@[expose] def CompiledEditsOrdered
    (edits : List ExactGuardedByteEdit) : Prop :=
  edits.map ExactGuardedByteEdit.sequenceNumber = List.range edits.length

/-- Exact resolution binds an operation to one admitted packet and edit list. -/
@[surface_novel]
structure ResolvedSurgeryOperation where
  operation : SurgeryOperation
  structuralPacketHash : Hash256
  packetSourceSnapshotHash : Hash256
  compiledEdits : List ExactGuardedByteEdit
  packetSourceSnapshotMatches :
    packetSourceSnapshotHash = operation.context.baseSourceSnapshotHash
  editsOrdered : CompiledEditsOrdered compiledEdits
  editsNonoverlapping : CompiledEditsNonoverlapping compiledEdits

end Surface.Refactor.Surgery
```
