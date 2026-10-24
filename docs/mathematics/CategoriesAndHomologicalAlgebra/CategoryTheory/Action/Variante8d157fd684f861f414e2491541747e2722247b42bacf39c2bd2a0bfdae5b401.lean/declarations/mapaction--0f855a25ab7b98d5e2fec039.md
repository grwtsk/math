# mapAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd5b2c818e94e02d1fa01697c2e66ba9c723d6d3a57f8d3f397a2825429db318",
  "kind": "def",
  "lexical_name": "mapAction",
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
  "slug": "mapaction--0f855a25ab7b98d5e2fec039",
  "source": {
    "blob": "7ca2ecb725b5fd0acb79fe1018c5f90f56f25987",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1012,
    "line": 986,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante8d157fd684f861f414e2491541747e2722247b42bacf39c2bd2a0bfdae5b401.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f855a25ab7b98d5e2fec039318c5cd771f857a91aee4215fc23584dde6ed5cc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante8d157fd684f861f414e2491541747e2722247b42bacf39c2bd2a0bfdae5b401.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd5b2c818e94e02d1fa01697c2e66ba9c723d6d3a57f8d3f397a2825429db318`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 986–1012.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapAction : MonoidalFunctor (Action V G) (Action W G) :=
  { F.toFunctor.mapAction G with
    ε :=
      { hom := F.ε
        comm := fun g => by
          dsimp [FunctorCategoryEquivalence.inverse, Functor.mapAction]
          rw [Category.id_comp, F.map_id, Category.comp_id] }
    μ := fun X Y =>
      { hom := F.μ X.V Y.V
        comm := fun g => F.toLaxMonoidalFunctor.μ_natural (X.ρ g) (Y.ρ g) }
    ε_isIso := by infer_instance
    μ_isIso := by infer_instance
    μ_natural := by intros; ext; simp
    associativity := by intros; ext; simp
    left_unitality := by intros; ext; simp
    right_unitality := by
      intros
      ext
      dsimp
      simp only [MonoidalCategory.rightUnitor_conjugation,
        LaxMonoidalFunctor.right_unitality, Category.id_comp, Category.assoc,
        LaxMonoidalFunctor.right_unitality_inv_assoc, Category.comp_id, Iso.hom_inv_id]
      rw [← F.map_comp, Iso.inv_hom_id, F.map_id, Category.comp_id] }
set_option linter.uppercaseLean3 false in
#align category_theory.monoidal_functor.map_Action CategoryTheory.MonoidalFunctor.mapAction

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante8d157fd684f861f414e2491541747e2722247b42bacf39c2bd2a0bfdae5b401.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante8d157fd684f861f414e2491541747e2722247b42bacf39c2bd2a0bfdae5b401.lean#L986).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ca2ecb725b5fd0acb79fe1018c5f90f56f25987` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
