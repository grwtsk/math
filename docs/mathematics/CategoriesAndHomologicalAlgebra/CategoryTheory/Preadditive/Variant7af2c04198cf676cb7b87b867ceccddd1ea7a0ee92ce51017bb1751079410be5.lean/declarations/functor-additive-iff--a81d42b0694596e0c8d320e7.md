# functor_additive_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8d17b5e6528b78fe0c03d6cd4c170224a30309e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 322,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c95790e-1cfb-8ced-149d-5857a555446f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30321219-0bec-5c9e-b57e-df9ad9fd0e35",
  "kind": "lemma",
  "lexical_name": "functor_additive_iff",
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
  "slug": "functor-additive-iff--a81d42b0694596e0c8d320e7",
  "source": {
    "blob": "f8d17b5e6528b78fe0c03d6cd4c170224a30309e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 322,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a81d42b0694596e0c8d320e7aa4b9567fb1b1752ce66c340c9530797c74948ff",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30321219-0bec-5c9e-b57e-df9ad9fd0e35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma functor_additive_iff {E : Type*} [Category E] [Preadditive E] [Preadditive D] [L.Additive]
    (G : D ⥤ E) :
    G.Additive ↔ (L ⋙ G).Additive := by
  constructor
  · intro
    infer_instance
  · intro h
    suffices ∀ ⦃X Y : C⦄ (f g : L.obj X ⟶ L.obj Y), G.map (f + g) = G.map f + G.map g by
      refine ⟨fun {X Y f g} => ?_⟩
      have hL := essSurj L W
      have eq := this ((L.objObjPreimageIso X).hom ≫ f ≫ (L.objObjPreimageIso Y).inv)
        ((L.objObjPreimageIso X).hom ≫ g ≫ (L.objObjPreimageIso Y).inv)
      rw [Functor.map_comp, Functor.map_comp, Functor.map_comp, Functor.map_comp,
        ← comp_add, ← comp_add, ← add_comp, ← add_comp, Functor.map_comp, Functor.map_comp] at eq
      rw [← cancel_mono (G.map (L.objObjPreimageIso Y).inv),
        ← cancel_epi (G.map (L.objObjPreimageIso X).hom), eq]
    intros X Y f g
    obtain ⟨φ, rfl, rfl⟩ := exists_leftFraction₂ L W f g
    have := Localization.inverts L W φ.s φ.hs
    rw [← φ.map_add L (inverts L W), ← cancel_mono (G.map (L.map φ.s)), ← G.map_comp,
      add_comp, ← G.map_comp, ← G.map_comp, LeftFraction.map_comp_map_s,
      LeftFraction.map_comp_map_s, LeftFraction.map_comp_map_s, ← Functor.comp_map,
      Functor.map_add, Functor.comp_map, Functor.comp_map]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8d17b5e6528b78fe0c03d6cd4c170224a30309e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
