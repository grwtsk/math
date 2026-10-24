# transform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bfdb4edcd71dbd1e3c023554d339ab7f76d2595953edf8c89296e67b7decf3c1",
  "kind": "def",
  "lexical_name": "transform",
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
  "slug": "transform--43ee593d3586d35e26aae971",
  "source": {
    "blob": "de777365098ac834b0c63e7328fe61d84bf29a7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 526,
    "line": 480,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b471e613c4beee5849ebf3e0a8ac683cc21935182bf7f6bd18f00747904b416.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43ee593d3586d35e26aae97147bc41f5e9fb303b52dc40dcd2473200aad2aec3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b471e613c4beee5849ebf3e0a8ac683cc21935182bf7f6bd18f00747904b416.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bfdb4edcd71dbd1e3c023554d339ab7f76d2595953edf8c89296e67b7decf3c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–526.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transform (X : Type u₇) [Category.{v₇} X] :
    CatCospanTransform F G F₁ G₁ ⥤
      CatCommSqOver F G X ⥤ CatCommSqOver F₁ G₁ X where
  obj ψ :=
    { obj S :=
      { fst := S.fst ⋙ ψ.left
        snd := S.snd ⋙ ψ.right
        iso :=
          (Functor.associator ..) ≪≫
            isoWhiskerLeft S.fst ψ.squareLeft.iso.symm ≪≫
            (Functor.associator ..).symm ≪≫
            isoWhiskerRight S.iso ψ.base ≪≫
            (Functor.associator ..) ≪≫
            isoWhiskerLeft S.snd ψ.squareRight.iso ≪≫
            (Functor.associator ..).symm }
      map {x y} f :=
        { fst := whiskerRight f.fst ψ.left
          snd := whiskerRight f.snd ψ.right
          w := by
            ext x
            simp [← Functor.map_comp_assoc] }
      map_id := by intros; ext <;> simp
      map_comp := by intros; ext <;> simp }
  map {ψ ψ'} η :=
    { app S :=
      { fst.app y := η.left.app (S.fst.obj y)
        fst.naturality {x y} f := by simp
        snd.app y := η.right.app (S.snd.obj y)
        snd.naturality {x y} f := by simp
        w := by
          ext t
          have := ψ.squareLeft.iso.inv.app (S.fst.obj t) ≫=
            η.left_coherence_app (S.fst.obj t)
          simp only [Iso.inv_hom_id_app_assoc] at this
          simp [this] } }
  map_id := by intros; ext <;> simp
  map_comp := by intros; ext <;> simp

variable {A₂ : Type u₇} {B₂ : Type u₈} {C₂ : Type u₉}
  [Category.{v₇} A₂] [Category.{v₈} B₂] [Category.{v₉} C₂]
  {F₂ : A₂ ⥤ B₂} {G₂ : C₂ ⥤ B₂}

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The construction `CatCommSqOver.transform` respects vertical composition
of `CatCospanTransform`s. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b471e613c4beee5849ebf3e0a8ac683cc21935182bf7f6bd18f00747904b416.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b471e613c4beee5849ebf3e0a8ac683cc21935182bf7f6bd18f00747904b416.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de777365098ac834b0c63e7328fe61d84bf29a7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
