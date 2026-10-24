# GroupNormClass.toNormedCommGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90edde386610c40b03a5e106bdebc9533a882ec55d29d11a4cf534329a9bbf61",
  "kind": "abbrev",
  "lexical_name": "GroupNormClass.toNormedCommGroup",
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
  "slug": "groupnormclass-tonormedcommgroup--9b257f947be5a3b135a4a48b",
  "source": {
    "blob": "8d83cb25f9216848b201ca8f594740746f7af234",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 68,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b257f947be5a3b135a4a48b32a7c0154bdc80ad6fc75814cce81fc5e84b8b1d",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90edde386610c40b03a5e106bdebc9533a882ec55d29d11a4cf534329a9bbf61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev GroupNormClass.toNormedCommGroup [CommGroup α] [GroupNormClass F α ℝ]
    (f : F) : NormedCommGroup α where
  __ := GroupNormClass.toNormedGroup f
  __ : CommGroup α := inferInstance

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d83cb25f9216848b201ca8f594740746f7af234` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
