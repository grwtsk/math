# completeSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66acc2bc41e4175777a75bc965c24ba9b1722ec1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08ea978cd710ef37a6aa6e01b85c8f15f3fd5011bd3539623a4fbeb0cd4d5d87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:685ea72c-6e8d-9aad-2744-c73c054f43bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05af4796-efd7-e34d-28a5-5dc72651955c",
  "kind": "theorem",
  "lexical_name": "completeSpace",
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
  "slug": "completespace--6315a434413d7a8f507f28ef",
  "source": {
    "blob": "66acc2bc41e4175777a75bc965c24ba9b1722ec1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant08ea978cd710ef37a6aa6e01b85c8f15f3fd5011bd3539623a4fbeb0cd4d5d87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6315a434413d7a8f507f28ef98a8f10cdd5334fd0ea677284be9a4e0dc93d6d2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant08ea978cd710ef37a6aa6e01b85c8f15f3fd5011bd3539623a4fbeb0cd4d5d87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05af4796-efd7-e34d-28a5-5dc72651955c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeSpace (h : IsCoherentWith {s : Set (ι → E) | IsVonNBounded 𝕜 s}) :
    CompleteSpace (E [⋀^ι]→L[𝕜] F) := by
  wlog hF : T2Space F generalizing F
  · rw [(isUniformInducing_postcomp (SeparationQuotient.mkCLM _ _)
      SeparationQuotient.isUniformInducing_mk).completeSpace_congr]
    · exact this inferInstance
    · intro f
      use (SeparationQuotient.outCLM _ _).compContinuousAlternatingMap f
      ext
      simp
  have := ContinuousMultilinearMap.completeSpace (F := F) h
  rw [completeSpace_iff_isComplete_range
    isUniformEmbedding_toContinuousMultilinearMap.isUniformInducing]
  apply isClosed_range_toContinuousMultilinearMap.isComplete

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant08ea978cd710ef37a6aa6e01b85c8f15f3fd5011bd3539623a4fbeb0cd4d5d87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant08ea978cd710ef37a6aa6e01b85c8f15f3fd5011bd3539623a4fbeb0cd4d5d87.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66acc2bc41e4175777a75bc965c24ba9b1722ec1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
