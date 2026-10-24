# TransportedRangeNesting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee579a9d406544802c6c8059ede490f7bd4e1b6d5e2f99e5ad20402c695b1120",
  "kind": "structure",
  "lexical_name": "TransportedRangeNesting",
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
  "slug": "transportedrangenesting--14dc2201473a23e1b75ccf09",
  "source": {
    "blob": "cd5b79f454d5107f5b544b04a2fe6bbf78ee0207",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 17,
    "path": "GRWTSK/Topology/GeneralTopology/Certificate/Varianta2b456a29d845db3d6c49a71b2de601e1e0b3c807a56f5da9b6873a1708ab33b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14dc2201473a23e1b75ccf09d7f1346e30941bf5f5bbcc01242b172a55f22869",
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

Occurrence: `declaration:ee579a9d406544802c6c8059ede490f7bd4e1b6d5e2f99e5ad20402c695b1120`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TransportedRangeNesting
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U) :
    Prop where
  mono :
    ∀ {S T : PrimeCut U},
      S ⊆ T →
      H.transportedRange S ≤
      H.transportedRange T

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Certificate/Varianta2b456a29d845db3d6c49a71b2de601e1e0b3c807a56f5da9b6873a1708ab33b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Certificate/Varianta2b456a29d845db3d6c49a71b2de601e1e0b3c807a56f5da9b6873a1708ab33b.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd5b79f454d5107f5b544b04a2fe6bbf78ee0207` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
