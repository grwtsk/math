# mapConeFork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:863037e1bc04470980dd5c86dc2c85bd5127ee0b2a042eb2dd7e8112a392ce37",
  "kind": "def",
  "lexical_name": "mapConeFork",
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
  "slug": "mapconefork--1bec0dedea8717f5d794af18",
  "source": {
    "blob": "10c8473198a943eb309de741cf97cabdb6386f8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 111,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant5e95cd2e40eb3e53e49eb6b9d0fed2caadd683e5ebdcc4f6433cec9d2d7b086d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bec0dedea8717f5d794af186bc663d4667bad03e445eae81da243576703877f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant5e95cd2e40eb3e53e49eb6b9d0fed2caadd683e5ebdcc4f6433cec9d2d7b086d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:863037e1bc04470980dd5c86dc2c85bd5127ee0b2a042eb2dd7e8112a392ce37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapConeFork :
    G.mapCone (fork.{v} F U) ≅
      (Cones.postcompose (diagramCompPreservesLimits G F U).inv).obj (fork (F ⋙ G) U) :=
  Cones.ext (Iso.refl _) fun j => by
    dsimp; simp [diagramCompPreservesLimits]; cases j <;> dsimp
    · rw [Iso.eq_comp_inv]
      -- Porting note : `ext` can't see `limit.hom_ext` applies here:
      -- See https://github.com/leanprover-community/mathlib4/issues/5229
      refine limit.hom_ext (fun j => ?_)
      -- Porting note : `attribute [local reducible]` doesn't work, this is its replacement
      simp [diagram, leftRes, rightRes, res]
    · rw [Iso.eq_comp_inv]
      -- Porting note : `ext` can't see `limit.hom_ext` applies here:
      -- See https://github.com/leanprover-community/mathlib4/issues/5229
      refine limit.hom_ext (fun j => ?_)
      -- Porting note : `attribute [local reducible]` doesn't work, this is its replacement
      dsimp [diagram, leftRes, rightRes, res]
      -- Porting note : there used to be a non-terminal `simp` for `squeeze_simp` did not work,
      -- however, `simp?` works fine now, but in both mathlib3 and mathlib4, two `simp`s are
      -- required to close goal
      simp only [Functor.map_comp, Category.assoc, map_lift_piComparison, limit.lift_π, Fan.mk_pt,
        Fan.mk_π_app, limit.lift_π_assoc, Discrete.functor_obj]
      simp only [limit.lift_π, Fan.mk_π_app, ← G.map_comp, limit.lift_π_assoc, Fan.mk_π_app]
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition.map_cone_fork TopCat.Presheaf.SheafCondition.mapConeFork

end SheafCondition

universe v u₁ u₂

open SheafCondition SheafConditionEqualizerProducts

variable {C : Type u₁} [Category.{v} C] {D : Type u₂} [Category.{v} D]

variable (G : C ⥤ D)

variable [ReflectsIsomorphisms G]

variable [HasLimits C] [HasLimits D] [PreservesLimits G]

variable {X : TopCat.{v}} (F : Presheaf C X)

/-- If `G : C ⥤ D` is a functor which reflects isomorphisms and preserves limits
(we assume all limits exist in both `C` and `D`),
then checking the sheaf condition for a presheaf `F : presheaf C X`
is equivalent to checking the sheaf condition for `F ⋙ G`.

The important special case is when
`C` is a concrete category with a forgetful functor
that preserves limits and reflects isomorphisms.
Then to check the sheaf condition it suffices to check it on the underlying sheaf of types.

Another useful example is the forgetful functor `TopCommRing ⥤ Top`.

See <https://stacks.math.columbia.edu/tag/0073>.
In fact we prove a stronger version with arbitrary complete target category.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant5e95cd2e40eb3e53e49eb6b9d0fed2caadd683e5ebdcc4f6433cec9d2d7b086d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant5e95cd2e40eb3e53e49eb6b9d0fed2caadd683e5ebdcc4f6433cec9d2d7b086d.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10c8473198a943eb309de741cf97cabdb6386f8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
