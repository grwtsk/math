# _root_.GRWTSK.Topology.MetricTopology.TotallyBoundedIcc.Variantdbdb5dce531767c8e6b56f004d9d3a4cde9173a5a11ef40733a86cb432cadd2b.IsCompact.isBounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2969fd8b-eb00-e12f-d17c-9a5056160af5",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.MetricTopology.TotallyBoundedIcc.Variantdbdb5dce531767c8e6b56f004d9d3a4cde9173a5a11ef40733a86cb432cadd2b.IsCompact.isBounded",
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
  "slug": "root-grwtsk-topology-metrictopology-totallyboundedicc-variantdbdb5dce531--de21ccdaff41ba5d8df9927d",
  "source": {
    "blob": "e8b44879c772a201808447253625cf36f8799167",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 200,
    "path": "GRWTSK/Topology/MetricTopology/Bounded/Variantf55d203f2598802f3925c7b336e6fed6cc6dab01ab3fe7c8740c6fcc2101d874.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de21ccdaff41ba5d8df9927d524fc9f921357a74d183c7ee2b42fa73f6c64fe4",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Bounded/Variantf55d203f2598802f3925c7b336e6fed6cc6dab01ab3fe7c8740c6fcc2101d874.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2969fd8b-eb00-e12f-d17c-9a5056160af5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.MetricTopology.TotallyBoundedIcc.Variantdbdb5dce531767c8e6b56f004d9d3a4cde9173a5a11ef40733a86cb432cadd2b.IsCompact.isBounded {s : Set α} (h : IsCompact s) : IsBounded s :=
  -- A compact set is totally bounded, thus bounded
  h.totallyBounded.isBounded

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Bounded/Variantf55d203f2598802f3925c7b336e6fed6cc6dab01ab3fe7c8740c6fcc2101d874.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Bounded/Variantf55d203f2598802f3925c7b336e6fed6cc6dab01ab3fe7c8740c6fcc2101d874.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8b44879c772a201808447253625cf36f8799167` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
