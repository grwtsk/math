# inverseObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd919b4ceb6b61d55b54333ba4f4e87c07567add80e60b060e4549f164715aee",
  "kind": "def",
  "lexical_name": "inverseObj",
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
  "slug": "inverseobj--f4d6f7eff669c22cbaf71faf",
  "source": {
    "blob": "1824d7ff811221b6f22692dbc86f5b031ecca2be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 103,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantdee9ef04623ad7629c307680ac5bec0b1d26c2ac1b22d2094de2dce3e0aa7623.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4d6f7eff669c22cbaf71fafaf12ed8c23d3ff6821d743270d92b9f1f973eae6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantdee9ef04623ad7629c307680ac5bec0b1d26c2ac1b22d2094de2dce3e0aa7623.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd919b4ceb6b61d55b54333ba4f4e87c07567add80e60b060e4549f164715aee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inverseObj (A : AlgCat.{u} R) : Mon_ (ModuleCat.{u} R) where
  X := ModuleCat.of R A
  one := ofHom <| Algebra.linearMap R A
  mul := ofHom <| LinearMap.mul' R A
  one_mul := by
    ext : 1
    -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11041): `ext` did not pick up `TensorProduct.ext`
    refine TensorProduct.ext <| LinearMap.ext_ring <| LinearMap.ext fun x => ?_
    rw [compr₂_apply, compr₂_apply, hom_comp, LinearMap.comp_apply]
    -- Porting note: this `dsimp` does nothing
    -- dsimp [AlgCat.id_apply, TensorProduct.mk_apply, Algebra.linearMap_apply,
    --    LinearMap.compr₂_apply, Function.comp_apply, RingHom.map_one,
    --    ModuleCat.MonoidalCategory.tensorHom_tmul, AlgCat.hom_comp,
    --    ModuleCat.MonoidalCategory.leftUnitor_hom_apply]
    -- Porting note: because `dsimp` is not effective, `rw` needs to be changed to `erw`
    dsimp
    erw [LinearMap.mul'_apply, MonoidalCategory.leftUnitor_hom_apply, ← Algebra.smul_def]
    dsimp
  mul_one := by
    ext : 1
    -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11041): `ext` did not pick up `TensorProduct.ext`
    refine TensorProduct.ext <| LinearMap.ext fun x => LinearMap.ext_ring ?_
    -- Porting note: this `dsimp` does nothing
    -- dsimp only [AlgCat.id_apply, TensorProduct.mk_apply, Algebra.linearMap_apply,
    --   LinearMap.compr₂_apply, Function.comp_apply, ModuleCat.MonoidalCategory.hom_apply,
    --   AlgCat.coe_comp]
    -- Porting note: because `dsimp` is not effective, `rw` needs to be changed to `erw`
    erw [compr₂_apply, compr₂_apply]
    rw [ModuleCat.hom_comp, LinearMap.comp_apply]
    erw [LinearMap.mul'_apply, ModuleCat.MonoidalCategory.rightUnitor_hom_apply, ← Algebra.commutes,
      ← Algebra.smul_def]
    dsimp
  mul_assoc := by
    ext : 1
    -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11041): `ext` did not pick up `TensorProduct.ext`
    refine TensorProduct.ext <| TensorProduct.ext <| LinearMap.ext fun x => LinearMap.ext fun y =>
      LinearMap.ext fun z => ?_
    dsimp only [compr₂_apply, TensorProduct.mk_apply]
    rw [hom_comp, LinearMap.comp_apply, hom_comp, LinearMap.comp_apply, hom_comp,
        LinearMap.comp_apply]
    erw [LinearMap.mul'_apply, LinearMap.mul'_apply]
    dsimp only [id_coe, id_eq]
    erw [TensorProduct.mk_apply, TensorProduct.mk_apply, mul'_apply, LinearMap.id_apply, mul'_apply]
    simp only [LinearMap.mul'_apply, mul_assoc]

/-- Converting a bundled algebra to a monoid object in `ModuleCat R`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantdee9ef04623ad7629c307680ac5bec0b1d26c2ac1b22d2094de2dce3e0aa7623.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantdee9ef04623ad7629c307680ac5bec0b1d26c2ac1b22d2094de2dce3e0aa7623.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1824d7ff811221b6f22692dbc86f5b031ecca2be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
