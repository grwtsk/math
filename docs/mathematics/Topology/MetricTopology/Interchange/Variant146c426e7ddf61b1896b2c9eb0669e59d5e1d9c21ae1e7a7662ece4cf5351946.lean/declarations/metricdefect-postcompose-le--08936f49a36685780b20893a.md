# metricDefect_postcompose_le

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
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e5156b3-c64a-d333-9562-a7eba559b762",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c84412b7-613b-6694-775f-d688c43682cd",
  "kind": "theorem",
  "lexical_name": "metricDefect_postcompose_le",
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
  "slug": "metricdefect-postcompose-le--08936f49a36685780b20893a",
  "source": {
    "blob": "232a3eef882e3ff5c5babbdee300cc0b6183da9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 144,
    "path": "GRWTSK/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08936f49a36685780b20893a3b59fcb86ccda9082b77a0855318a504f63adb7c",
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

Occurrence: `result:c84412b7-613b-6694-775f-d688c43682cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem metricDefect_postcompose_le
    {Z : Type uZ}
    [PseudoMetricSpace Compare]
    [PseudoMetricSpace Z]
    {K : ℝ≥0}
    (square :
      InterchangeSquare
        PrevSources PrevAggregate NowSources Compare)
    (post : Compare → Z)
    (postLipschitz : LipschitzWith K post)
    (input : PrevSources) :
    metricDefect (postcompose square post) input ≤
      K * metricDefect square input := by
  simpa [metricDefect, leftPath, rightPath, postcompose,
    Function.comp_apply] using
      postLipschitz.nndist_le
        (leftPath square input)
        (rightPath square input)

/-- Transport a defect certificate through a downstream Lipschitz map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `232a3eef882e3ff5c5babbdee300cc0b6183da9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
