# Module.length_ne_top_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "046e9c403ccabeb328b69cedd3130d17e00f7cdd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d75be333-c133-558d-0fc9-37c3e7eed554",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:176e445b-5baf-be5b-f409-f18b15a270b5",
  "kind": "lemma",
  "lexical_name": "Module.length_ne_top_iff",
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
  "slug": "module-length-ne-top-iff--d283cd427194a189d80eca1b",
  "source": {
    "blob": "046e9c403ccabeb328b69cedd3130d17e00f7cdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 91,
    "path": "GRWTSK/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d283cd427194a189d80eca1b609ef3ffc0987a56ee93ca83eca3840e38d017b8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:176e445b-5baf-be5b-f409-f18b15a270b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.length_ne_top_iff : Module.length R M ≠ ⊤ ↔ IsFiniteLength R M := by
  refine ⟨fun h ↦ ?_, fun H ↦ ?_⟩
  · rw [length_ne_top_iff_finiteDimensionalOrder] at h
    rw [isFiniteLength_iff_isNoetherian_isArtinian, isNoetherian_iff, isArtinian_iff]
    exact ⟨Rel.wellFounded_swap_of_finiteDimensional _, Rel.wellFounded_of_finiteDimensional _⟩
  · obtain ⟨s, hs₁, hs₂⟩ := isFiniteLength_iff_exists_compositionSeries.mp H
    rw [← length_compositionSeries s hs₁ hs₂]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `046e9c403ccabeb328b69cedd3130d17e00f7cdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
