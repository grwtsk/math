# isClosedEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "402d8f3116b5ba55d2374b422e6be8330b86c87e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 431,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f3964e01dad08743567bd550a307e0b41ed8b17563f58bbd8f2f9874463eedd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a84e0167-40ba-ac87-14f3-ca71d7883ec2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1dd9f841-03fe-7e92-8104-b331f32d236f",
  "kind": "lemma",
  "lexical_name": "isClosedEmbedding",
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
  "slug": "isclosedembedding--5c78246c404eeb80de318c35",
  "source": {
    "blob": "402d8f3116b5ba55d2374b422e6be8330b86c87e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 431,
    "path": "GRWTSK/Topology/MetricTopology/Dilation/Variant0f3964e01dad08743567bd550a307e0b41ed8b17563f58bbd8f2f9874463eedd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c78246c404eeb80de318c356ac5f5c894f4b23a2cf783d2bf4cecae2e8f5994",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Dilation/Variant0f3964e01dad08743567bd550a307e0b41ed8b17563f58bbd8f2f9874463eedd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1dd9f841-03fe-7e92-8104-b331f32d236f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isClosedEmbedding [CompleteSpace α] [EMetricSpace β] [DilationClass F α β] (f : F) :
    IsClosedEmbedding f :=
  (antilipschitz f).isClosedEmbedding (lipschitz f).uniformContinuous

end EmetricDilation

/-- Ratio of the composition `g.comp f` of two dilations is the product of their ratios. We assume
that the domain `α` of `f` is a nontrivial metric space, otherwise
`Dilation.ratio f = Dilation.ratio (g.comp f) = 1` but `Dilation.ratio g` may have any value.

See also `Dilation.ratio_comp'` for a version that works for more general spaces. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Dilation/Variant0f3964e01dad08743567bd550a307e0b41ed8b17563f58bbd8f2f9874463eedd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Dilation/Variant0f3964e01dad08743567bd550a307e0b41ed8b17563f58bbd8f2f9874463eedd.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `402d8f3116b5ba55d2374b422e6be8330b86c87e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
