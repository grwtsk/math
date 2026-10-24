# iSup_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6b4415b3be762e3b779b42c608e391ce93a9b2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 597,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d68d0e973a4e14cbcee3673826d7ed657bd065122d75c7bc7739dd960f4b97de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:55225c6f-4965-c9ff-3d76-74b9f5b7daf1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e61e392-fb9d-8e63-e40f-b5fab32888dd",
  "kind": "theorem",
  "lexical_name": "iSup_span",
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
  "slug": "isup-span--f8c26aaea897d44491b114a0",
  "source": {
    "blob": "b6b4415b3be762e3b779b42c608e391ce93a9b2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 601,
    "line": 597,
    "path": "GRWTSK/Algebra/LinearAlgebra/Span/Variantd68d0e973a4e14cbcee3673826d7ed657bd065122d75c7bc7739dd960f4b97de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8c26aaea897d44491b114a057fb2df0f2766f4372d6bf1b61d987f4110d707e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Span/Variantd68d0e973a4e14cbcee3673826d7ed657bd065122d75c7bc7739dd960f4b97de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e61e392-fb9d-8e63-e40f-b5fab32888dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 597–601.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_span {ι : Sort*} (p : ι → Set M) : ⨆ i, span R (p i) = span R (⋃ i, p i) :=
  le_antisymm (iSup_le fun i => span_mono <| subset_iUnion _ i) <|
    span_le.mpr <| iUnion_subset fun i _ hm => mem_iSup_of_mem i <| subset_span hm
#align submodule.supr_span Submodule.iSup_span

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Span/Variantd68d0e973a4e14cbcee3673826d7ed657bd065122d75c7bc7739dd960f4b97de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Span/Variantd68d0e973a4e14cbcee3673826d7ed657bd065122d75c7bc7739dd960f4b97de.lean#L597).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6b4415b3be762e3b779b42c608e391ce93a9b2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
