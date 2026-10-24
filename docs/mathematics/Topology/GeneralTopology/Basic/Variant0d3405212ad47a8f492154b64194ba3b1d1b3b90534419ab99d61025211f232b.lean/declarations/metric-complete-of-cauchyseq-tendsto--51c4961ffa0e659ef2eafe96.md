# Metric.complete_of_cauchySeq_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58243fb8fb707a94222d863dd235774213e02743",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1353,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d3405212ad47a8f492154b64194ba3b1d1b3b90534419ab99d61025211f232b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e2eb43a-56b4-fbc2-d2e7-c08337ab4fab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4af166a8-2f8a-8a1c-9672-94622409a407",
  "kind": "theorem",
  "lexical_name": "Metric.complete_of_cauchySeq_tendsto",
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
  "slug": "metric-complete-of-cauchyseq-tendsto--51c4961ffa0e659ef2eafe96",
  "source": {
    "blob": "58243fb8fb707a94222d863dd235774213e02743",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1360,
    "line": 1353,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0d3405212ad47a8f492154b64194ba3b1d1b3b90534419ab99d61025211f232b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51c4961ffa0e659ef2eafe9668576f6e42384b81e9115e260ff71a904e0e3b2f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant0d3405212ad47a8f492154b64194ba3b1d1b3b90534419ab99d61025211f232b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4af166a8-2f8a-8a1c-9672-94622409a407`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1353–1360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Metric.complete_of_cauchySeq_tendsto :
    (∀ u : ℕ → α, CauchySeq u → ∃ a, Tendsto u atTop (𝓝 a)) → CompleteSpace α :=
  EMetric.complete_of_cauchySeq_tendsto
#align metric.complete_of_cauchy_seq_tendsto Metric.complete_of_cauchySeq_tendsto

section Real

/-- Instantiate the reals as a pseudometric space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant0d3405212ad47a8f492154b64194ba3b1d1b3b90534419ab99d61025211f232b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant0d3405212ad47a8f492154b64194ba3b1d1b3b90534419ab99d61025211f232b.lean#L1353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58243fb8fb707a94222d863dd235774213e02743` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
