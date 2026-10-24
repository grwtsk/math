# inverseObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5cf48d2d4e2a6549fa573634c514fb09b774490bead75004437581282d61b43e",
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
  "slug": "inverseobj--8b390b4c9b92be702d3eedd7",
  "source": {
    "blob": "2a1c0d440a5a0a77abf354c24a67064224230530",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 109,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant77acf409a9699b423bab3c767a7165c20f39f6da686f15dd7ff6edade7b1c27c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b390b4c9b92be702d3eedd747ecacc51c6d1787b435e2a9576ea4e87f6f1f45",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant77acf409a9699b423bab3c767a7165c20f39f6da686f15dd7ff6edade7b1c27c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5cf48d2d4e2a6549fa573634c514fb09b774490bead75004437581282d61b43e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inverseObj (A : AlgebraCat.{u} R) : Mon_ (ModuleCat.{u} R) where
  X := ModuleCat.of R A
  one := Algebra.linearMap R A
  mul := LinearMap.mul' R A
  one_mul := by
    -- Porting note : `ext` did not pick up `TensorProduct.ext`
    refine TensorProduct.ext <| LinearMap.ext_ring <| LinearMap.ext fun x => ?_
    rw [compr₂_apply, compr₂_apply, CategoryTheory.comp_apply]
    -- Porting note : this `dsimp` does nothing
    -- dsimp [AlgebraCat.id_apply, TensorProduct.mk_apply, Algebra.linearMap_apply,
    --   LinearMap.compr₂_apply, Function.comp_apply, RingHom.map_one,
    --   ModuleCat.MonoidalCategory.hom_apply, AlgebraCat.coe_comp,
    --   ModuleCat.MonoidalCategory.leftUnitor_hom_apply]
    -- Porting note : because `dsimp` is not effective, `rw` needs to be changed to `erw`
    erw [LinearMap.mul'_apply, MonoidalCategory.leftUnitor_hom_apply, ← Algebra.smul_def]
    rw [id_apply]
  mul_one := by
    -- Porting note : `ext` did not pick up `TensorProduct.ext`
    refine TensorProduct.ext <| LinearMap.ext fun x => LinearMap.ext_ring ?_
    -- Porting note : this `dsimp` does nothing
    -- dsimp only [AlgebraCat.id_apply, TensorProduct.mk_apply, Algebra.linearMap_apply,
    --   LinearMap.compr₂_apply, Function.comp_apply, ModuleCat.MonoidalCategory.hom_apply,
    --   AlgebraCat.coe_comp]
    -- Porting note : because `dsimp` is not effective, `rw` needs to be changed to `erw`
    erw [compr₂_apply, compr₂_apply]
    rw [CategoryTheory.comp_apply]
    erw [LinearMap.mul'_apply, ModuleCat.MonoidalCategory.rightUnitor_hom_apply, ← Algebra.commutes,
      ← Algebra.smul_def]
    rw [id_apply]
  mul_assoc := by
    -- Porting note : `ext` did not pick up `TensorProduct.ext`
    refine TensorProduct.ext <| TensorProduct.ext <| LinearMap.ext fun x => LinearMap.ext fun y =>
      LinearMap.ext fun z => ?_
    -- Porting note : this `dsimp` does nothing
    -- dsimp only [AlgebraCat.id_apply, TensorProduct.mk_apply, LinearMap.compr₂_apply,
    --   Function.comp_apply, ModuleCat.MonoidalCategory.hom_apply, AlgebraCat.coe_comp,
    --   MonoidalCategory.associator_hom_apply]
    -- Porting note : because `dsimp` is not effective, `rw` needs to be changed to `erw`
    rw [compr₂_apply, compr₂_apply, compr₂_apply, compr₂_apply, CategoryTheory.comp_apply,
      CategoryTheory.comp_apply, CategoryTheory.comp_apply]
    erw [LinearMap.mul'_apply, LinearMap.mul'_apply]
    rw [id_apply, TensorProduct.mk_apply]
    erw [TensorProduct.mk_apply, TensorProduct.mk_apply, id_apply, LinearMap.mul'_apply,
      LinearMap.mul'_apply]
    simp only [LinearMap.mul'_apply, mul_assoc]
#align Module.Mon_Module_equivalence_Algebra.inverse_obj ModuleCat.MonModuleEquivalenceAlgebra.inverseObj

/-- Converting a bundled algebra to a monoid object in `Module R`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant77acf409a9699b423bab3c767a7165c20f39f6da686f15dd7ff6edade7b1c27c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant77acf409a9699b423bab3c767a7165c20f39f6da686f15dd7ff6edade7b1c27c.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a1c0d440a5a0a77abf354c24a67064224230530` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
