# Counit.map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57f4b87dedc30bf4e04e2134b5e9699709a1413bd05af8762dcc857dfe837da0",
  "kind": "def",
  "lexical_name": "Counit.map",
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
  "slug": "counit-map--dc7ff7bb9bb0ff206cb037ed",
  "source": {
    "blob": "ddee0fd1ce72b50ccdb91956c214c2980ed3b477",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 668,
    "line": 627,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant55647887f3ae0c9ed0c80973d90370f298f8536511bf3b2d2bf878bf28aaa570.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc7ff7bb9bb0ff206cb037edab0fe4c4f34404925fd95f65261495c3945a65f2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant55647887f3ae0c9ed0c80973d90370f298f8536511bf3b2d2bf878bf28aaa570.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57f4b87dedc30bf4e04e2134b5e9699709a1413bd05af8762dcc857dfe837da0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 627–668.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Counit.map {Y} : (restrictScalars f ⋙ extendScalars f).obj Y ⟶ Y := by
  letI m1 : Module R S := Module.compHom S f
  letI m2 : Module R Y := Module.compHom Y f
  refine'
    {toFun := TensorProduct.lift
      {toFun := fun s : S => {toFun := fun y : Y => s • y, map_add' := smul_add _, map_smul' := _},
        map_add' := _, map_smul' := _}, map_add' := _, map_smul' := _}
  · intros r y
    dsimp
    change s • f r • y = f r • s • y
    rw [←mul_smul, mul_comm, mul_smul]
  · intros s₁ s₂
    ext y
    change (s₁ + s₂) • y = s₁ • y + s₂ • y
    rw [add_smul]
  · intros r s
    ext y
    change (f r • s) • y = (f r) • s • y
    rw [smul_eq_mul,mul_smul]
  · intros
    rw [map_add]
  · intro s z
    dsimp
    induction' z using TensorProduct.induction_on with s' y z1 z2 ih1 ih2
    · rw [smul_zero, map_zero, smul_zero]
    · rw [ExtendScalars.smul_tmul, LinearMap.coe_mk]
      erw [TensorProduct.lift.tmul, TensorProduct.lift.tmul]
      set s' : S := s'
      change (s * s') • y = s • s' • y
      rw [mul_smul]
    · rw [smul_add, map_add, map_add, ih1, ih2, smul_add]
#align category_theory.Module.extend_restrict_scalars_adj.counit.map CategoryTheory.ModuleCat.ExtendRestrictScalarsAdj.Counit.map

-- Porting note: this file has to probably be reworked when
-- coercions and instance synthesis are fixed for concrete categories
-- so I say nolint now and move on
attribute [nolint simpNF] Counit.map_apply

/-- The natural transformation from the composition of restriction and extension of scalars to the
identity functor on `S`-module.
-/
@[simps app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant55647887f3ae0c9ed0c80973d90370f298f8536511bf3b2d2bf878bf28aaa570.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant55647887f3ae0c9ed0c80973d90370f298f8536511bf3b2d2bf878bf28aaa570.lean#L627).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddee0fd1ce72b50ccdb91956c214c2980ed3b477` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
