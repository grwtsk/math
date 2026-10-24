# shrinkCoyonedaEquiv_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22d73f2b-d218-9ef7-6213-5909dff2385c",
  "kind": "lemma",
  "lexical_name": "shrinkCoyonedaEquiv_comp",
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
  "slug": "shrinkcoyonedaequiv-comp--e6660b67de6fcad65a09f09c",
  "source": {
    "blob": "eda58704d08494c4c20058655d104a4690f17ccf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 355,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShrinkYoneda/Varianta279d3de25d8db12b5f90412803a12b816671e4e05b5f4797b926131be5445a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6660b67de6fcad65a09f09c9686f42071bdbeb80f3dd7bc968aacb964e69ced",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShrinkYoneda/Varianta279d3de25d8db12b5f90412803a12b816671e4e05b5f4797b926131be5445a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22d73f2b-d218-9ef7-6213-5909dff2385c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shrinkCoyonedaEquiv_comp {X : Cᵒᵖ} {P Q : C ⥤ Type w} (α : shrinkCoyoneda.obj X ⟶ P)
    (β : P ⟶ Q) :
    shrinkCoyonedaEquiv (α ≫ β) = β.app _ (shrinkCoyonedaEquiv α) := by
  simp [shrinkCoyonedaEquiv]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShrinkYoneda/Varianta279d3de25d8db12b5f90412803a12b816671e4e05b5f4797b926131be5445a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShrinkYoneda/Varianta279d3de25d8db12b5f90412803a12b816671e4e05b5f4797b926131be5445a0.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eda58704d08494c4c20058655d104a4690f17ccf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
