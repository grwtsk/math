# mapWhiskerRightAsSmallFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b740c437e2eb2e54231eb5f87f2ea4ff572a2f4f405431bdbe6c08b9f12bea36",
  "kind": "def",
  "lexical_name": "mapWhiskerRightAsSmallFunctor",
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
  "slug": "mapwhiskerrightassmallfunctor--3efd8569462bd04222bafc5d",
  "source": {
    "blob": "148e5a3d4bdb9c92c888240a5741295c9acf8628",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 358,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant8c55bdd63a60a9869e17788090004a114cb29923012b5f3c4aef5fed8b62e2b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3efd8569462bd04222bafc5d266cb759df705035c04b940a9cea2309cb8fd5fd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant8c55bdd63a60a9869e17788090004a114cb29923012b5f3c4aef5fed8b62e2b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b740c437e2eb2e54231eb5f87f2ea4ff572a2f4f405431bdbe6c08b9f12bea36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapWhiskerRightAsSmallFunctor (α : F ⟶ G) :
    map (whiskerRight α Cat.asSmallFunctor.{w}) ≅
    (compAsSmallFunctorEquivalence F).functor ⋙ map α ⋙
      (compAsSmallFunctorEquivalence G).inverse :=
  NatIso.ofComponents
    (fun X => Iso.refl _)
    (fun f => by
      fapply Grothendieck.ext
      · simp [compAsSmallFunctorEquivalenceInverse]
      · simp only [compAsSmallFunctorEquivalence_functor, compAsSmallFunctorEquivalence_inverse,
        comp_obj, compAsSmallFunctorEquivalenceInverse_obj_base, map_obj_base,
        compAsSmallFunctorEquivalenceFunctor_obj_base, Cat.asSmallFunctor_obj, Cat.of_α,
        Iso.refl_hom, Functor.comp_map, comp_base, id_base,
        compAsSmallFunctorEquivalenceInverse_map_base, map_map_base,
        compAsSmallFunctorEquivalenceFunctor_map_base, Cat.asSmallFunctor_map, toCatHom_toFunctor,
        map_obj_fiber, whiskerRight_app, AsSmall.down_obj, AsSmall.up_obj_down,
        compAsSmallFunctorEquivalenceInverse_obj_fiber,
        compAsSmallFunctorEquivalenceFunctor_obj_fiber, comp_fiber, map_map_fiber, AsSmall.down_map,
        down_comp, eqToHom_down, AsSmall.up_map_down, map_comp, eqToHom_map, id_fiber,
        Category.assoc, eqToHom_trans_assoc, compAsSmallFunctorEquivalenceInverse_map_fiber,
        compAsSmallFunctorEquivalenceFunctor_map_fiber, eqToHom_comp_iff, comp_eqToHom_iff]
        simp only [conj_eqToHom_iff_heq']
        rw [G.map_id]
        simp)

end

/-- The Grothendieck construction as a functor from the functor category `E ⥤ Cat` to the
over category `Over E`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant8c55bdd63a60a9869e17788090004a114cb29923012b5f3c4aef5fed8b62e2b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant8c55bdd63a60a9869e17788090004a114cb29923012b5f3c4aef5fed8b62e2b8.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `148e5a3d4bdb9c92c888240a5741295c9acf8628` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
