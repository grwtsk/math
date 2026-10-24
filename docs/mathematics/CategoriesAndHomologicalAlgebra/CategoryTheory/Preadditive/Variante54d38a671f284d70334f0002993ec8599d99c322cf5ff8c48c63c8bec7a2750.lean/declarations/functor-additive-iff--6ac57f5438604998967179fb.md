# functor_additive_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26ff16c9-154f-8c80-ea14-d3f9da3267cf",
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
  "slug": "functor-additive-iff--6ac57f5438604998967179fb",
  "source": {
    "blob": "f195bb716ca5dbb9b6e2a5f98175fe9485e86bb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 330,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variante54d38a671f284d70334f0002993ec8599d99c322cf5ff8c48c63c8bec7a2750.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ac57f5438604998967179fb0a83a911d9dcff88224e88e60e3115665ea74067",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variante54d38a671f284d70334f0002993ec8599d99c322cf5ff8c48c63c8bec7a2750.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26ff16c9-154f-8c80-ea14-d3f9da3267cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma functor_additive_iff {E : Type*} [Category* E] [Preadditive E] [Preadditive D] [L.Additive]
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
    intro X Y f g
    obtain ⟨φ, rfl, rfl⟩ := exists_leftFraction₂ L W f g
    rw [← φ.map_add L (inverts L W), ← cancel_mono (G.map (L.map φ.s)), ← G.map_comp,
      add_comp, ← G.map_comp, ← G.map_comp, LeftFraction.map_comp_map_s,
      LeftFraction.map_comp_map_s, LeftFraction.map_comp_map_s, ← Functor.comp_map,
      Functor.map_add, Functor.comp_map, Functor.comp_map]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variante54d38a671f284d70334f0002993ec8599d99c322cf5ff8c48c63c8bec7a2750.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variante54d38a671f284d70334f0002993ec8599d99c322cf5ff8c48c63c8bec7a2750.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f195bb716ca5dbb9b6e2a5f98175fe9485e86bb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
