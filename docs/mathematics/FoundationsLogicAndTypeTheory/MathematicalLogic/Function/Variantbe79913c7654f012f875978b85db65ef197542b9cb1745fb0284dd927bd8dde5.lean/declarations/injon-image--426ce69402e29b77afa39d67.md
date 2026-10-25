# injOn_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a13c78becc50554e30be84f4e6e3eecd84221a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be79913c7654f012f875978b85db65ef197542b9cb1745fb0284dd927bd8dde5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4faf4ecb-f957-4175-7f73-b5e30fb37180",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fae3dcd1-1c54-3091-f6ea-0d6b6d4c3f04",
  "kind": "theorem",
  "lexical_name": "injOn_image",
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
  "slug": "injon-image--426ce69402e29b77afa39d67",
  "source": {
    "blob": "6a13c78becc50554e30be84f4e6e3eecd84221a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1118,
    "line": 1113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantbe79913c7654f012f875978b85db65ef197542b9cb1745fb0284dd927bd8dde5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:426ce69402e29b77afa39d67efd92cdfcc5bf36c0c3537e87376a99ed72e7e38",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantbe79913c7654f012f875978b85db65ef197542b9cb1745fb0284dd927bd8dde5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fae3dcd1-1c54-3091-f6ea-0d6b6d4c3f04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1113–1118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injOn_image (h : Semiconj f fa fb) (ha : InjOn fa s) (hf : InjOn f (fa '' s)) :
    InjOn fb (f '' s) := by
  rintro _ ⟨x, hx, rfl⟩ _ ⟨y, hy, rfl⟩ H
  simp only [← h.eq] at H
  exact congr_arg f (ha hx hy <| hf (mem_image_of_mem fa hx) (mem_image_of_mem fa hy) H)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantbe79913c7654f012f875978b85db65ef197542b9cb1745fb0284dd927bd8dde5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantbe79913c7654f012f875978b85db65ef197542b9cb1745fb0284dd927bd8dde5.lean#L1113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a13c78becc50554e30be84f4e6e3eecd84221a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
