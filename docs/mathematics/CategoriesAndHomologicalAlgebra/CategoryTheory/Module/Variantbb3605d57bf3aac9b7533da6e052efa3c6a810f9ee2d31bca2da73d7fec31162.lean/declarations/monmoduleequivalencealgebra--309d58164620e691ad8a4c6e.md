# monModuleEquivalenceAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1e952971a76e5f047a90ad3d4d2f8e3eca3e25d17403075d7bcfb888447ef9c",
  "kind": "def",
  "lexical_name": "monModuleEquivalenceAlgebra",
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
  "slug": "monmoduleequivalencealgebra--309d58164620e691ad8a4c6e",
  "source": {
    "blob": "9d5c435fc07df33c4b30e56d505a242bb546b211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 183,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbb3605d57bf3aac9b7533da6e052efa3c6a810f9ee2d31bca2da73d7fec31162.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:309d58164620e691ad8a4c6e824a3d1c49e105c6de9e08f7c5ff694da88c1d45",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbb3605d57bf3aac9b7533da6e052efa3c6a810f9ee2d31bca2da73d7fec31162.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1e952971a76e5f047a90ad3d4d2f8e3eca3e25d17403075d7bcfb888447ef9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monModuleEquivalenceAlgebra : Mon_ (ModuleCat.{u} R) ≌ AlgebraCat R where
  functor := functor
  inverse := inverse
  unitIso :=
    NatIso.ofComponents
      (fun A =>
        { hom :=
            { hom :=
                { toFun := _root_.id
                  map_add' := fun x y => rfl
                  map_smul' := fun r a => rfl }
              mul_hom := by
                -- Porting note : `ext` did not pick up `TensorProduct.ext`
                refine TensorProduct.ext ?_
                dsimp at *
                rfl
              one_hom := by ext; rfl }
          inv :=
            { hom :=
                { toFun := _root_.id
                  map_add' := fun x y => rfl
                  map_smul' := fun r a => rfl }
              mul_hom := by
                -- Porting note : `ext` did not pick up `TensorProduct.ext`
                refine TensorProduct.ext ?_
                dsimp at *
                rfl
              one_hom := by ext; rfl }
          hom_inv_id := by ext; rfl
          inv_hom_id := by ext; rfl })
      (by aesop_cat)
  counitIso :=
    NatIso.ofComponents
      (fun A =>
        { hom :=
            { toFun := _root_.id
              map_zero' := rfl
              map_add' := fun x y => rfl
              map_one' := (algebraMap R A).map_one
              map_mul' := fun x y => @LinearMap.mul'_apply R _ _ _ _ _ _ x y
              commutes' := fun r => rfl }
          inv :=
            { toFun := _root_.id
              map_zero' := rfl
              map_add' := fun x y => rfl
              map_one' := (algebraMap R A).map_one.symm
              map_mul' := fun x y => (@LinearMap.mul'_apply R _ _ _ _ _ _ x y).symm
              commutes' := fun r => rfl } })
      (by intros; rfl)
#align Module.Mon_Module_equivalence_Algebra ModuleCat.monModuleEquivalenceAlgebra

/-- The equivalence `Mon_ (Module R) ≌ Algebra R`
is naturally compatible with the forgetful functors to `Module R`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbb3605d57bf3aac9b7533da6e052efa3c6a810f9ee2d31bca2da73d7fec31162.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbb3605d57bf3aac9b7533da6e052efa3c6a810f9ee2d31bca2da73d7fec31162.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d5c435fc07df33c4b30e56d505a242bb546b211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
