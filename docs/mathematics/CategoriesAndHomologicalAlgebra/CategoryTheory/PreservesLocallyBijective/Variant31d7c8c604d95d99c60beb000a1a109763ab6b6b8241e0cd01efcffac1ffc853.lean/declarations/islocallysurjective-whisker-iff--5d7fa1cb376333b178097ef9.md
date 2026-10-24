# isLocallySurjective_whisker_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c5b83f21cbdf5568a9baf60924b98ca2571a782",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31d7c8c604d95d99c60beb000a1a109763ab6b6b8241e0cd01efcffac1ffc853.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4acf9b1f-ac26-3972-92ef-e3058dcfd584",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:600b5ef2-2d8b-2ae5-8c99-b99da9824eb7",
  "kind": "lemma",
  "lexical_name": "isLocallySurjective_whisker_iff",
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
  "slug": "islocallysurjective-whisker-iff--5d7fa1cb376333b178097ef9",
  "source": {
    "blob": "1c5b83f21cbdf5568a9baf60924b98ca2571a782",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 79,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variant31d7c8c604d95d99c60beb000a1a109763ab6b6b8241e0cd01efcffac1ffc853.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d7fa1cb376333b178097ef98a45fd2f6ab0c24626461c52621d5a17b6257aa6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variant31d7c8c604d95d99c60beb000a1a109763ab6b6b8241e0cd01efcffac1ffc853.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:600b5ef2-2d8b-2ae5-8c99-b99da9824eb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocallySurjective_whisker_iff (hH : CoverPreserving J K H) [H.IsCocontinuous J K]
    [H.IsCoverDense K] : IsLocallySurjective J (whiskerLeft H.op f) ↔ IsLocallySurjective K f :=
  ⟨fun _ ↦ isLocallySurjective_of_whisker J K H f hH,
    fun _ ↦ isLocallySurjective_whisker J K H f⟩

end Presheaf

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variant31d7c8c604d95d99c60beb000a1a109763ab6b6b8241e0cd01efcffac1ffc853.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variant31d7c8c604d95d99c60beb000a1a109763ab6b6b8241e0cd01efcffac1ffc853.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c5b83f21cbdf5568a9baf60924b98ca2571a782` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
