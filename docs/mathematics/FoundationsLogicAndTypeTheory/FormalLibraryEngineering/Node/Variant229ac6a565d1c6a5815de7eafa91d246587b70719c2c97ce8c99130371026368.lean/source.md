# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Node.Variant229ac6a565d1c6a5815de7eafa91d246587b70719c2c97ce8c99130371026368

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2886e1cdde224db92bbcff75eed70bd8b656937c` · SHA-256 `a2c119bb05ccbc04a0c69bf5aa311c688b7423ab44ad15277b27d3351481fb05`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SyntaxNodeId.Variant4ca1aea8ff2077f502d01de54d1236c5dc4714c2da52a0a38eee022494bd7996","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4ca1aea8ff2077f502d01de54d1236c5dc4714c2da52a0a38eee022494bd7996","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SyntaxNodeId.Variant4ca1aea8ff2077f502d01de54d1236c5dc4714c2da52a0a38eee022494bd7996","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4ca1aea8ff2077f502d01de54d1236c5dc4714c2da52a0a38eee022494bd7996","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:dd72b57dce63c25b6a039856/workspace/lib/Surface/Refactor/Syntax/Node.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.Syntax.Span

/-! # Normalized syntax nodes and snapshot-scoped correspondence -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SyntaxNodeId.Variant4ca1aea8ff2077f502d01de54d1236c5dc4714c2da52a0a38eee022494bd7996

public section

namespace Surface.Refactor.Syntax

open Surface.Core.Transport

@[surface_novel]
structure SyntaxNodeId where
  value : Nat
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure StableSemanticAnchorId where
  value : Nat
deriving DecidableEq, Repr, BEq

@[surface_novel]
inductive NormalizedNodeKind where
  | sourceFile
  | moduleOrNamespace
  | importOrUse
  | function
  | method
  | classOrStructOrInductiveOrEnum
  | component
  | interfaceOrTypeAlias
  | implementationBlock
  | declaration
  | attribute
  | block
  | expression
  | pattern
  | macroTokenTree
  | other
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure NodeRecord where
  nodeId : SyntaxNodeId
  languageKindCode : Nat
  normalizedKind : NormalizedNodeKind
  flags : Nat
  parentIndex : Option Nat
  firstChildIndex : Option Nat
  nextSiblingIndex : Option Nat
  sourceSpan : SourceSpan
  tokenSpan : TableSpan
  nameStringIndex : Option Nat
  declarationIndex : Option Nat
  stableSemanticAnchorIndex : Option Nat
deriving DecidableEq, Repr

@[expose] def NodeRecord.RuntimeFieldsFit (node : NodeRecord) : Prop :=
  FitsU32 node.nodeId.value ∧
    FitsU32 node.languageKindCode ∧
    FitsU32 node.flags ∧
    (∀ index ∈ node.parentIndex, FitsU32 index) ∧
    (∀ index ∈ node.firstChildIndex, FitsU32 index) ∧
    (∀ index ∈ node.nextSiblingIndex, FitsU32 index)

@[expose] def NodeRecord.IndicesValid
    (nodeCount tokenCount stringCount declarationCount anchorCount : Nat)
    (node : NodeRecord) : Prop :=
  OptionalIndexValid nodeCount node.parentIndex ∧
    OptionalIndexValid nodeCount node.firstChildIndex ∧
    OptionalIndexValid nodeCount node.nextSiblingIndex ∧
    node.tokenSpan.Valid tokenCount ∧
    OptionalIndexValid stringCount node.nameStringIndex ∧
    OptionalIndexValid declarationCount node.declarationIndex ∧
    OptionalIndexValid anchorCount node.stableSemanticAnchorIndex

@[surface_novel]
inductive OrderedSyntaxTree where
  | node (nodeIndex : Nat) (children : List OrderedSyntaxTree)
deriving Repr

@[expose] def OrderedSyntaxTree.preorderIndices : OrderedSyntaxTree → List Nat
  | .node nodeIndex children =>
      nodeIndex :: children.flatMap OrderedSyntaxTree.preorderIndices

@[expose] def orderedForestPreorderIndices (forest : List OrderedSyntaxTree) : List Nat :=
  forest.flatMap OrderedSyntaxTree.preorderIndices

@[expose] def OrderedSyntaxTree.nodeCount : OrderedSyntaxTree → Nat
  | .node _ children => 1 + (children.map OrderedSyntaxTree.nodeCount).sum

@[expose] def orderedForestNodeCount (forest : List OrderedSyntaxTree) : Nat :=
  (forest.map OrderedSyntaxTree.nodeCount).sum

@[expose] def parentRelation (nodes : List NodeRecord) (parent child : Nat) : Prop :=
  ∃ node, nodes[child]? = some node ∧ node.parentIndex = some parent

@[expose] def ParentRelationAcyclic (nodes : List NodeRecord) : Prop :=
  ∀ index, ¬ Relation.TransGen (parentRelation nodes) index index

@[surface_novel]
inductive CorrespondenceBasis where
  | sameDeclarationIdentity
  | sameSymbolIdentity
  | sameParserPersistentId
  | sameParentKindOrdinalAnchor
  | exactRetainedSourceSliceHash
  | explicitUserConfirmation
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure NodeCorrespondence where
  beforeSnapshotHash : Hash256
  afterSnapshotHash : Hash256
  beforeNode : SyntaxNodeId
  afterNode : SyntaxNodeId
  basis : CorrespondenceBasis
deriving DecidableEq, Repr

end Surface.Refactor.Syntax
```
