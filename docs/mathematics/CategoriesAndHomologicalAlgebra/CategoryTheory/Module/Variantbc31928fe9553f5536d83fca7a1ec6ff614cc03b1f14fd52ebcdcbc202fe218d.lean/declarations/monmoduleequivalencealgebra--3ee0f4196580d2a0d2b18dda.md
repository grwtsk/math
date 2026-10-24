# monModuleEquivalenceAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6bc4394277b0f2c6281dc7d94a3e3f47949abd090f9604f471a373f8ece5877",
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
  "slug": "monmoduleequivalencealgebra--3ee0f4196580d2a0d2b18dda",
  "source": {
    "blob": "42aeb218b864b9cbcdd34e2b3f563cd7a28e44e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 173,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbc31928fe9553f5536d83fca7a1ec6ff614cc03b1f14fd52ebcdcbc202fe218d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ee0f4196580d2a0d2b18dda1c676bc5b94a019f6bf01165a283e53f7047ed58",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbc31928fe9553f5536d83fca7a1ec6ff614cc03b1f14fd52ebcdcbc202fe218d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6bc4394277b0f2c6281dc7d94a3e3f47949abd090f9604f471a373f8ece5877`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monModuleEquivalenceAlgebra : Mon_ (ModuleCat.{u} R) ≌ AlgCat R where
  functor := functor
  inverse := inverse
  unitIso :=
    NatIso.ofComponents
      (fun A =>
        { hom :=
            { hom := ofHom
                { toFun := _root_.id
                  map_add' := fun _ _ => rfl
                  map_smul' := fun _ _ => rfl }
              mul_hom := by
                ext : 1
                -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11041): `ext` did not pick up `TensorProduct.ext`
                refine TensorProduct.ext ?_
                dsimp at *
                rfl }
          inv :=
            { hom := ofHom
                { toFun := _root_.id
                  map_add' := fun _ _ => rfl
                  map_smul' := fun _ _ => rfl }
              mul_hom := by
                ext : 1
                -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11041): `ext` did not pick up `TensorProduct.ext`
                refine TensorProduct.ext ?_
                dsimp at *
                rfl } })
  counitIso :=
    NatIso.ofComponents
      (fun A =>
        { hom := AlgCat.ofHom
            { toFun := _root_.id
              map_zero' := rfl
              map_add' := fun _ _ => rfl
              map_one' := (algebraMap R A).map_one
              map_mul' := fun x y => @LinearMap.mul'_apply R _ _ _ _ _ _ x y
              commutes' := fun _ => rfl }
          inv := AlgCat.ofHom
            { toFun := _root_.id
              map_zero' := rfl
              map_add' := fun _ _ => rfl
              map_one' := (algebraMap R A).map_one.symm
              map_mul' := fun x y => (@LinearMap.mul'_apply R _ _ _ _ _ _ x y).symm
              commutes' := fun _ => rfl } })

/-- The equivalence `Mon_ (ModuleCat R) ≌ AlgCat R`
is naturally compatible with the forgetful functors to `ModuleCat R`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbc31928fe9553f5536d83fca7a1ec6ff614cc03b1f14fd52ebcdcbc202fe218d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbc31928fe9553f5536d83fca7a1ec6ff614cc03b1f14fd52ebcdcbc202fe218d.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42aeb218b864b9cbcdd34e2b3f563cd7a28e44e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
