# TransportedRangeClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:525415bc5387b1f8c97d6c80504c3ab26fa860ac7ea3d5f2f0ad8c22c7ed8900",
  "kind": "structure",
  "lexical_name": "TransportedRangeClosed",
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
  "slug": "transportedrangeclosed--8a16d815b38bafd8bd9ab264",
  "source": {
    "blob": "cd5b79f454d5107f5b544b04a2fe6bbf78ee0207",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 27,
    "path": "GRWTSK/Topology/GeneralTopology/Certificate/Varianta2b456a29d845db3d6c49a71b2de601e1e0b3c807a56f5da9b6873a1708ab33b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a16d815b38bafd8bd9ab26451f56959747a7f4fb20d0c2b5e2117b7f2bfb722",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Certificate/Varianta2b456a29d845db3d6c49a71b2de601e1e0b3c807a56f5da9b6873a1708ab33b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:525415bc5387b1f8c97d6c80504c3ab26fa860ac7ea3d5f2f0ad8c22c7ed8900`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TransportedRangeClosed
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U) :
    Prop where
  isClosed :
    ∀ S,
      IsClosed
        (H.transportedRange S :
          Set H.Ambient)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Certificate/Varianta2b456a29d845db3d6c49a71b2de601e1e0b3c807a56f5da9b6873a1708ab33b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Certificate/Varianta2b456a29d845db3d6c49a71b2de601e1e0b3c807a56f5da9b6873a1708ab33b.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd5b79f454d5107f5b544b04a2fe6bbf78ee0207` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
