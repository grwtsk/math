# shrinkCoyonedaEquiv_symm_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5937cc75-397c-52da-3567-981aab6bb8e8",
  "kind": "lemma",
  "lexical_name": "shrinkCoyonedaEquiv_symm_map",
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
  "slug": "shrinkcoyonedaequiv-symm-map--8e582fea382f86676b93f635",
  "source": {
    "blob": "eda58704d08494c4c20058655d104a4690f17ccf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 368,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShrinkYoneda/Varianta279d3de25d8db12b5f90412803a12b816671e4e05b5f4797b926131be5445a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e582fea382f86676b93f635627474e841b3a7117c9e258f4c92d779a4f388e4",
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

Occurrence: `result:5937cc75-397c-52da-3567-981aab6bb8e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shrinkCoyonedaEquiv_symm_map {X Y : C} (f : X ⟶ Y) {P : C ⥤ Type w} (t : P.obj X) :
    shrinkCoyonedaEquiv.symm (P.map f t) =
      shrinkCoyoneda.map f.op ≫ shrinkCoyonedaEquiv.symm t :=
  shrinkCoyonedaEquiv.injective (by
    obtain ⟨t, rfl⟩ := shrinkCoyonedaEquiv.surjective t
    rw [← shrinkCoyonedaEquiv_naturality]
    simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShrinkYoneda/Varianta279d3de25d8db12b5f90412803a12b816671e4e05b5f4797b926131be5445a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShrinkYoneda/Varianta279d3de25d8db12b5f90412803a12b816671e4e05b5f4797b926131be5445a0.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eda58704d08494c4c20058655d104a4690f17ccf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
