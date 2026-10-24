# transform_map_rightUnitor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa38078f-dedd-724e-ec99-9877689be0cb",
  "kind": "lemma",
  "lexical_name": "transform_map_rightUnitor",
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
  "slug": "transform-map-rightunitor--45b39416d2724ab6cea03d2d",
  "source": {
    "blob": "de777365098ac834b0c63e7328fe61d84bf29a7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 622,
    "line": 600,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b471e613c4beee5849ebf3e0a8ac683cc21935182bf7f6bd18f00747904b416.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45b39416d2724ab6cea03d2d501c0d2510b4c786c26761c869ed6434948cadd8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b471e613c4beee5849ebf3e0a8ac683cc21935182bf7f6bd18f00747904b416.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa38078f-dedd-724e-ec99-9877689be0cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 600–622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma transform_map_rightUnitor (X : Type u₇) [Category.{v₇} X]
    (ψ : CatCospanTransform F G F₁ G₁) :
    (transform X).map (ρ_ ψ).hom =
    (transformObjComp X ψ (.id F₁ G₁)).hom ≫
      whiskerLeft (transform X |>.obj ψ) (transformObjId X F₁ G₁).hom ≫
      (transform X |>.obj ψ).rightUnitor.hom := by
  ext <;> simp

end transform

section precompose

variable (F G)

variable
    {X : Type u₄} {Y : Type u₅} {Z : Type u₆}
    [Category.{v₄} X] [Category.{v₅} Y] [Category.{v₆} Z]

set_option backward.defeqAttrib.useBackward true in
/-- A functor `U : X ⥤ Y` (functorially) induces a functor
`CatCommSqOver F G Y ⥤ CatCommSqOver F G X` by whiskering left the underlying
categorical commutative square by U. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b471e613c4beee5849ebf3e0a8ac683cc21935182bf7f6bd18f00747904b416.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b471e613c4beee5849ebf3e0a8ac683cc21935182bf7f6bd18f00747904b416.lean#L600).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de777365098ac834b0c63e7328fe61d84bf29a7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
