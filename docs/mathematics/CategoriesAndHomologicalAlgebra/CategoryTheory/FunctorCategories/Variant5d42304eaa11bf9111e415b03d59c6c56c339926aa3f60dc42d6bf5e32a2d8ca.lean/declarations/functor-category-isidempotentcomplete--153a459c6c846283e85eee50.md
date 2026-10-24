# functor_category_isIdempotentComplete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:798d59558d5728f3e145d40a0bbf8f6824e43cea87bce6def8fbb9711c3bd8c8",
  "kind": "instance",
  "lexical_name": "functor_category_isIdempotentComplete",
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
  "slug": "functor-category-isidempotentcomplete--153a459c6c846283e85eee50",
  "source": {
    "blob": "56b1bb5c7a32c38d1a8dfe8f99d8e4a302afcdc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant5d42304eaa11bf9111e415b03d59c6c56c339926aa3f60dc42d6bf5e32a2d8ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:153a459c6c846283e85eee50a52c80c90e181883187868a23d7ae3df7e9b363a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant5d42304eaa11bf9111e415b03d59c6c56c339926aa3f60dc42d6bf5e32a2d8ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:798d59558d5728f3e145d40a0bbf8f6824e43cea87bce6def8fbb9711c3bd8c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance functor_category_isIdempotentComplete [IsIdempotentComplete C] :
    IsIdempotentComplete (J ⥤ C) := by
  refine ⟨fun F p hp => ?_⟩
  have hC := (isIdempotentComplete_iff_hasEqualizer_of_id_and_idempotent C).mp inferInstance
  have : ∀ j : J, HasEqualizer (𝟙 _) (p.app j) := fun j => hC _ _ (congr_app hp j)
  /- We construct the direct factor `Y` associated to `p : F ⟶ F` by computing
      the equalizer of the identity and `p.app j` on each object `(j : J)`. -/
  let Y : J ⥤ C :=
    { obj := fun j => Limits.equalizer (𝟙 _) (p.app j)
      map := fun {j j'} φ =>
        equalizer.lift (Limits.equalizer.ι (𝟙 _) (p.app j) ≫ F.map φ)
          (by rw [comp_id, assoc, p.naturality φ, ← assoc, ← Limits.equalizer.condition, comp_id]) }
  let i : Y ⟶ F :=
    { app := fun j => equalizer.ι _ _
      naturality := fun _ _ _ => by rw [equalizer.lift_ι] }
  let e : F ⟶ Y :=
    { app := fun j =>
        equalizer.lift (p.app j) (by simpa only [comp_id] using! (congr_app hp j).symm)
      naturality := fun j j' φ => equalizer.hom_ext (by simp [Y]) }
  use Y, i, e
  constructor
  · ext j
    dsimp
    rw [assoc, equalizer.lift_ι, ← equalizer.condition, id_comp, comp_id]
  · ext j
    simp [Y, i, e]
namespace KaroubiFunctorCategoryEmbedding

variable {J C}

/-- On objects, the functor which sends a formal direct factor `P` of a
functor `F : J ⥤ C` to the functor `J ⥤ Karoubi C` which sends `(j : J)` to
the corresponding direct factor of `F.obj j`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant5d42304eaa11bf9111e415b03d59c6c56c339926aa3f60dc42d6bf5e32a2d8ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant5d42304eaa11bf9111e415b03d59c6c56c339926aa3f60dc42d6bf5e32a2d8ca.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56b1bb5c7a32c38d1a8dfe8f99d8e4a302afcdc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
