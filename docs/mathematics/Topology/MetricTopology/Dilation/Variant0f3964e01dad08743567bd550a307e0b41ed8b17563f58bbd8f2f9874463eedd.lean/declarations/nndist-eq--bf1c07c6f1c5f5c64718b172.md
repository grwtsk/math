# nndist_eq

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
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f3964e01dad08743567bd550a307e0b41ed8b17563f58bbd8f2f9874463eedd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a7d5ad06-f3c5-36a6-12dc-03f499a32e04",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f7af1e9-dfc6-e754-985d-aa889da679fe",
  "kind": "theorem",
  "lexical_name": "nndist_eq",
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
  "slug": "nndist-eq--bf1c07c6f1c5f5c64718b172",
  "source": {
    "blob": "402d8f3116b5ba55d2374b422e6be8330b86c87e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 158,
    "path": "GRWTSK/Topology/MetricTopology/Dilation/Variant0f3964e01dad08743567bd550a307e0b41ed8b17563f58bbd8f2f9874463eedd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf1c07c6f1c5f5c64718b1728fdb940be76834ef1c3abe68c25c017c91154318",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Dilation/Variant0f3964e01dad08743567bd550a307e0b41ed8b17563f58bbd8f2f9874463eedd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f7af1e9-dfc6-e754-985d-aa889da679fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nndist_eq {α β F : Type*} [PseudoMetricSpace α] [PseudoMetricSpace β] [FunLike F α β]
    [DilationClass F α β] (f : F) (x y : α) :
    nndist (f x) (f y) = ratio f * nndist x y := by
  simp only [← ENNReal.coe_inj, ← edist_nndist, ENNReal.coe_mul, edist_eq]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Dilation/Variant0f3964e01dad08743567bd550a307e0b41ed8b17563f58bbd8f2f9874463eedd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Dilation/Variant0f3964e01dad08743567bd550a307e0b41ed8b17563f58bbd8f2f9874463eedd.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `402d8f3116b5ba55d2374b422e6be8330b86c87e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
