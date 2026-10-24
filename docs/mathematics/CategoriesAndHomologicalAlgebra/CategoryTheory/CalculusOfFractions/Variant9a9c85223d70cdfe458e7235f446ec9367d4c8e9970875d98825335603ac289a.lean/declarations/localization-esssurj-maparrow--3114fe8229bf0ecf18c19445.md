# Localization.essSurj_mapArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82f48f0932e52b11636563a6762ce19dac610edf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 767,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a9c85223d70cdfe458e7235f446ec9367d4c8e9970875d98825335603ac289a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4187b1af-7ed8-5f6f-1e8d-623ecb44b6f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:434f65fb-75ef-89e1-1233-422f44b9dee2",
  "kind": "lemma",
  "lexical_name": "Localization.essSurj_mapArrow",
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
  "slug": "localization-esssurj-maparrow--3114fe8229bf0ecf18c19445",
  "source": {
    "blob": "82f48f0932e52b11636563a6762ce19dac610edf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 790,
    "line": 767,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant9a9c85223d70cdfe458e7235f446ec9367d4c8e9970875d98825335603ac289a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3114fe8229bf0ecf18c194450e7dfa1b3c5fa4afa13adf8b04144bb4835d177e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant9a9c85223d70cdfe458e7235f446ec9367d4c8e9970875d98825335603ac289a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:434f65fb-75ef-89e1-1233-422f44b9dee2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 767–790.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Localization.essSurj_mapArrow :
    L.mapArrow.EssSurj where
  mem_essImage f := by
    have := Localization.essSurj L W
    obtain ⟨X, ⟨eX⟩⟩ : ∃ (X : C), Nonempty (L.obj X ≅ f.left) :=
      ⟨_, ⟨L.objObjPreimageIso f.left⟩⟩
    obtain ⟨Y, ⟨eY⟩⟩ : ∃ (Y : C), Nonempty (L.obj Y ≅ f.right) :=
      ⟨_, ⟨L.objObjPreimageIso f.right⟩⟩
    obtain ⟨φ, hφ⟩ := Localization.exists_leftFraction L W (eX.hom ≫ f.hom ≫ eY.inv)
    refine ⟨Arrow.mk φ.f, ⟨Iso.symm ?_⟩⟩
    refine Arrow.isoMk eX.symm (eY.symm ≪≫ Localization.isoOfHom L W φ.s φ.hs) ?_
    dsimp
    simp only [← cancel_epi eX.hom, Iso.hom_inv_id_assoc, reassoc_of% hφ,
      MorphismProperty.LeftFraction.map_comp_map_s]

end


namespace MorphismProperty

variable {W}

/-- The right fraction in the opposite category corresponding to a left fraction. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant9a9c85223d70cdfe458e7235f446ec9367d4c8e9970875d98825335603ac289a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant9a9c85223d70cdfe458e7235f446ec9367d4c8e9970875d98825335603ac289a.lean#L767).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82f48f0932e52b11636563a6762ce19dac610edf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
