# ContMDiff.clm_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3636c81b5541dc170f09795b708c2bc85b0b7293",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee70a310-30a0-8404-e74c-c4ebe1079c7d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e0c9d18-b21f-f57e-b3b8-ce5588d0ec8b",
  "kind": "theorem",
  "lexical_name": "ContMDiff.clm_comp",
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
  "slug": "contmdiff-clm-comp--8d89365e7953eda3b28d3f3c",
  "source": {
    "blob": "3636c81b5541dc170f09795b708c2bc85b0b7293",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 176,
    "path": "GRWTSK/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d89365e7953eda3b28d3f3c7582abc1b60e52d2d785a5fbe0a5388ac6f18d6a",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e0c9d18-b21f-f57e-b3b8-ce5588d0ec8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContMDiff.clm_comp {g : M → F₁ →L[𝕜] F₃} {f : M → F₂ →L[𝕜] F₁}
    (hg : ContMDiff I 𝓘(𝕜, F₁ →L[𝕜] F₃) n g) (hf : ContMDiff I 𝓘(𝕜, F₂ →L[𝕜] F₁) n f) :
    ContMDiff I 𝓘(𝕜, F₂ →L[𝕜] F₃) n fun x => (g x).comp (f x) := fun x => (hg x).clm_comp (hf x)

/-- Applying a linear map to a vector is smooth within a set. Version in vector spaces. For a
version in nontrivial vector bundles, see `ContMDiffWithinAt.clm_apply_of_inCoordinates`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3636c81b5541dc170f09795b708c2bc85b0b7293` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
