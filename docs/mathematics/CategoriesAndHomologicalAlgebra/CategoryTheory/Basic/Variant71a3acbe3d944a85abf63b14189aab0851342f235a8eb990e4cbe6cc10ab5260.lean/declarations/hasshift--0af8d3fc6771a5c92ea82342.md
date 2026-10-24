# hasShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c4be345ad32f605939d41e9229574b29160692c54eab40bea0bc874205dac99",
  "kind": "def",
  "lexical_name": "hasShift",
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
  "slug": "hasshift--0af8d3fc6771a5c92ea82342",
  "source": {
    "blob": "1918c46cb95db727d22936ca2f992d717aeb38a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 817,
    "line": 779,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant71a3acbe3d944a85abf63b14189aab0851342f235a8eb990e4cbe6cc10ab5260.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0af8d3fc6771a5c92ea823421138352a7a98bdf1d162cd5320b602876298e602",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant71a3acbe3d944a85abf63b14189aab0851342f235a8eb990e4cbe6cc10ab5260.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c4be345ad32f605939d41e9229574b29160692c54eab40bea0bc874205dac99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 779–817.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hasShift :
    HasShift C A :=
  hasShiftMk C A
    { F := s
      zero := zero hF s i
      add := add hF s i
      assoc_hom_app := fun m₁ m₂ m₃ X => hF.map_injective (by
        have h := shiftFunctorAdd'_assoc_hom_app m₁ m₂ m₃ _ _ (m₁ + m₂ + m₃) rfl rfl rfl (F.obj X)
        simp only [shiftFunctorAdd'_eq_shiftFunctorAdd] at h
        rw [← cancel_mono ((i m₃).hom.app ((s m₂).obj ((s m₁).obj X)))]
        simp only [Functor.comp_obj, Functor.map_comp, map_add_hom_app,
          Category.assoc, Iso.inv_hom_id_app_assoc, NatTrans.naturality_assoc, Functor.comp_map,
          Iso.inv_hom_id_app, Category.comp_id]
        erw [(i m₃).hom.naturality]
        rw [Functor.comp_map, map_add_hom_app,
          Functor.map_comp, Functor.map_comp, Iso.inv_hom_id_app_assoc,
          ← Functor.map_comp_assoc _ ((i (m₁ + m₂)).inv.app X), Iso.inv_hom_id_app,
          Functor.map_id, Category.id_comp, reassoc_of% h,
          dcongr_arg (fun a => (i a).hom.app X) (add_assoc m₁ m₂ m₃)]
        simp [shiftFunctorAdd', eqToHom_map])
      zero_add_hom_app := fun n X => hF.map_injective (by
        have := dcongr_arg (fun a => (i a).hom.app X) (zero_add n)
        rw [← cancel_mono ((i n).hom.app ((s 0).obj X))]
        simp only [comp_obj, map_add_hom_app, this, shiftFunctorAdd_zero_add_hom_app, id_obj,
          Category.assoc, eqToHom_trans_assoc, eqToHom_refl, Category.id_comp, Iso.inv_hom_id_app,
          Category.comp_id, map_comp, eqToHom_map]
        congr 1
        erw [(i n).hom.naturality]
        simp)
      add_zero_hom_app := fun n X => hF.map_injective (by
        have := dcongr_arg (fun a => (i a).hom.app X) (add_zero n)
        simp [this, ← NatTrans.naturality_assoc, eqToHom_map,
          shiftFunctorAdd_add_zero_hom_app]) }

end Functor.FullyFaithful

end

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant71a3acbe3d944a85abf63b14189aab0851342f235a8eb990e4cbe6cc10ab5260.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant71a3acbe3d944a85abf63b14189aab0851342f235a8eb990e4cbe6cc10ab5260.lean#L779).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1918c46cb95db727d22936ca2f992d717aeb38a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
