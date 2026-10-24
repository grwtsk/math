# candidatesBOfCandidates_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79d6fc85f20103763d3f5f2db3629e393cbf6505",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 384,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04e074fa-b629-9ffd-0306-65b485372721",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e80323b9-9e25-39c0-76da-82032a02a0ec",
  "kind": "theorem",
  "lexical_name": "candidatesBOfCandidates_mem",
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
  "slug": "candidatesbofcandidates-mem--08f023b791da4a68376bc3a2",
  "source": {
    "blob": "79d6fc85f20103763d3f5f2db3629e393cbf6505",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 384,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08f023b791da4a68376bc3a2459f9cf0d5ad288b4da2e1b3bd21b56c209bf113",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e80323b9-9e25-39c0-76da-82032a02a0ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem candidatesBOfCandidates_mem (f : ProdSpaceFun X Y) (fA : f ∈ candidates X Y) :
    candidatesBOfCandidates f fA ∈ candidatesB X Y :=
  fA

variable [Nonempty X] [Nonempty Y]

set_option backward.privateInPublic true in
/-- The distance on `X ⊕ Y` is a candidate -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79d6fc85f20103763d3f5f2db3629e393cbf6505` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
