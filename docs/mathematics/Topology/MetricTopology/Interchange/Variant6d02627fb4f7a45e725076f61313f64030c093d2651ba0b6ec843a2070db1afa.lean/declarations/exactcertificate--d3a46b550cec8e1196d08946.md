# ExactCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0f1520a9f3c77ee8972d8cd63bca66d87c3a2f7a86d36a85c179bde6d92da2a",
  "kind": "structure",
  "lexical_name": "ExactCertificate",
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
  "slug": "exactcertificate--d3a46b550cec8e1196d08946",
  "source": {
    "blob": "15ccddf6d39db4ac737112958bc067a07c62184e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 72,
    "path": "GRWTSK/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3a46b550cec8e1196d089465ef2af452672854a8c5a67c08b76d0d7e34961e1",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0f1520a9f3c77ee8972d8cd63bca66d87c3a2f7a86d36a85c179bde6d92da2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExactCertificate
    (square :
      InterchangeSquare
        PrevSources PrevAggregate NowSources Compare) :
    Prop where
  commutes :
    ∀ input,
      leftPath square input = rightPath square input

/-- Sound uniform bound on the metric interchange defect. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15ccddf6d39db4ac737112958bc067a07c62184e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
