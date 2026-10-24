# extendRestrictScalarsAdj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ca9542612d7abb14eab4632e72c5b00418413e159230b18ad6cf5fcd9dcee9c",
  "kind": "def",
  "lexical_name": "extendRestrictScalarsAdj",
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
  "slug": "extendrestrictscalarsadj--cf021a51c16ba08e4a9a5986",
  "source": {
    "blob": "ddee0fd1ce72b50ccdb91956c214c2980ed3b477",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 718,
    "line": 695,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant55647887f3ae0c9ed0c80973d90370f298f8536511bf3b2d2bf878bf28aaa570.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf021a51c16ba08e4a9a59861ee6781af7e150540cb19e5412ef14f7e58f8fba",
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

Occurrence: `declaration:8ca9542612d7abb14eab4632e72c5b00418413e159230b18ad6cf5fcd9dcee9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 695–718.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def extendRestrictScalarsAdj {R : Type u₁} {S : Type u₂} [CommRing R] [CommRing S] (f : R →+* S) :
    extendScalars.{u₁,u₂,max v u₂} f ⊣ restrictScalars.{max v u₂,u₁,u₂} f where
  homEquiv _ _ := ExtendRestrictScalarsAdj.homEquiv.{v,u₁,u₂} f
  unit := ExtendRestrictScalarsAdj.unit.{v,u₁,u₂} f
  counit := ExtendRestrictScalarsAdj.counit.{v,u₁,u₂} f
  homEquiv_unit {X Y g} := LinearMap.ext fun x => by
    dsimp
    rw [ModuleCat.coe_comp, Function.comp, restrictScalars.map_apply]
    rfl
  homEquiv_counit {X Y g} := LinearMap.ext fun x => by
      -- Porting note: once again reminding Lean of the instances
      letI m1 : Module R S := Module.compHom S f
      letI m2 : Module R Y := Module.compHom Y f
      induction' x using TensorProduct.induction_on with s x _ _ _ _
      · rw [map_zero, map_zero]
      · rw [ExtendRestrictScalarsAdj.homEquiv_symm_apply, ModuleCat.coe_comp, Function.comp_apply,
          ExtendRestrictScalarsAdj.counit_app, ExtendRestrictScalarsAdj.Counit.map_apply]
        dsimp
        rw [TensorProduct.lift.tmul]
        rfl
      · rw [map_add,map_add]
        congr 1
#align category_theory.Module.extend_restrict_scalars_adj CategoryTheory.ModuleCat.extendRestrictScalarsAdj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant55647887f3ae0c9ed0c80973d90370f298f8536511bf3b2d2bf878bf28aaa570.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant55647887f3ae0c9ed0c80973d90370f298f8536511bf3b2d2bf878bf28aaa570.lean#L695).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddee0fd1ce72b50ccdb91956c214c2980ed3b477` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
