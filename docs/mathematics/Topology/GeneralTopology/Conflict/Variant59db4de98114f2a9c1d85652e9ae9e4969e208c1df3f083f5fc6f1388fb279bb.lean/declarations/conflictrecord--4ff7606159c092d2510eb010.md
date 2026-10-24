# ConflictRecord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad85102cc6a625444bedeb2ad2b46cf960831f8709f7ca82592583edcb97ee65",
  "kind": "structure",
  "lexical_name": "ConflictRecord",
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
  "slug": "conflictrecord--4ff7606159c092d2510eb010",
  "source": {
    "blob": "0a240589de6dc8a5401a502ffc5779b3510b89b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 26,
    "path": "GRWTSK/Topology/GeneralTopology/Conflict/Variant59db4de98114f2a9c1d85652e9ae9e4969e208c1df3f083f5fc6f1388fb279bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ff7606159c092d2510eb0100003df21d9eed85f47abd4e5cf402e3b7d3a573f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Conflict/Variant59db4de98114f2a9c1d85652e9ae9e4969e208c1df3f083f5fc6f1388fb279bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad85102cc6a625444bedeb2ad2b46cf960831f8709f7ca82592583edcb97ee65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ConflictRecord where
  conflictId : StableId
  left : GlobalDeclarationId
  right : GlobalDeclarationId
  kind : ConflictKind
  evidenceIds : List StableId
  resolution : Option StableId
  conflictDigest : Digest
  deriving DecidableEq, Repr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Conflict/Variant59db4de98114f2a9c1d85652e9ae9e4969e208c1df3f083f5fc6f1388fb279bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Conflict/Variant59db4de98114f2a9c1d85652e9ae9e4969e208c1df3f083f5fc6f1388fb279bb.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a240589de6dc8a5401a502ffc5779b3510b89b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
