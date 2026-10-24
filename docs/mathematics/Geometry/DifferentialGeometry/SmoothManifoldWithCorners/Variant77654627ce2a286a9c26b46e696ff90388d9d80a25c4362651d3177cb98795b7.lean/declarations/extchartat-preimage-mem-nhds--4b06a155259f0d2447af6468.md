# extChartAt_preimage_mem_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b880836f8624b93932b2b9106b544be39d16096a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1286,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/77654627ce2a286a9c26b46e696ff90388d9d80a25c4362651d3177cb98795b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa44bffd-aa72-a7f5-4da7-5cdaf4a3f261",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5313f000-2935-7119-b4e1-09eb91520358",
  "kind": "theorem",
  "lexical_name": "extChartAt_preimage_mem_nhds",
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
  "slug": "extchartat-preimage-mem-nhds--4b06a155259f0d2447af6468",
  "source": {
    "blob": "b880836f8624b93932b2b9106b544be39d16096a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1293,
    "line": 1286,
    "path": "GRWTSK/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant77654627ce2a286a9c26b46e696ff90388d9d80a25c4362651d3177cb98795b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b06a155259f0d2447af64688788c5dec104898b29a437e6980412ea9aeadd11",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant77654627ce2a286a9c26b46e696ff90388d9d80a25c4362651d3177cb98795b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5313f000-2935-7119-b4e1-09eb91520358`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1286–1293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extChartAt_preimage_mem_nhds (ht : t ∈ 𝓝 x) :
    (extChartAt I x).symm ⁻¹' t ∈ 𝓝 ((extChartAt I x) x) := by
  apply (continuousAt_extChartAt_symm I x).preimage_mem_nhds
  rwa [(extChartAt I x).left_inv (mem_extChartAt_source _ _)]
#align ext_chart_at_preimage_mem_nhds extChartAt_preimage_mem_nhds

/-- Technical lemma to rewrite suitably the preimage of an intersection under an extended chart, to
bring it into a convenient form to apply derivative lemmas. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant77654627ce2a286a9c26b46e696ff90388d9d80a25c4362651d3177cb98795b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant77654627ce2a286a9c26b46e696ff90388d9d80a25c4362651d3177cb98795b7.lean#L1286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b880836f8624b93932b2b9106b544be39d16096a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
