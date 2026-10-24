# associativity'Iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e1fb5a1104651f5bec249e9ab74093ef61c58aa527e51d97cb64eadd6c66ebb",
  "kind": "def",
  "lexical_name": "associativity'Iso",
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
  "slug": "associativity-iso--0d8a4ca22755937fd2622693",
  "source": {
    "blob": "07f6eb399c3cb5eb6a473a46356053a5eb47838d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 344,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HoFunctorMonoidal/Variant95a9007fa57ba844c5af50f55775bd99ee80d379f7dfefa23de26562bef8be61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d8a4ca22755937fd26226937cc6db9941a421efbae40b1d443e48541be23f1d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HoFunctorMonoidal/Variant95a9007fa57ba844c5af50f55775bd99ee80d379f7dfefa23de26562bef8be61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e1fb5a1104651f5bec249e9ab74093ef61c58aa527e51d97cb64eadd6c66ebb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def associativity'Iso :
    (prod.associativity ..).inverse ⋙ (inverse X Y).prod (𝟭 _) ⋙ inverse (X ⊗ Y) Z ⋙
      mapHomotopyCategory (α_ _ _ _).hom ≅
    Functor.prod (𝟭 _) (inverse Y Z) ⋙ inverse X (Y ⊗ Z) :=
  Functor.fullyFaithfulCurry₃.preimageIso
    (mkNatIso (fun x ↦ mkNatIso (fun y ↦ mkNatIso (fun z ↦ Iso.refl _)
      (fun z₀ z₁ e ↦ by
        dsimp
        rw [Category.comp_id, Category.id_comp, ← prod_id,
          inverse_map_mkHom_id_homMk, inverse_map_mkHom_id_homMk,
          CategoryTheory.Functor.map_id]
        dsimp [← Edge.id_tensor_id]))
      (fun y₀ y₁ e ↦ by
        ext z
        obtain ⟨z, rfl⟩ := z.mk_surjective
        dsimp
        rw [Category.comp_id, Category.id_comp,
          inverse_map_mkHom_homMk_id, inverse_map_mkHom_id_homMk]))
      (fun x₀ x₁ e ↦ by
        ext y z
        obtain ⟨y, rfl⟩ := y.mk_surjective
        obtain ⟨z, rfl⟩ := z.mk_surjective
        dsimp
        simp only [Category.comp_id, Category.id_comp, ← prod_id',
          CategoryTheory.Functor.map_id, inverse_obj, inverse_map_mkHom_homMk_id]))

set_option backward.isDefEq.respectTransparency.types false in
variable {X Y Z} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HoFunctorMonoidal/Variant95a9007fa57ba844c5af50f55775bd99ee80d379f7dfefa23de26562bef8be61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HoFunctorMonoidal/Variant95a9007fa57ba844c5af50f55775bd99ee80d379f7dfefa23de26562bef8be61.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07f6eb399c3cb5eb6a473a46356053a5eb47838d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
