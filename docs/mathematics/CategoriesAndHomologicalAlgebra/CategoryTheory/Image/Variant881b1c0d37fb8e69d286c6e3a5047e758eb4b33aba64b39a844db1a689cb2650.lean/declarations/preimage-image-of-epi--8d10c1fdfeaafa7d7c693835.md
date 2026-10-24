# preimage_image_of_epi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f46887ee78b364428b1ffb72a7eeffa9ba6d01aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88428291-f7fe-9322-03c1-1c18c3f61fc6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a34e6337-9937-abd1-3902-7c81979f3032",
  "kind": "lemma",
  "lexical_name": "preimage_image_of_epi",
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
  "slug": "preimage-image-of-epi--8d10c1fdfeaafa7d7c693835",
  "source": {
    "blob": "f46887ee78b364428b1ffb72a7eeffa9ba6d01aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 178,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d10c1fdfeaafa7d7c693835855ea1003018bbc50bba3d030f8d46da067f3ae2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a34e6337-9937-abd1-3902-7c81979f3032`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preimage_image_of_epi (G : Subpresheaf F) (p : F' ⟶ F) [hp : Epi p] :
    (G.preimage p).image p = G := by
  apply le_antisymm
  · rw [image_le_iff]
  · intro i x hx
    simp only [NatTrans.epi_iff_epi_app, epi_iff_surjective] at hp
    obtain ⟨y, rfl⟩ := hp _ x
    exact ⟨y, hx, rfl⟩

end preimage

end Subpresheaf

@[deprecated (since := "2025-01-25")] alias imagePresheaf := Subpresheaf.range
@[deprecated (since := "2025-01-25")] alias imagePresheaf_id := Subpresheaf.range_id
@[deprecated (since := "2025-01-25")] alias toImagePresheaf := Subpresheaf.toRange
@[deprecated (since := "2025-01-25")] alias toImagePresheaf_ι := Subpresheaf.toRange_ι
@[deprecated (since := "2025-01-25")] alias imagePresheaf_comp_le := Subpresheaf.range_comp_le

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f46887ee78b364428b1ffb72a7eeffa9ba6d01aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
