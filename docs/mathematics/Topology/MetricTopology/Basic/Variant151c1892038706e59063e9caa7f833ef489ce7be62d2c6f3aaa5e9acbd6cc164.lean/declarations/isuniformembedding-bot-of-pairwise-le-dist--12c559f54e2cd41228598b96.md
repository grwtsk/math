# isUniformEmbedding_bot_of_pairwise_le_dist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8d86e49fa9eb22eebfabd940a53e29ddb329509",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dfb3ad45-3ba1-3517-3fcc-7c7487f93aeb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2fa3a75c-65df-7bb0-6f24-b2ef94eaff27",
  "kind": "theorem",
  "lexical_name": "isUniformEmbedding_bot_of_pairwise_le_dist",
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
  "slug": "isuniformembedding-bot-of-pairwise-le-dist--12c559f54e2cd41228598b96",
  "source": {
    "blob": "d8d86e49fa9eb22eebfabd940a53e29ddb329509",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 63,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12c559f54e2cd41228598b96249b597a30afdb69868b1aaa758fabe44bbb8712",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fa3a75c-65df-7bb0-6f24-b2ef94eaff27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUniformEmbedding_bot_of_pairwise_le_dist {β : Type*} {ε : ℝ} (hε : 0 < ε) {f : β → α}
    (hf : Pairwise fun x y => ε ≤ dist (f x) (f y)) :
    @IsUniformEmbedding _ _ ⊥ (by infer_instance) f :=
  isUniformEmbedding_of_spaced_out (dist_mem_uniformity hε) <| by simpa using hf

end Metric

/-- One gets a metric space from an emetric space if the edistance
is everywhere finite, by pushing the edistance to reals. We set it up so that the edist and the
uniformity are defeq in the metric space and the emetric space. In this definition, the distance
is given separately, to be able to prescribe some expression which is not defeq to the push-forward
of the edistance to reals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8d86e49fa9eb22eebfabd940a53e29ddb329509` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
