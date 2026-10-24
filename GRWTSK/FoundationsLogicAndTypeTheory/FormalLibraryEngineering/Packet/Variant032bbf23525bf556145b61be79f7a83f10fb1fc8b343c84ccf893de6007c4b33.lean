module

public import Surface.Refactor.Syntax.Token
public import Surface.Refactor.Syntax.Reference
public import Surface.Refactor.Syntax.BracketProjection

/-!
# SurfaceStructuralPacketV1 proof model

This module models the normalized complete packet and the exact fixed header
and directory dimensions.  Binary decoding and parser execution are separate
implementation observations; `WellFormed` is the condition a decoder must
establish before publication.
-/

public section

namespace Surface.Refactor.Syntax

open Surface.Core.Transport

@[expose] def structuralPacketMagic : String := "SURFAST\u0000"
@[expose] def structuralPacketSchemaVersion : Nat := 1
@[expose] def structuralPacketHeaderBytes : Nat := 128
@[expose] def structuralPacketDirectoryEntryBytes : Nat := 32
@[expose] def structuralPacketLittleEndianCode : Nat := 1

@[surface_novel]
inductive SectionKind where
  | stringTable
  | nodeTable
  | childEdgeTable
  | tokenTable
  | declarationTable
  | referenceTable
  | importTable
  | bracketBitWords
  | bracketToNodeMap
  | diagnosticsTable
  | sourceBytes
  | operationLog
deriving DecidableEq, Repr, BEq

@[expose] def SectionKind.code : SectionKind → Nat
  | .stringTable => 1
  | .nodeTable => 2
  | .childEdgeTable => 3
  | .tokenTable => 4
  | .declarationTable => 5
  | .referenceTable => 6
  | .importTable => 7
  | .bracketBitWords => 8
  | .bracketToNodeMap => 9
  | .diagnosticsTable => 10
  | .sourceBytes => 11
  | .operationLog => 12

@[expose] def SectionKind.ofCode? : Nat → Option SectionKind
  | 1 => some .stringTable
  | 2 => some .nodeTable
  | 3 => some .childEdgeTable
  | 4 => some .tokenTable
  | 5 => some .declarationTable
  | 6 => some .referenceTable
  | 7 => some .importTable
  | 8 => some .bracketBitWords
  | 9 => some .bracketToNodeMap
  | 10 => some .diagnosticsTable
  | 11 => some .sourceBytes
  | 12 => some .operationLog
  | _ => none

@[surface_novel, surface_published]
theorem sectionKindCode_roundtrip (kind : SectionKind) :
    SectionKind.ofCode? kind.code = some kind := by
  cases kind <;> rfl

@[expose] def requiredSectionKindsV1 : List SectionKind :=
  [.stringTable, .nodeTable, .childEdgeTable, .tokenTable,
    .declarationTable, .referenceTable, .importTable,
    .bracketBitWords, .bracketToNodeMap, .diagnosticsTable]

@[surface_novel]
structure SectionDirectoryEntry where
  sectionKind : SectionKind
  sectionFlags : Nat
  elementWidth : Nat
  byteOffset : Nat
  byteLength : Nat
  elementCount : Nat
deriving DecidableEq, Repr

@[expose] def SectionDirectoryEntry.Valid
    (totalBytes : Nat) (entry : SectionDirectoryEntry) : Prop :=
  entry.sectionFlags = 0 ∧
    0 < entry.elementWidth ∧
    entry.byteOffset % 8 = 0 ∧
    entry.elementCount * entry.elementWidth = entry.byteLength ∧
    structuralPacketHeaderBytes ≤ entry.byteOffset ∧
    entry.byteOffset + entry.byteLength ≤ totalBytes ∧
    FitsU64 entry.byteOffset ∧ FitsU64 entry.byteLength ∧ FitsU64 entry.elementCount

@[expose] def sectionIntervalsDisjoint
    (left right : SectionDirectoryEntry) : Prop :=
  left.byteOffset + left.byteLength ≤ right.byteOffset ∨
    right.byteOffset + right.byteLength ≤ left.byteOffset

@[expose] def SectionsDisjoint (entries : List SectionDirectoryEntry) : Prop :=
  entries.Pairwise sectionIntervalsDisjoint

@[expose] def RequiredSectionsPresent (entries : List SectionDirectoryEntry) : Prop :=
  ∀ required ∈ requiredSectionKindsV1,
    ∃ entry ∈ entries, entry.sectionKind = required

@[surface_novel]
structure StructuralPacketHeaderV1 where
  magic : String
  schemaVersion : Nat
  headerBytes : Nat
  endianness : Nat
  languageCode : Nat
  flags : Nat
  repositoryRevision : Nat
  sectionCount : Nat
  totalBytes : Nat
  sourceByteLength : Nat
  nodeCount : Nat
  edgeCount : Nat
  tokenCount : Nat
  bracketWordCount : Nat
  sourceSnapshotHash : Hash256
  contractHash : Hash256
  sectionDirectoryOffset : Nat
deriving DecidableEq, Repr

@[expose] def StructuralPacketHeaderV1.Valid
    (language : LanguageId) (header : StructuralPacketHeaderV1) : Prop :=
  header.magic = structuralPacketMagic ∧
    header.schemaVersion = structuralPacketSchemaVersion ∧
    header.headerBytes = structuralPacketHeaderBytes ∧
    header.endianness = structuralPacketLittleEndianCode ∧
    header.languageCode = language.code ∧
    header.flags = 0 ∧
    FitsU32 header.repositoryRevision ∧ FitsU32 header.sectionCount ∧
    FitsU64 header.totalBytes ∧ FitsU64 header.sourceByteLength ∧
    FitsU32 header.nodeCount ∧ FitsU32 header.edgeCount ∧
    FitsU32 header.tokenCount ∧ FitsU32 header.bracketWordCount ∧
    header.sourceSnapshotHash.Valid ∧ header.contractHash.Valid ∧
    structuralPacketHeaderBytes ≤ header.sectionDirectoryOffset ∧
    header.sectionDirectoryOffset +
        header.sectionCount * structuralPacketDirectoryEntryBytes ≤ header.totalBytes

@[surface_novel]
inductive DiagnosticSeverity where
  | note
  | warning
  | error
  | fatal
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure DiagnosticRecord where
  severity : DiagnosticSeverity
  codeStringIndex : Option Nat
  messageStringIndex : Nat
  sourceSpan : Option SourceSpan
  recovered : Bool
deriving DecidableEq, Repr

@[expose] def DiagnosticRecord.Valid
    (layout : SourceByteLayout) (stringCount : Nat) (diagnostic : DiagnosticRecord) : Prop :=
  OptionalIndexValid stringCount diagnostic.codeStringIndex ∧
    diagnostic.messageStringIndex < stringCount ∧
    ∀ span ∈ diagnostic.sourceSpan, span.Valid layout

@[expose] def orderedForestEdgeCount (forest : List OrderedSyntaxTree) : Nat :=
  orderedForestNodeCount forest - forest.length

@[surface_novel]
structure StructuralPacketV1 where
  header : StructuralPacketHeaderV1
  language : LanguageId
  parserFingerprint : ParserFingerprint
  parserAuthority : ParserAuthority
  sourceLayout : SourceByteLayout
  stringTable : List String
  nodes : List NodeRecord
  stableSemanticAnchorCount : Nat
  orderedForest : List OrderedSyntaxTree
  tokens : List TokenRecord
  declarations : List DeclarationRecord
  references : List ReferenceRecord
  modules : List ModuleIdentity
  imports : List ImportRecord
  diagnostics : List DiagnosticRecord
  sections : List SectionDirectoryEntry
deriving Repr

@[expose] def StructuralPacketV1.WellFormed (packet : StructuralPacketV1) : Prop :=
  packet.header.Valid packet.language ∧
    packet.parserFingerprint.Valid ∧
    packet.parserFingerprint.language = packet.language ∧
    packet.parserAuthority ≠ .invalid ∧
    packet.sourceLayout.Valid ∧
    packet.sourceLayout.sourceByteLength = packet.header.sourceByteLength ∧
    packet.header.nodeCount = packet.nodes.length ∧
    packet.header.edgeCount = orderedForestEdgeCount packet.orderedForest ∧
    packet.header.tokenCount = packet.tokens.length ∧
    packet.header.bracketWordCount = (bracketProjection packet.orderedForest).length ∧
    packet.header.sectionCount = packet.sections.length ∧
    packet.nodes.map (fun node => node.nodeId.value) = List.range packet.nodes.length ∧
    orderedForestPreorderIndices packet.orderedForest = List.range packet.nodes.length ∧
    (∀ node ∈ packet.nodes,
      node.RuntimeFieldsFit ∧
      node.sourceSpan.Valid packet.sourceLayout ∧
      node.IndicesValid packet.nodes.length packet.tokens.length packet.stringTable.length
        packet.declarations.length packet.stableSemanticAnchorCount) ∧
    ParentRelationAcyclic packet.nodes ∧
    (∀ token ∈ packet.tokens, token.Valid packet.sourceLayout packet.stringTable.length) ∧
    (∀ declaration ∈ packet.declarations,
      declaration.Valid packet.nodes.length packet.stringTable.length) ∧
    (∀ reference ∈ packet.references,
      reference.Valid packet.sourceLayout packet.nodes.length packet.stringTable.length
        packet.declarations.length) ∧
    (∀ module ∈ packet.modules, module.moduleNameHash.Valid) ∧
    (∀ record ∈ packet.imports,
      record.Valid packet.nodes.length packet.stringTable.length packet.modules.length) ∧
    (∀ diagnostic ∈ packet.diagnostics,
      diagnostic.Valid packet.sourceLayout packet.stringTable.length) ∧
    (packet.sections.map SectionDirectoryEntry.sectionKind).Nodup ∧
    RequiredSectionsPresent packet.sections ∧
    (∀ entry ∈ packet.sections, entry.Valid packet.header.totalBytes) ∧
    SectionsDisjoint packet.sections ∧
    BalancedBracketProjection (bracketProjection packet.orderedForest) ∧
    (bracketToNodeMap packet.orderedForest).length =
      (bracketProjection packet.orderedForest).length

@[surface_novel, surface_published]
theorem wellFormedPacket_projection_balanced
    {packet : StructuralPacketV1} (_wellFormed : packet.WellFormed) :
    BalancedBracketProjection (bracketProjection packet.orderedForest) :=
  bracketProjection_balanced packet.orderedForest

@[surface_novel]
structure StructuralPacketLimits where
  maxSourceBytes : Nat
  maxNodes : Nat
  maxTokens : Nat
  maxTreeDepth : Nat
  maxDeclarations : Nat
  maxReferences : Nat
  maxDiagnostics : Nat
  maxStringTableBytes : Nat
deriving DecidableEq, Repr

@[expose] def OrderedSyntaxTree.depth : OrderedSyntaxTree → Nat
  | .node _ children => 1 + (children.map OrderedSyntaxTree.depth).foldl max 0

@[expose] def orderedForestDepth (forest : List OrderedSyntaxTree) : Nat :=
  (forest.map OrderedSyntaxTree.depth).foldl max 0

@[expose] def stringTableByteLength (strings : List String) : Nat :=
  (strings.map String.utf8ByteSize).sum

@[expose] def StructuralPacketV1.WithinLimits
    (limits : StructuralPacketLimits) (packet : StructuralPacketV1) : Prop :=
  packet.header.sourceByteLength ≤ limits.maxSourceBytes ∧
    packet.nodes.length ≤ limits.maxNodes ∧
    packet.tokens.length ≤ limits.maxTokens ∧
    orderedForestDepth packet.orderedForest ≤ limits.maxTreeDepth ∧
    packet.declarations.length ≤ limits.maxDeclarations ∧
    packet.references.length ≤ limits.maxReferences ∧
    packet.diagnostics.length ≤ limits.maxDiagnostics ∧
    stringTableByteLength packet.stringTable ≤ limits.maxStringTableBytes

@[surface_novel]
structure CompletePacketDescriptor where
  schemaVersion : Nat
  packetHash : Hash256
  byteLength : Nat
  artifactObjectId : String
deriving DecidableEq, Repr

@[expose] def CompletePacketDescriptor.Valid
    (descriptor : CompletePacketDescriptor) : Prop :=
  descriptor.schemaVersion = structuralPacketSchemaVersion ∧
    descriptor.packetHash.Valid ∧
    0 < descriptor.byteLength ∧ FitsU64 descriptor.byteLength ∧
    descriptor.artifactObjectId ≠ ""

instance (descriptor : CompletePacketDescriptor) :
    Decidable descriptor.Valid := by
  unfold CompletePacketDescriptor.Valid FitsU64 FitsUnsigned
  infer_instance

@[surface_novel]
inductive StructuralPublication where
  | completePacket (packet : StructuralPacketV1)
  | contentAddressedCompletePacket (descriptor : CompletePacketDescriptor)
deriving Repr

@[surface_novel]
inductive PacketHashFramingV1 where
  | headerWithHashFieldsZeroedThenDirectoryThenSections
deriving DecidableEq, Repr, BEq

end Surface.Refactor.Syntax
