# CorpusDeclarationAddress

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8283c5eb070c27494b6e44c52b5187a2954a2345a5d2afa91f3be36951ad656",
  "kind": "structure",
  "lexical_name": "CorpusDeclarationAddress",
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
  "slug": "corpusdeclarationaddress--c333b040073143c01423be9a",
  "source": {
    "blob": "1960ffd0658fc0f70aa50344a43ff0a33477b159",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Corpus/Varianteb97cf679fc40982af3a16d3bd993fabc9293355beb83b9bcb33587e813ca93e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c333b040073143c01423be9aedfd2d4f45f248a28d78280dd3f28efc545e330d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Corpus/Varianteb97cf679fc40982af3a16d3bd993fabc9293355beb83b9bcb33587e813ca93e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8283c5eb070c27494b6e44c52b5187a2954a2345a5d2afa91f3be36951ad656`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CorpusDeclarationAddress where
  corpus : CorpusIdentity
  moduleOrdinal : Nat
  modulePath : String
  modulePath_nonempty : modulePath ≠ ""
  moduleDigest : Digest
  moduleDigest_valid : moduleDigest.Valid
  declarationOrdinal : Nat
  declarationName : String
  declarationName_nonempty : declarationName ≠ ""
  declarationKind : CorpusDeclarationKind
  declarationDigest : Digest
  declarationDigest_valid : declarationDigest.Valid
  deriving Repr

/--
The module-level part of a corpus address.  This is the reusable router prefix
for element-sized declaration links from one retained source module.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Corpus/Varianteb97cf679fc40982af3a16d3bd993fabc9293355beb83b9bcb33587e813ca93e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Corpus/Varianteb97cf679fc40982af3a16d3bd993fabc9293355beb83b9bcb33587e813ca93e.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1960ffd0658fc0f70aa50344a43ff0a33477b159` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
