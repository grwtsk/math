# nnnorm_algebraicDefect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "232a3eef882e3ff5c5babbdee300cc0b6183da9d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0048290e-7887-08d3-a061-1758bb9f8432",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34665685-52f1-fced-9321-ffaebea17037",
  "kind": "theorem",
  "lexical_name": "nnnorm_algebraicDefect",
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
  "slug": "nnnorm-algebraicdefect--634fe1d3b864b2a742e3890b",
  "source": {
    "blob": "232a3eef882e3ff5c5babbdee300cc0b6183da9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 200,
    "path": "GRWTSK/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:634fe1d3b864b2a742e3890bd87fe0d8f24ed593cb7eb2499c93b40f03f0a940",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34665685-52f1-fced-9321-ffaebea17037`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nnnorm_algebraicDefect
    (square :
      InterchangeSquare
        PrevSources PrevAggregate NowSources Compare)
    (input : PrevSources) :
    ‖algebraicDefect square input‖₊ =
      metricDefect square input := by
  exact
    (nndist_eq_nnnorm_sub
      (leftPath square input)
      (rightPath square input)).symm

end Additive

end InterchangeSquare

/-- Snapshot metadata wrapper for a pointwise interchange certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `232a3eef882e3ff5c5babbdee300cc0b6183da9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
