# laxToTransported

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:756d8bc204455375b639a4c8146eea9c4c9bf1412179f3251bcc3ea628dcc67f",
  "kind": "def",
  "lexical_name": "laxToTransported",
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
  "slug": "laxtotransported--c3cb15ad3b25e47732f59208",
  "source": {
    "blob": "32ec7208db3c34b5c6a9b3cb505499fe5faf7813",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 177,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant2d2d013d783c8d8c2a82e4a013338c0004a08e794ad2d629c823c6045728aece.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3cb15ad3b25e47732f59208abb4029a18d903edc81a32e72d2c6681209b2922",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant2d2d013d783c8d8c2a82e4a013338c0004a08e794ad2d629c823c6045728aece.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:756d8bc204455375b639a4c8146eea9c4c9bf1412179f3251bcc3ea628dcc67f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def laxToTransported (e : C ≌ D) : LaxMonoidalFunctor C (Transported e) where
  toFunctor := e.functor
  ε := 𝟙 (e.functor.obj (𝟙_ C))
  μ X Y := e.functor.map (e.unitInv.app X ⊗ e.unitInv.app Y)
  μ_natural f g := by
    dsimp
    rw [Equivalence.inv_fun_map, Equivalence.inv_fun_map, tensor_comp, Functor.map_comp,
      tensor_comp, ← e.functor.map_comp, ← e.functor.map_comp, ← e.functor.map_comp,
      assoc, assoc, ← tensor_comp, Iso.hom_inv_id_app, Iso.hom_inv_id_app, ← tensor_comp]
    dsimp
    rw [comp_id, comp_id]
  associativity X Y Z := by
    dsimp
    rw [Equivalence.inv_fun_map, Equivalence.inv_fun_map, Functor.map_comp,
      Functor.map_comp, assoc, assoc, e.inverse.map_id, e.inverse.map_id,
      comp_tensor_id, id_tensor_comp, Functor.map_comp, assoc, id_tensor_comp,
      comp_tensor_id, ← e.functor.map_comp, ← e.functor.map_comp, ← e.functor.map_comp,
      ← e.functor.map_comp, ← e.functor.map_comp, ← e.functor.map_comp, ← e.functor.map_comp]
    congr 2
    slice_lhs 3 3 => rw [← tensor_id_comp_id_tensor]
    slice_lhs 2 3 =>
      rw [← comp_tensor_id, Iso.hom_inv_id_app]
      dsimp
      rw [tensor_id]
    rw [id_comp]
    slice_rhs 2 3 =>
      rw [←id_tensor_comp, Iso.hom_inv_id_app]
      dsimp
      rw [tensor_id]
    rw [id_comp]
    conv_rhs => rw [← id_tensor_comp_tensor_id _ (e.unitInv.app X)]
    dsimp only [Functor.comp_obj]
    slice_rhs 3 4 =>
      rw [← id_tensor_comp, Iso.hom_inv_id_app]
      dsimp
      rw [tensor_id]
    simp only [associator_conjugation, ←tensor_id, ←tensor_comp, Iso.inv_hom_id,
      Iso.inv_hom_id_assoc, assoc, id_comp, comp_id]
  left_unitality X := by
    dsimp
    rw [e.inverse.map_id, e.inverse.map_id, tensor_id, Functor.map_comp, assoc,
      Equivalence.counit_app_functor, ← e.functor.map_comp, ← e.functor.map_comp,
      ← e.functor.map_comp, ← e.functor.map_comp, ← leftUnitor_naturality,
      ← tensor_comp_assoc, comp_id, id_comp, id_comp]
    rfl
  right_unitality X := by
    dsimp
    rw [Functor.map_comp, assoc, e.inverse.map_id, e.inverse.map_id, tensor_id,
      Functor.map_id, id_comp, Equivalence.counit_app_functor, ← e.functor.map_comp,
      ← e.functor.map_comp, ← e.functor.map_comp, ← rightUnitor_naturality,
      ← tensor_comp_assoc, id_comp, comp_id]
    rfl
#align category_theory.monoidal.lax_to_transported CategoryTheory.Monoidal.laxToTransported

end

/-- We can upgrade `e.functor` to a monoidal functor from `C` to `D` with the transported structure.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant2d2d013d783c8d8c2a82e4a013338c0004a08e794ad2d629c823c6045728aece.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant2d2d013d783c8d8c2a82e4a013338c0004a08e794ad2d629c823c6045728aece.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32ec7208db3c34b5c6a9b3cb505499fe5faf7813` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
