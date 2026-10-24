# ProposalKey.canonicalBytes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:011eb8c236463260217d01e9bd54815cf55f25913f76b9880889d1cfd6438f91",
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
  "slug": "proposalkey-canonicalbytes--5b93281f70e0e3074b885bfa",
  "source": {
    "blob": "d425ff6ca0e5d229691fec071f7f25070b10d15f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1152,
    "line": 1134,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant10612194876e26df209f8e724a2f5969ef1df62098f4bc5eb0a424060cc6d45b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b93281f70e0e3074b885bfa8a63df7e0cd39fc508916f35b4530cae82fd4c74",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Route/Variant10612194876e26df209f8e724a2f5969ef1df62098f4bc5eb0a424060cc6d45b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:011eb8c236463260217d01e9bd54815cf55f25913f76b9880889d1cfd6438f91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1134–1152.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Variant10612194876e26df209f8e724a2f5969ef1df62098f4bc5eb0a424060cc6d45b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant10612194876e26df209f8e724a2f5969ef1df62098f4bc5eb0a424060cc6d45b.lean#L1134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d425ff6ca0e5d229691fec071f7f25070b10d15f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
