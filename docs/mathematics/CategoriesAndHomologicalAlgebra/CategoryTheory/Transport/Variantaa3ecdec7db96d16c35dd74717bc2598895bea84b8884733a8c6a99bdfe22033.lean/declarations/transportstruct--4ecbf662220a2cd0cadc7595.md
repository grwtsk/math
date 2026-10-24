# transportStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87b44c09a93b22723265543e786d5c2140c195174345b39644481036b0ac324f",
  "kind": "def",
  "lexical_name": "transportStruct",
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
  "slug": "transportstruct--4ecbf662220a2cd0cadc7595",
  "source": {
    "blob": "ceb5f4ae062bb31a6cc34a077ed55afed0b7e75e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 141,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ecbf662220a2cd0cadc7595b6a577c0bceed72b86afeb396830cba13e238a11",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87b44c09a93b22723265543e786d5c2140c195174345b39644481036b0ac324f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transportStruct (e : C ≌ D) : MonoidalCategoryStruct.{v₂} D where
  tensorObj X Y := e.functor.obj (e.inverse.obj X ⊗ e.inverse.obj Y)
  whiskerLeft X _ _ f := e.functor.map (e.inverse.obj X ◁ e.inverse.map f)
  whiskerRight f X := e.functor.map (e.inverse.map f ▷ e.inverse.obj X)
  tensorHom f g := e.functor.map (e.inverse.map f ⊗ e.inverse.map g)
  tensorUnit := e.functor.obj (𝟙_ C)
  associator X Y Z :=
    e.functor.mapIso
      (whiskerRightIso (e.unitIso.app _).symm _ ≪≫
        α_ (e.inverse.obj X) (e.inverse.obj Y) (e.inverse.obj Z) ≪≫
        whiskerLeftIso _ (e.unitIso.app _))
  leftUnitor X :=
    e.functor.mapIso ((whiskerRightIso (e.unitIso.app _).symm _) ≪≫ λ_ (e.inverse.obj X)) ≪≫
      e.counitIso.app _
  rightUnitor X :=
    e.functor.mapIso ((whiskerLeftIso _ (e.unitIso.app _).symm) ≪≫ ρ_ (e.inverse.obj X)) ≪≫
      e.counitIso.app _

attribute [local simp] transportStruct in
/-- Transport a monoidal structure along an equivalence of (plain) categories.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ceb5f4ae062bb31a6cc34a077ed55afed0b7e75e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
