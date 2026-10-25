# Substructure.fg_iff_structure_fg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a60ef526866574b41c75e27f4bd9430624989ae5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2b1f440-7427-6301-3f73-c7e7eb63cc85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4457d532-b1f6-d7e9-2b65-3840df2406ed",
  "kind": "theorem",
  "lexical_name": "Substructure.fg_iff_structure_fg",
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
  "slug": "substructure-fg-iff-structure-fg--e2adbf1fa75cff01999f30cd",
  "source": {
    "blob": "a60ef526866574b41c75e27f4bd9430624989ae5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 287,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2adbf1fa75cff01999f30cda2ebdcf4bfcf8b4a0d2fbc154486b9c42b713de5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4457d532-b1f6-d7e9-2b65-3840df2406ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Substructure.fg_iff_structure_fg (S : L.Substructure M) : S.FG ↔ Structure.FG L S := by
  rw [Structure.fg_def]
  refine ⟨fun h => FG.of_map_embedding S.subtype ?_, fun h => ?_⟩
  · rw [← Hom.range_eq_map, range_subtype]
    exact h
  · have h := h.map S.subtype.toHom
    rw [← Hom.range_eq_map, range_subtype] at h
    exact h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a60ef526866574b41c75e27f4bd9430624989ae5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
