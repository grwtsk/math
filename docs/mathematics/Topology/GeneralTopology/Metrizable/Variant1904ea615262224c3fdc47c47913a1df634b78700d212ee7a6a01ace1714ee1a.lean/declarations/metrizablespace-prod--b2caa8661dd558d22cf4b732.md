# metrizableSpace_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a9a0b7a76ec0f820030ffea5456994091371b46123cbe8f49c697af8226a8b7",
  "kind": "instance",
  "lexical_name": "metrizableSpace_prod",
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
  "slug": "metrizablespace-prod--b2caa8661dd558d22cf4b732",
  "source": {
    "blob": "4d34a4fcff057d5ed1bc832673334b7aa3888523",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 126,
    "path": "GRWTSK/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2caa8661dd558d22cf4b732ada9547fb753e77247632fc227c12af784fae14d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a9a0b7a76ec0f820030ffea5456994091371b46123cbe8f49c697af8226a8b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance metrizableSpace_prod [MetrizableSpace X] [MetrizableSpace Y] : MetrizableSpace (X × Y) :=
  letI : MetricSpace X := metrizableSpaceMetric X
  letI : MetricSpace Y := metrizableSpaceMetric Y
  inferInstance
#align topological_space.metrizable_space_prod TopologicalSpace.metrizableSpace_prod

/-- Given an embedding of a topological space into a metrizable space, the source space is also
metrizable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d34a4fcff057d5ed1bc832673334b7aa3888523` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
