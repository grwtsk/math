# restrictCoextendScalarsAdj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:051efa494cd4c17d64250ced7cc2b520a31d542a68f3fed7550b4430ceb6e537",
  "kind": "def",
  "lexical_name": "restrictCoextendScalarsAdj",
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
  "slug": "restrictcoextendscalarsadj--e827cb1d607a2442d28aa776",
  "source": {
    "blob": "0e36f05e12ae3450dd59e7fb5ad2ce5286944d95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 454,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant048b7a7cd17fbcaac84ed3603dd7f774d7a1a40d85d5a8fbc855f33bef465b5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e827cb1d607a2442d28aa77696b1b8403cafce459aee86762964f338e71ea874",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant048b7a7cd17fbcaac84ed3603dd7f774d7a1a40d85d5a8fbc855f33bef465b5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:051efa494cd4c17d64250ced7cc2b520a31d542a68f3fed7550b4430ceb6e537`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrictCoextendScalarsAdj {R : Type u₁} {S : Type u₂} [Ring R] [Ring S] (f : R →+* S) :
    restrictScalars.{max v u₂,u₁,u₂} f ⊣ coextendScalars f where
  homEquiv X Y :=
    { toFun := RestrictionCoextensionAdj.HomEquiv.fromRestriction.{u₁,u₂,v} f
      invFun := RestrictionCoextensionAdj.HomEquiv.toRestriction.{u₁,u₂,v} f
      left_inv := fun g => LinearMap.ext fun x : X => by
        -- Porting note: once just simp
        rw [RestrictionCoextensionAdj.HomEquiv.toRestriction_apply, AddHom.toFun_eq_coe,
          LinearMap.coe_toAddHom, RestrictionCoextensionAdj.HomEquiv.fromRestriction_apply_apply,
          one_smul]
      right_inv := fun g => LinearMap.ext fun x => LinearMap.ext fun s : S => by
        -- Porting note: once just simp
        rw [RestrictionCoextensionAdj.HomEquiv.fromRestriction_apply_apply,
          RestrictionCoextensionAdj.HomEquiv.toRestriction_apply, AddHom.toFun_eq_coe,
          LinearMap.coe_toAddHom, LinearMap.map_smulₛₗ, RingHom.id_apply,
          CoextendScalars.smul_apply', one_mul] }
  unit := RestrictionCoextensionAdj.unit'.{u₁,u₂,v} f
  counit := RestrictionCoextensionAdj.counit'.{u₁,u₂,v} f
  homEquiv_unit := LinearMap.ext fun y => rfl
  homEquiv_counit := fun {X Y g} => LinearMap.ext <| by
    -- Porting note: previously simp [RestrictionCoextensionAdj.counit']
    intro x; dsimp
    rw [coe_comp, Function.comp]
    change _ = (((restrictScalars f).map g) x).toFun (1 : S)
    rw [AddHom.toFun_eq_coe, LinearMap.coe_toAddHom, restrictScalars.map_apply]
#align category_theory.Module.restrict_coextend_scalars_adj CategoryTheory.ModuleCat.restrictCoextendScalarsAdj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant048b7a7cd17fbcaac84ed3603dd7f774d7a1a40d85d5a8fbc855f33bef465b5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant048b7a7cd17fbcaac84ed3603dd7f774d7a1a40d85d5a8fbc855f33bef465b5d.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e36f05e12ae3450dd59e7fb5ad2ce5286944d95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
