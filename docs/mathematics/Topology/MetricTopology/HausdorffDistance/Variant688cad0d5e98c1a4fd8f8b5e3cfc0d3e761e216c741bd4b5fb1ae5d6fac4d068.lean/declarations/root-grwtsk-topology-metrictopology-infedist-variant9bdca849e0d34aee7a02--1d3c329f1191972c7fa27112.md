# _root_.GRWTSK.Topology.MetricTopology.InfEDist.Variant9bdca849e0d34aee7a027af90d5d0fc5ba04b9a0742ed2c882ed577904fe41f9.IsClosed.hausdorffDist_zero_iff_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6925619e-c351-e789-d8cf-abd7d2fdfa84",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.MetricTopology.InfEDist.Variant9bdca849e0d34aee7a027af90d5d0fc5ba04b9a0742ed2c882ed577904fe41f9.IsClosed.hausdorffDist_zero_iff_eq",
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
  "slug": "root-grwtsk-topology-metrictopology-infedist-variant9bdca849e0d34aee7a02--1d3c329f1191972c7fa27112",
  "source": {
    "blob": "c99a774e0aebc1dad665884b9f15d55574e5804c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 836,
    "line": 831,
    "path": "GRWTSK/Topology/MetricTopology/HausdorffDistance/Variant688cad0d5e98c1a4fd8f8b5e3cfc0d3e761e216c741bd4b5fb1ae5d6fac4d068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d3c329f1191972c7fa27112ae5f3e64cf5b738cda97d53bf5c25a0148719fee",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/HausdorffDistance/Variant688cad0d5e98c1a4fd8f8b5e3cfc0d3e761e216c741bd4b5fb1ae5d6fac4d068.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6925619e-c351-e789-d8cf-abd7d2fdfa84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 831–836.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.MetricTopology.InfEDist.Variant9bdca849e0d34aee7a027af90d5d0fc5ba04b9a0742ed2c882ed577904fe41f9.IsClosed.hausdorffDist_zero_iff_eq (hs : IsClosed s) (ht : IsClosed t)
    (fin : hausdorffEDist s t ≠ ⊤) : hausdorffDist s t = 0 ↔ s = t := by
  simp [← _root_.GRWTSK.Topology.MetricTopology.InfEDist.Variant9bdca849e0d34aee7a027af90d5d0fc5ba04b9a0742ed2c882ed577904fe41f9.IsClosed.hausdorffEDist_zero_iff hs ht, hausdorffDist, ENNReal.toReal_eq_zero_iff,
    fin]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/HausdorffDistance/Variant688cad0d5e98c1a4fd8f8b5e3cfc0d3e761e216c741bd4b5fb1ae5d6fac4d068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/HausdorffDistance/Variant688cad0d5e98c1a4fd8f8b5e3cfc0d3e761e216c741bd4b5fb1ae5d6fac4d068.lean#L831).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c99a774e0aebc1dad665884b9f15d55574e5804c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
