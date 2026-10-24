# ProposalKey.canonicalBytes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b83031fb0cc70a31f89b9e11a3ce23fb49bcad20427f66a53fab10dec78e330",
  "kind": "def",
  "lexical_name": "ProposalKey.canonicalBytes",
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
  "slug": "proposalkey-canonicalbytes--ef2d121a2ce29a110facab65",
  "source": {
    "blob": "bef355055175d174cdcf1916aa188fb0f7c6e8c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1151,
    "line": 1133,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant30bb8c8bfe327656bf8222e8bf07500fa89e8614c67f50351da1431fb703e430.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef2d121a2ce29a110facab653aab104f3d8faae809296087132f021c7a46460a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Route/Variant30bb8c8bfe327656bf8222e8bf07500fa89e8614c67f50351da1431fb703e430.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b83031fb0cc70a31f89b9e11a3ce23fb49bcad20427f66a53fab10dec78e330`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1133–1151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def ProposalKey.canonicalBytes
    (contract : RoutingContract Host EdgeId)
    (key : ProposalKey Host EdgeId) : CanonicalBytes :=
  encodeU32LE key.schemaVersion ++
  encodeHash256 key.contractHash ++
  encodeHash256 key.sourceSnapshotHash ++
  encodeU32LE key.algorithmVersion ++
  encodeU32LE key.revision ++
  encodeU32LE (contract.edgeCode.code key.edgeId) ++
  encodeU32LE (contract.hostCode.code key.claimedSource) ++
  encodeU32LE (contract.hostCode.code key.claimedTarget) ++
  encodeI32LE key.source.x ++
  encodeI32LE key.source.y ++
  encodeI32LE key.source.z ++
  encodeI32LE key.proposed.x ++
  encodeI32LE key.proposed.y ++
  encodeI32LE key.proposed.z

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Variant30bb8c8bfe327656bf8222e8bf07500fa89e8614c67f50351da1431fb703e430.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant30bb8c8bfe327656bf8222e8bf07500fa89e8614c67f50351da1431fb703e430.lean#L1133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bef355055175d174cdcf1916aa188fb0f7c6e8c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
