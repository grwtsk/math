# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Node.Variantf9144f88e926b4be56f572cac2450abb7161303a86d9733d2c3096122dfb277c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c2966244e6397fb14eeb913d476adf4c510d064` · SHA-256 `f9144f88e926b4be56f572cac2450abb7161303a86d9733d2c3096122dfb277c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Refactor.Syntax.Span

/-! # Normalized syntax nodes and snapshot-scoped correspondence -/

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
deriving DecidableEq, Repr

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
  ∃ node, nodes.get? child = some node ∧ node.parentIndex = some parent

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
