# coneBack

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f9bfdd7c0b31c475cd8babdf984a68ccb2b23248d977eb2c35dfaf0b6cd7b5c",
  "kind": "def",
  "lexical_name": "coneBack",
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
  "slug": "coneback--0f09a00a4365c5ec22b4ac92",
  "source": {
    "blob": "8a53a909ccc908ccd8f1786a4c6a9f0631effe6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variantb47d5203f0c8f7ef5d237d7eabd5ee3ac1283b24fec3d16181e21cb8ed19abb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f09a00a4365c5ec22b4ac922074de7f67d87be0fa2f5325d5bb0f002bcca892",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variantb47d5203f0c8f7ef5d237d7eabd5ee3ac1283b24fec3d16181e21cb8ed19abb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f9bfdd7c0b31c475cd8babdf984a68ccb2b23248d977eb2c35dfaf0b6cd7b5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def coneBack : Cone (liftFromOver.obj K) ⥤ Cone K where
  obj t := {
    pt := .mk (t.π.app star)
    π.app a := Over.homMk (t.π.app (of a)) (t.w (homFrom a))
    π.naturality _ _ f := by ext; simpa using! (t.w (incl.map f)).symm }
  map {t₁ t₂ f} :=
    { hom := Over.homMk f.hom (by simp [dsimp% f.w star] )
      w j := by ext; simp [dsimp% f.w (of j)] }

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
/-- Given a functor `K : J ⥤ Over X` and its extension `liftFromOver K : WithTerminal J ⥤ C`,
there is an obvious equivalence between cones of these two functors.
A cone of `K` is an object of `Over X`, so it has the form `t ⟶ X`.
Equivalently, a cone of `WithTerminal K` is an object `t : C`,
and we can recover the structure morphism as `π.app X : t ⟶ X`. -/
@[simps! functor_obj_pt functor_map_hom inverse_obj_pt_left inverse_obj_pt_right_as
  inverse_obj_pt_hom inverse_obj_π_app_left inverse_map_hom_left unitIso_hom_app_hom_left
  unitIso_inv_app_hom_left counitIso_hom_app_hom counitIso_inv_app_hom]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variantb47d5203f0c8f7ef5d237d7eabd5ee3ac1283b24fec3d16181e21cb8ed19abb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variantb47d5203f0c8f7ef5d237d7eabd5ee3ac1283b24fec3d16181e21cb8ed19abb8.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a53a909ccc908ccd8f1786a4c6a9f0631effe6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
