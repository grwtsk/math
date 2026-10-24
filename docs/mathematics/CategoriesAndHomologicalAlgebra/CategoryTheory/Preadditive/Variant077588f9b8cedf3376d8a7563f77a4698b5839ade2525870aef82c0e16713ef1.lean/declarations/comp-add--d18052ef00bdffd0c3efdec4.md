# comp_add'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa26715bd8e180e05bbfa09bb16e90e29b0ff279",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/077588f9b8cedf3376d8a7563f77a4698b5839ade2525870aef82c0e16713ef1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5051960-6fe7-8f70-e7a2-5e22bc4a37d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6c8ac99-be81-358a-9352-db7f208789c2",
  "kind": "lemma",
  "lexical_name": "comp_add'",
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
  "slug": "comp-add--d18052ef00bdffd0c3efdec4",
  "source": {
    "blob": "aa26715bd8e180e05bbfa09bb16e90e29b0ff279",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 197,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant077588f9b8cedf3376d8a7563f77a4698b5839ade2525870aef82c0e16713ef1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d18052ef00bdffd0c3efdec43471ee67d516224e8c4b8bb1888d5f96689a17aa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant077588f9b8cedf3376d8a7563f77a4698b5839ade2525870aef82c0e16713ef1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6c8ac99-be81-358a-9352-db7f208789c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comp_add' (f : L.obj X ⟶ L.obj Y) (g₁ g₂ : L.obj Y ⟶ L.obj Z) :
    f ≫ add' W g₁ g₂ = add' W (f ≫ g₁) (f ≫ g₂) := by
  obtain ⟨α, hα⟩ := exists_leftFraction L W f
  obtain ⟨β, hβ₁, hβ₂⟩ := exists_leftFraction₂ L W g₁ g₂
  obtain ⟨γ, hγ₁, hγ₂⟩ := (RightFraction₂.mk _ α.hs β.f β.f').exists_leftFraction₂
  dsimp at hγ₁ hγ₂
  rw [add'_eq W g₁ g₂ β hβ₁ hβ₂, add'_eq W (f ≫ g₁) (f ≫ g₂)
    (LeftFraction₂.mk (α.f ≫ γ.f) (α.f ≫ γ.f') (β.s ≫ γ.s) (W.comp_mem _ _ β.hs γ.hs))
    (by simpa only [hα, hβ₁] using! LeftFraction.map_comp_map_eq_map α β.fst γ.fst hγ₁ L)
    (by simpa only [hα, hβ₂] using! LeftFraction.map_comp_map_eq_map α β.snd γ.snd hγ₂ L),
    hα, LeftFraction.map_comp_map_eq_map α β.add γ.add
      (by simp only [add_comp, hγ₁, hγ₂, comp_add])]
  dsimp [LeftFraction₂.add]
  rw [comp_add]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant077588f9b8cedf3376d8a7563f77a4698b5839ade2525870aef82c0e16713ef1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant077588f9b8cedf3376d8a7563f77a4698b5839ade2525870aef82c0e16713ef1.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa26715bd8e180e05bbfa09bb16e90e29b0ff279` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
