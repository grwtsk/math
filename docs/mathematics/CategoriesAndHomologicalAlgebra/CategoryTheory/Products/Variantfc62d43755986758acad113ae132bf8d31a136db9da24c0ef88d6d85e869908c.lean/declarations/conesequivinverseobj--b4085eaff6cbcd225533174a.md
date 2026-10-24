# conesEquivInverseObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9469c694ff001b2211096e71a6838918789765195f3f69d6d8b763e0f15fc50",
  "kind": "def",
  "lexical_name": "conesEquivInverseObj",
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
  "slug": "conesequivinverseobj--b4085eaff6cbcd225533174a",
  "source": {
    "blob": "d885d78b3c36a82ac81a54b4bf846e916288e12e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 56,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4085eaff6cbcd225533174a520552d31d97b175a3dcafd855f9da2dcd712cf8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9469c694ff001b2211096e71a6838918789765195f3f69d6d8b763e0f15fc50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def conesEquivInverseObj (B : C) {J : Type w} (F : Discrete J ⥤ Over B) (c : Cone F) :
    Cone (widePullbackDiagramOfDiagramOver B F) where
  pt := c.pt.left
  π :=
    { app := fun X => Option.casesOn X c.pt.hom fun j : J => (c.π.app ⟨j⟩).left
      -- `tidy` can do this using `case_bash`, but let's try to be a good `-T50000` citizen:
      naturality := fun X Y f => by
        dsimp; cases X <;> cases Y <;> cases f
        · rw [Category.id_comp, Category.comp_id]
        · rw [Over.w, Category.id_comp]
        · rw [Category.id_comp, Category.comp_id] }
#align category_theory.over.construct_products.cones_equiv_inverse_obj CategoryTheory.Over.ConstructProducts.conesEquivInverseObj

/-- (Impl) A preliminary definition to avoid timeouts. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d885d78b3c36a82ac81a54b4bf846e916288e12e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
