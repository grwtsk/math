# induced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43db05a05ddefed73fece18a12cfc00977ce7f6e98511d764801ac80268d818c",
  "kind": "def",
  "lexical_name": "induced",
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
  "slug": "induced--1fbbcaf706789d6187b8ad05",
  "source": {
    "blob": "2e2498251dbebdd95dc25450c14a1ed9b8b21798",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant06b33b48f622d75d0deeb2e4286a5b0350ed6707a6a6951d32c3b1efb98ebe0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1fbbcaf706789d6187b8ad05ea740fa8de5a6adef81389492aa468fbf695708c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant06b33b48f622d75d0deeb2e4286a5b0350ed6707a6a6951d32c3b1efb98ebe0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43db05a05ddefed73fece18a12cfc00977ce7f6e98511d764801ac80268d818c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def induced : HasShift D A :=
  hasShiftMk D A
    { F := s
      zero := Induced.zero F s i
      add := Induced.add F s i
      zero_add_hom_app := fun n => by
        suffices (Induced.add F s i 0 n).hom =
          eqToHom (by rw [zero_add]; rfl) ≫ whiskerRight (Induced.zero F s i).inv (s n) by
          intro X
          simpa using NatTrans.congr_app this X
        apply ((whiskeringLeft C D D).obj F).map_injective
        ext X
        have eq := dcongr_arg (fun a => (i a).hom.app X) (zero_add n)
        dsimp
        simp only [Induced.add_hom_app_obj, eq, shiftFunctorAdd_zero_add_hom_app,
          Functor.map_comp, eqToHom_map, Category.assoc, eqToHom_trans_assoc,
          eqToHom_refl, Category.id_comp, eqToHom_app, Induced.zero_inv_app_obj]
        erw [← NatTrans.naturality_assoc, Iso.hom_inv_id_app_assoc]
        rfl
      add_zero_hom_app := fun n => by
        suffices (Induced.add F s i n 0).hom =
            eqToHom (by rw [add_zero]; rfl) ≫ whiskerLeft (s n) (Induced.zero F s i).inv by
          intro X
          simpa using NatTrans.congr_app this X
        apply ((whiskeringLeft C D D).obj F).map_injective
        ext X
        dsimp
        erw [Induced.add_hom_app_obj, dcongr_arg (fun a => (i a).hom.app X) (add_zero n),
          ← cancel_mono ((s 0).map ((i n).hom.app X)), Category.assoc,
          Category.assoc, Category.assoc, Category.assoc, Category.assoc,
          Category.assoc, ← (s 0).map_comp, Iso.inv_hom_id_app, Functor.map_id, Category.comp_id,
          ← NatTrans.naturality, Induced.zero_inv_app_obj,
          shiftFunctorAdd_add_zero_hom_app]
        simp [eqToHom_map, eqToHom_app]
      assoc_hom_app := fun m₁ m₂ m₃ => by
        suffices (Induced.add F s i (m₁ + m₂) m₃).hom ≫
            whiskerRight (Induced.add F s i m₁ m₂).hom (s m₃) =
            eqToHom (by rw [add_assoc]) ≫ (Induced.add F s i m₁ (m₂ + m₃)).hom ≫
              whiskerLeft (s m₁) (Induced.add F s i m₂ m₃).hom by
          intro X
          simpa using NatTrans.congr_app this X
        apply ((whiskeringLeft C D D).obj F).map_injective
        ext X
        dsimp
        have eq := F.congr_map (shiftFunctorAdd'_assoc_hom_app
          m₁ m₂ m₃ _ _ (m₁ + m₂ + m₃) rfl rfl rfl X)
        simp only [shiftFunctorAdd'_eq_shiftFunctorAdd] at eq
        simp only [Functor.comp_obj, Functor.map_comp, shiftFunctorAdd',
          Iso.trans_hom, eqToIso.hom, NatTrans.comp_app, eqToHom_app,
          Category.assoc] at eq
        rw [← cancel_mono ((s m₃).map ((s m₂).map ((i m₁).hom.app X)))]
        simp only [Induced.add_hom_app_obj, Category.assoc, Functor.map_comp]
        slice_lhs 4 5 =>
          erw [← Functor.map_comp, Iso.inv_hom_id_app, Functor.map_id]
        erw [Category.id_comp]
        slice_lhs 6 7 =>
          erw [← Functor.map_comp, ← Functor.map_comp, Iso.inv_hom_id_app,
            (s m₂).map_id, (s m₃).map_id]
        erw [Category.comp_id, ← NatTrans.naturality_assoc, reassoc_of% eq,
          dcongr_arg (fun a => (i a).hom.app X) (add_assoc m₁ m₂ m₃).symm]
        simp only [Functor.comp_obj, eqToHom_map, eqToHom_app, NatTrans.naturality_assoc,
          Induced.add_hom_app_obj, Functor.comp_map, Category.assoc, Iso.inv_hom_id_app_assoc,
          eqToHom_trans_assoc, eqToHom_refl, Category.id_comp, Category.comp_id,
          ← Functor.map_comp, Iso.inv_hom_id_app, Functor.map_id] }

end HasShift

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant06b33b48f622d75d0deeb2e4286a5b0350ed6707a6a6951d32c3b1efb98ebe0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant06b33b48f622d75d0deeb2e4286a5b0350ed6707a6a6951d32c3b1efb98ebe0a.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e2498251dbebdd95dc25450c14a1ed9b8b21798` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
