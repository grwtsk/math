# monoidalCategoryOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:931ebd7bf985eef51a2818502bbf2b0c63ee55ddec9e5ec43463b25b8f7255ca",
  "kind": "instance",
  "lexical_name": "monoidalCategoryOp",
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
  "slug": "monoidalcategoryop--10835d7a637cca45f7cdfc7f",
  "source": {
    "blob": "0526d54259faa94b34af34d57af8262e30a9e610",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 179,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10835d7a637cca45f7cdfc7ff9a62299db2275929662580d40dba61d88299bd4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:931ebd7bf985eef51a2818502bbf2b0c63ee55ddec9e5ec43463b25b8f7255ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance monoidalCategoryOp : MonoidalCategory Cᵒᵖ where
  tensorObj X Y := op (unop X ⊗ unop Y)
  whiskerLeft X _ _ f := (X.unop ◁ f.unop).op
  whiskerRight f X := (f.unop ▷ X.unop).op
  tensorHom f g := (f.unop ⊗ g.unop).op
  tensorHom_def f g := Quiver.Hom.unop_inj (tensorHom_def' _ _)
  tensorUnit' := op (𝟙_ C)
  associator X Y Z := (α_ (unop X) (unop Y) (unop Z)).symm.op
  leftUnitor X := (λ_ (unop X)).symm.op
  rightUnitor X := (ρ_ (unop X)).symm.op
  associator_naturality f g h := Quiver.Hom.unop_inj (by simp)
  leftUnitor_naturality f := Quiver.Hom.unop_inj (by simp)
  rightUnitor_naturality f := Quiver.Hom.unop_inj (by simp)
  triangle X Y := Quiver.Hom.unop_inj (by dsimp; coherence)
  pentagon W X Y Z := Quiver.Hom.unop_inj (by dsimp; coherence)
#align category_theory.monoidal_category_op CategoryTheory.monoidalCategoryOp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianted4ac6ef6c23e7b236acef786adf267c43649e5b433544ae732ac5d087a1a1ca.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0526d54259faa94b34af34d57af8262e30a9e610` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
