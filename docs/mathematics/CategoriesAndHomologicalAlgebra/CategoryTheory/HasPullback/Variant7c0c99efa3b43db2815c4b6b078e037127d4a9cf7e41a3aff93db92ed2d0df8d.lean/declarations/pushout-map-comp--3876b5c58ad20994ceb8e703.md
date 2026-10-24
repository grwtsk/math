# pushout.map_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc9f2725-9b34-f88d-a6ce-fa1e975a01cd",
  "kind": "lemma",
  "lexical_name": "pushout.map_comp",
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
  "slug": "pushout-map-comp--3876b5c58ad20994ceb8e703",
  "source": {
    "blob": "97714434aa1ea48c008185fdf6465efd58700069",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 331,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasPullback/Variant7c0c99efa3b43db2815c4b6b078e037127d4a9cf7e41a3aff93db92ed2d0df8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3876b5c58ad20994ceb8e703adec22f1b50033eec7a80cefb5e9d15ac458f18f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasPullback/Variant7c0c99efa3b43db2815c4b6b078e037127d4a9cf7e41a3aff93db92ed2d0df8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc9f2725-9b34-f88d-a6ce-fa1e975a01cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pushout.map_comp {X Y Z X' Y' Z' X'' Y'' Z'' : C}
    {f : X ⟶ Y} {g : X ⟶ Z} {f' : X' ⟶ Y'} {g' : X' ⟶ Z'} {f'' : X'' ⟶ Y''} {g'' : X'' ⟶ Z''}
    (i₁ : X ⟶ X') (j₁ : X' ⟶ X'') (i₂ : Y ⟶ Y') (j₂ : Y' ⟶ Y'') (i₃ : Z ⟶ Z') (j₃ : Z' ⟶ Z'')
    [HasPushout f g] [HasPushout f' g'] [HasPushout f'' g'']
    (e₁ e₂ e₃ e₄) :
    pushout.map f g f' g' i₂ i₃ i₁ e₁ e₂ ≫ pushout.map f' g' f'' g'' j₂ j₃ j₁ e₃ e₄ =
      pushout.map f g f'' g'' (i₂ ≫ j₂) (i₃ ≫ j₃) (i₁ ≫ j₁)
        (by rw [reassoc_of% e₁, e₃, Category.assoc])
        (by rw [reassoc_of% e₂, e₄, Category.assoc]) := by ext <;> simp

set_option backward.isDefEq.respectTransparency false in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasPullback/Variant7c0c99efa3b43db2815c4b6b078e037127d4a9cf7e41a3aff93db92ed2d0df8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasPullback/Variant7c0c99efa3b43db2815c4b6b078e037127d4a9cf7e41a3aff93db92ed2d0df8d.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97714434aa1ea48c008185fdf6465efd58700069` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
