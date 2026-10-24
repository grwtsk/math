# GroupNorm.toNormedGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f11c61c8354701ef317ad7c9fa65f3a54ac8337dcdd39ecf7e313edcbbd9dca0",
  "kind": "abbrev",
  "lexical_name": "GroupNorm.toNormedGroup",
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
  "slug": "groupnorm-tonormedgroup--0b71bad193698cc85aa0c9d4",
  "source": {
    "blob": "1230ba39096fad9ba358e692d8f72d4384e70672",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 449,
    "path": "GRWTSK/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b71bad193698cc85aa0c9d4b3544547e6d612c36106fe2db4b57e917e7dd485",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f11c61c8354701ef317ad7c9fa65f3a54ac8337dcdd39ecf7e313edcbbd9dca0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev GroupNorm.toNormedGroup [Group E] (f : GroupNorm E) : NormedGroup E :=
  { f.toGroupSeminorm.toSeminormedGroup with
    eq_of_dist_eq_zero := fun h => inv_mul_eq_one.1 <| eq_one_of_map_eq_zero f h }

-- See note [reducible non-instances]
/-- Construct a normed group from a norm, i.e., registering the distance and the metric space
structure from the norm properties. Note that in most cases this instance creates bad definitional
equalities (e.g., it does not take into account a possibly existing `UniformSpace` instance on
`E`). -/
@[to_additive
  /-- Construct a normed group from a norm, i.e., registering the distance and the metric
space structure from the norm properties. Note that in most cases this instance creates bad
definitional equalities (e.g., it does not take into account a possibly existing `UniformSpace`
instance on `E`). -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Defs/Variant6a259cadb040dc3be99e9dc0ab866fac65f2e23fbb3bc65a0170b0975da28394.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1230ba39096fad9ba358e692d8f72d4384e70672` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
