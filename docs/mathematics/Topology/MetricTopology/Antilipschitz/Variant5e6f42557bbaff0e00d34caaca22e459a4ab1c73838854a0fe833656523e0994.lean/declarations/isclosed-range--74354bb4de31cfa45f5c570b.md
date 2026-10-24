# isClosed_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e226475bce0d82916e3848f9cc4d89ea2572bce1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e6f42557bbaff0e00d34caaca22e459a4ab1c73838854a0fe833656523e0994.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4110c065-12ef-7d37-9c85-35266c69f922",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c3d28e1-2325-37a2-da48-d00bf807db35",
  "kind": "theorem",
  "lexical_name": "isClosed_range",
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
  "slug": "isclosed-range--74354bb4de31cfa45f5c570b",
  "source": {
    "blob": "e226475bce0d82916e3848f9cc4d89ea2572bce1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 157,
    "path": "GRWTSK/Topology/MetricTopology/Antilipschitz/Variant5e6f42557bbaff0e00d34caaca22e459a4ab1c73838854a0fe833656523e0994.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74354bb4de31cfa45f5c570b20dbed75f88e524640a59523140a157267ef2c23",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Antilipschitz/Variant5e6f42557bbaff0e00d34caaca22e459a4ab1c73838854a0fe833656523e0994.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c3d28e1-2325-37a2-da48-d00bf807db35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_range {α β : Type*} [PseudoEMetricSpace α] [EMetricSpace β] [CompleteSpace α]
    {f : α → β} {K : ℝ≥0} (hf : AntilipschitzWith K f) (hfc : UniformContinuous f) :
    IsClosed (range f) :=
  (hf.isComplete_range hfc).isClosed

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Antilipschitz/Variant5e6f42557bbaff0e00d34caaca22e459a4ab1c73838854a0fe833656523e0994.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Antilipschitz/Variant5e6f42557bbaff0e00d34caaca22e459a4ab1c73838854a0fe833656523e0994.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e226475bce0d82916e3848f9cc4d89ea2572bce1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
