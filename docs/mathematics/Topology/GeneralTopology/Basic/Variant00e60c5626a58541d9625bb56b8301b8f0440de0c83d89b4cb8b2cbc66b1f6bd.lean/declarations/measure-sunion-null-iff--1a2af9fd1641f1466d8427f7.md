# measure_sUnion_null_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30720c6e-d6e5-ba3c-9cee-f5dab42bc4be",
  "kind": "theorem",
  "lexical_name": "measure_sUnion_null_iff",
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
  "slug": "measure-sunion-null-iff--1a2af9fd1641f1466d8427f7",
  "source": {
    "blob": "79399f8c49991aee5647209eb4de14c2dad2620a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 113,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant00e60c5626a58541d9625bb56b8301b8f0440de0c83d89b4cb8b2cbc66b1f6bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a2af9fd1641f1466d8427f71437e02a4049a3f3833b05b03cc756165f8d182d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant00e60c5626a58541d9625bb56b8301b8f0440de0c83d89b4cb8b2cbc66b1f6bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30720c6e-d6e5-ba3c-9cee-f5dab42bc4be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_sUnion_null_iff {S : Set (Set α)} (hS : S.Countable) :
    μ (⋃₀ S) = 0 ↔ ∀ s ∈ S, μ s = 0 := by
  rw [sUnion_eq_biUnion, measure_biUnion_null_iff hS]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant00e60c5626a58541d9625bb56b8301b8f0440de0c83d89b4cb8b2cbc66b1f6bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant00e60c5626a58541d9625bb56b8301b8f0440de0c83d89b4cb8b2cbc66b1f6bd.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79399f8c49991aee5647209eb4de14c2dad2620a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
