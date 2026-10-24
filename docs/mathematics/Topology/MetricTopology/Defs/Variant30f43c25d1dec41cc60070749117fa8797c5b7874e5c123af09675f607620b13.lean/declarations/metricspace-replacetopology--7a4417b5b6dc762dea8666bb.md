# MetricSpace.replaceTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:390e8373028a5bf714baa394eb8a3eece5f52efcdfd38625ff4ff0251749d3a1",
  "kind": "abbrev",
  "lexical_name": "MetricSpace.replaceTopology",
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
  "slug": "metricspace-replacetopology--7a4417b5b6dc762dea8666bb",
  "source": {
    "blob": "8538e3f9b56a7a5ab8a17e284aadf85820c16f18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 151,
    "path": "GRWTSK/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a4417b5b6dc762dea8666bb51f4e4199fca126375f72485df1c47cc51ea4dba",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:390e8373028a5bf714baa394eb8a3eece5f52efcdfd38625ff4ff0251749d3a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev MetricSpace.replaceTopology {γ} [U : TopologicalSpace γ] (m : MetricSpace γ)
    (H : U = m.toPseudoMetricSpace.toUniformSpace.toTopologicalSpace) : MetricSpace γ :=
  @MetricSpace.replaceUniformity γ (m.toUniformSpace.replaceTopology H) m rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8538e3f9b56a7a5ab8a17e284aadf85820c16f18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
