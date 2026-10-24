# metrizableSpace_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c274d27e199e38f30baf480fc5efb039635d0c8ea0896bf6562c36f053c18081",
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
  "slug": "metrizablespace-prod--ad5ae5ef2cd8c4eae0f4430d",
  "source": {
    "blob": "56bfc5bd431e1d7cfd3219c8f7cf92e610df378a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/Metrizable/Variant399d8e235c04fe10a63184b4129fd20bcfdc46b90f03687c01a85fab0f2b9f79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad5ae5ef2cd8c4eae0f4430dd8cc41e441362e9f0ca9831812c2289b10892887",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Metrizable/Variant399d8e235c04fe10a63184b4129fd20bcfdc46b90f03687c01a85fab0f2b9f79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c274d27e199e38f30baf480fc5efb039635d0c8ea0896bf6562c36f053c18081`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–125.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Metrizable/Variant399d8e235c04fe10a63184b4129fd20bcfdc46b90f03687c01a85fab0f2b9f79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Metrizable/Variant399d8e235c04fe10a63184b4129fd20bcfdc46b90f03687c01a85fab0f2b9f79.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56bfc5bd431e1d7cfd3219c8f7cf92e610df378a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
