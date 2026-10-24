# IsUniformEmbedding.comapMetricSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28ebbb5d5158a86670bf9e20a24c64dc2b007f84c0eb7ae0c28b4a6cdffa7d2e",
  "kind": "abbrev",
  "lexical_name": "IsUniformEmbedding.comapMetricSpace",
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
  "slug": "isuniformembedding-comapmetricspace--742ed7a1cb0061f1834afdf9",
  "source": {
    "blob": "4aa9c5aa227b221afc78e2b75d464025a45459e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 109,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:742ed7a1cb0061f1834afdf916ad6965236819f727361624b6b064241f9a2fa9",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28ebbb5d5158a86670bf9e20a24c64dc2b007f84c0eb7ae0c28b4a6cdffa7d2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev IsUniformEmbedding.comapMetricSpace {α β} [UniformSpace α] [m : MetricSpace β] (f : α → β)
    (h : IsUniformEmbedding f) : MetricSpace α :=
  .replaceUniformity (.induced f h.injective m) h.comap_uniformity.symm

/-- Pull back a metric space structure by an embedding. This is a version of
`MetricSpace.induced` useful in case if the domain already has a `TopologicalSpace` structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant48a9acf499909cb4977185b06c5a153cb82295ca1054f0c3ce106a880ce9f867.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aa9c5aa227b221afc78e2b75d464025a45459e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
