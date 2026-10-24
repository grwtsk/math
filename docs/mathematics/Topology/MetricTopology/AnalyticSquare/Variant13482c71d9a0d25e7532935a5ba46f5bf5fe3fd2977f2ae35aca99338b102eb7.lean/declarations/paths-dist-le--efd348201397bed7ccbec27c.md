# paths_dist_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cdc0f68126c18cf03482130dde3934f6e89e9a41",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13482c71d9a0d25e7532935a5ba46f5bf5fe3fd2977f2ae35aca99338b102eb7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4af1e863-d847-36ee-adba-0cfe86e54078",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9baaa957-a316-baf4-a440-2a3d02b1089e",
  "kind": "theorem",
  "lexical_name": "paths_dist_le",
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
  "slug": "paths-dist-le--efd348201397bed7ccbec27c",
  "source": {
    "blob": "cdc0f68126c18cf03482130dde3934f6e89e9a41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 86,
    "path": "GRWTSK/Topology/MetricTopology/AnalyticSquare/Variant13482c71d9a0d25e7532935a5ba46f5bf5fe3fd2977f2ae35aca99338b102eb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efd348201397bed7ccbec27c41373f7350c5549b12e51a50b3bbdd93e3a78ee3",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/AnalyticSquare/Variant13482c71d9a0d25e7532935a5ba46f5bf5fe3fd2977f2ae35aca99338b102eb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9baaa957-a316-baf4-a440-2a3d02b1089e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paths_dist_le (square : MetricBoundedSquare A B A' B') (x : A) :
    dist (square.toDiagramSquare.topRight x)
        (square.toDiagramSquare.leftBottom x) ≤ square.bound :=
  square.commutationBound x

/-- A zero numerical bound yields zero path distance.  Exact equality is not
claimed for a pseudometric space. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/AnalyticSquare/Variant13482c71d9a0d25e7532935a5ba46f5bf5fe3fd2977f2ae35aca99338b102eb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/AnalyticSquare/Variant13482c71d9a0d25e7532935a5ba46f5bf5fe3fd2977f2ae35aca99338b102eb7.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdc0f68126c18cf03482130dde3934f6e89e9a41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
