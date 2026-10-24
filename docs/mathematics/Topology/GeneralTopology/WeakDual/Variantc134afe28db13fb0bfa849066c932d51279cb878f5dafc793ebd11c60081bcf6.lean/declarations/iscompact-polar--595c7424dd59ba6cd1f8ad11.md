# isCompact_polar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fdde6be669434cfea47c4e2ce06b55dc7eeb4b0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 227,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e645d904-e25e-cb86-ec36-1b072197f4fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ecdf638c-d01d-feaf-8c4d-72f2363ece54",
  "kind": "theorem",
  "lexical_name": "isCompact_polar",
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
  "slug": "iscompact-polar--595c7424dd59ba6cd1f8ad11",
  "source": {
    "blob": "fdde6be669434cfea47c4e2ce06b55dc7eeb4b0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 227,
    "path": "GRWTSK/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:595c7424dd59ba6cd1f8ad1192e34f9b6de373da86d119a7faa1f8aab5f6d002",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecdf638c-d01d-feaf-8c4d-72f2363ece54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompact_polar [ProperSpace 𝕜] {s : Set E} (s_nhds : s ∈ 𝓝 (0 : E)) :
    IsCompact (polar 𝕜 s) :=
  isCompact_of_bounded_of_closed (isBounded_polar_of_mem_nhds_zero 𝕜 s_nhds) (isClosed_polar _ _)

/-- The **Banach-Alaoglu theorem**: closed balls of the dual of a normed space `E` are compact in
the weak-star topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdde6be669434cfea47c4e2ce06b55dc7eeb4b0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
