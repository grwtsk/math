# nndist_eq_of_L2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "420a78e8247820dedd7afd4f54e25a610f48ade6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 652,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d80183d1e8bc3aeecc6b26f91b8f735f78f7828d1f6facce14099ff2b75ac44.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:723cddfb-56d4-cf56-f1b6-25bf090b5ba2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eebe50ae-616e-009e-8e61-357529cb20eb",
  "kind": "theorem",
  "lexical_name": "nndist_eq_of_L2",
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
  "slug": "nndist-eq-of-l2--3950229e1edef8ac5bb4aa87",
  "source": {
    "blob": "420a78e8247820dedd7afd4f54e25a610f48ade6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 657,
    "line": 652,
    "path": "GRWTSK/Topology/MetricTopology/PiLp/Variant6d80183d1e8bc3aeecc6b26f91b8f735f78f7828d1f6facce14099ff2b75ac44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3950229e1edef8ac5bb4aa877b78343440d303eb0edac6c52fd5beaf77c16bba",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiLp/Variant6d80183d1e8bc3aeecc6b26f91b8f735f78f7828d1f6facce14099ff2b75ac44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eebe50ae-616e-009e-8e61-357529cb20eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 652–657.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nndist_eq_of_L2 (x y : PiLp 2 β) :
    nndist x y = NNReal.sqrt (∑ i, nndist (x i) (y i) ^ 2) :=
  NNReal.eq <| by
    push_cast
    exact dist_eq_of_L2 _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiLp/Variant6d80183d1e8bc3aeecc6b26f91b8f735f78f7828d1f6facce14099ff2b75ac44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiLp/Variant6d80183d1e8bc3aeecc6b26f91b8f735f78f7828d1f6facce14099ff2b75ac44.lean#L652).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `420a78e8247820dedd7afd4f54e25a610f48ade6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
