# StructuralPacketV1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e793c605e66b6c6c19ba4a3738ba91939787fefe1fb8b8c1ffa314d9e5072d1",
  "kind": "structure",
  "lexical_name": "StructuralPacketV1",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "structuralpacketv1--5f073cceab60f2fa1b865f73",
  "source": {
    "blob": "c32e88dcb72a5602745eea17f6158e5bc87e97cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 188,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Packet/Variant8798d3156b69092a65867e1ba5ae1f1945dfd14cc604607707eaa0a0ab673f9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f073cceab60f2fa1b865f73b06ae2e3eefd7e7b22a4cf46a337ce912772cedc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Packet/Variant8798d3156b69092a65867e1ba5ae1f1945dfd14cc604607707eaa0a0ab673f9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e793c605e66b6c6c19ba4a3738ba91939787fefe1fb8b8c1ffa314d9e5072d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Packet/Variant8798d3156b69092a65867e1ba5ae1f1945dfd14cc604607707eaa0a0ab673f9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Packet/Variant8798d3156b69092a65867e1ba5ae1f1945dfd14cc604607707eaa0a0ab673f9a.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c32e88dcb72a5602745eea17f6158e5bc87e97cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
