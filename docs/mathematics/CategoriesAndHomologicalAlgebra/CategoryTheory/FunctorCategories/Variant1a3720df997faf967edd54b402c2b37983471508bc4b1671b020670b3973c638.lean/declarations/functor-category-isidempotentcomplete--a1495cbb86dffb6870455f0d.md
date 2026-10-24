# functor_category_isIdempotentComplete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:377960c6544e50d7f3e01391d9ec04c81eb58fc2193eb6fa797fe93bbff14941",
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
  "slug": "functor-category-isidempotentcomplete--a1495cbb86dffb6870455f0d",
  "source": {
    "blob": "34c4f44f5ce722d3c937274184fc012e6a8fa78e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant1a3720df997faf967edd54b402c2b37983471508bc4b1671b020670b3973c638.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1495cbb86dffb6870455f0d80961e8f2c660eb02ce10e6c33a7cc2ca5c3c1ba",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant1a3720df997faf967edd54b402c2b37983471508bc4b1671b020670b3973c638.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:377960c6544e50d7f3e01391d9ec04c81eb58fc2193eb6fa797fe93bbff14941`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance functor_category_isIdempotentComplete [IsIdempotentComplete C] :
    IsIdempotentComplete (J ⥤ C) := by
  refine ⟨fun F p hp => ?_⟩
  have hC := (isIdempotentComplete_iff_hasEqualizer_of_id_and_idempotent C).mp inferInstance
  haveI : ∀ j : J, HasEqualizer (𝟙 _) (p.app j) := fun j => hC _ _ (congr_app hp j)
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
        equalizer.lift (p.app j) (by simpa only [comp_id] using (congr_app hp j).symm)
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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant1a3720df997faf967edd54b402c2b37983471508bc4b1671b020670b3973c638.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant1a3720df997faf967edd54b402c2b37983471508bc4b1671b020670b3973c638.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34c4f44f5ce722d3c937274184fc012e6a8fa78e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
