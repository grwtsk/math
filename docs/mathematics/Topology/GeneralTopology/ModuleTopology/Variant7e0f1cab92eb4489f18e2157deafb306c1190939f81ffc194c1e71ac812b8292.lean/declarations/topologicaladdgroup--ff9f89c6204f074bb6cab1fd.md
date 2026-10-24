# topologicalAddGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d9fc5fb-8e83-5a25-d4f6-7e35d217f8af",
  "kind": "theorem",
  "lexical_name": "topologicalAddGroup",
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
  "slug": "topologicaladdgroup--ff9f89c6204f074bb6cab1fd",
  "source": {
    "blob": "5c5ebb603a580def722fd4c059878cde00d7ab5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 328,
    "path": "GRWTSK/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff9f89c6204f074bb6cab1fd55ea1abf2e64700bde6b77a54e46bc7a86121ea7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d9fc5fb-8e83-5a25-d4f6-7e35d217f8af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem topologicalAddGroup (C : Type*) [AddCommGroup C] [Module R C] [TopologicalSpace C]
    [IsModuleTopology R C] : IsTopologicalAddGroup C where
  continuous_add := (IsModuleTopology.toContinuousAdd R C).1
  continuous_neg := continuous_neg R C

@[fun_prop, continuity]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c5ebb603a580def722fd4c059878cde00d7ab5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
