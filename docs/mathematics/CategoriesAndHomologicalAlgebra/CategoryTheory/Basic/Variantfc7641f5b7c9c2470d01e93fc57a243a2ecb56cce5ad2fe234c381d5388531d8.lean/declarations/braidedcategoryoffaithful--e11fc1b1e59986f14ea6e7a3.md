# braidedCategoryOfFaithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f1bfa4795b35be94d00466c9e38d04974d9c6c04d16c8ad99ad711500af4085",
  "kind": "def",
  "lexical_name": "braidedCategoryOfFaithful",
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
  "slug": "braidedcategoryoffaithful--e11fc1b1e59986f14ea6e7a3",
  "source": {
    "blob": "f19575808d05d4aa3ccff249a8334127d21abe6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 199,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfc7641f5b7c9c2470d01e93fc57a243a2ecb56cce5ad2fe234c381d5388531d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e11fc1b1e59986f14ea6e7a3314a019ade591c242dda4a6cc1dea0201c5d28be",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfc7641f5b7c9c2470d01e93fc57a243a2ecb56cce5ad2fe234c381d5388531d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f1bfa4795b35be94d00466c9e38d04974d9c6c04d16c8ad99ad711500af4085`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def braidedCategoryOfFaithful {C D : Type*} [Category C] [Category D] [MonoidalCategory C]
    [MonoidalCategory D] (F : C ⥤ D) [F.Monoidal] [F.Faithful] [BraidedCategory D]
    (β : ∀ X Y : C, X ⊗ Y ≅ Y ⊗ X)
    (w : ∀ X Y, μ F _ _ ≫ F.map (β X Y).hom = (β_ _ _).hom ≫ μ F _ _) : BraidedCategory C where
  braiding := β
  braiding_naturality_left := by
    intros
    apply F.map_injective
    refine (cancel_epi (μ F ?_ ?_)).1 ?_
    rw [Functor.map_comp, ← μ_natural_left_assoc, w, Functor.map_comp,
      reassoc_of% w, braiding_naturality_left_assoc, μ_natural_right]
  braiding_naturality_right := by
    intros
    apply F.map_injective
    refine (cancel_epi (μ F ?_ ?_)).1 ?_
    rw [Functor.map_comp, ← μ_natural_right_assoc, w, Functor.map_comp,
      reassoc_of% w, braiding_naturality_right_assoc, μ_natural_left]
  hexagon_forward := by
    intros
    apply F.map_injective
    refine (cancel_epi (μ F _ _)).1 ?_
    refine (cancel_epi (μ F _ _ ▷ _)).1 ?_
    rw [Functor.map_comp, Functor.map_comp, Functor.map_comp, Functor.map_comp, ←
      μ_natural_left_assoc, ← comp_whiskerRight_assoc, w,
      comp_whiskerRight_assoc, Functor.LaxMonoidal.associativity_assoc,
      Functor.LaxMonoidal.associativity_assoc, ← μ_natural_right, ←
      MonoidalCategory.whiskerLeft_comp_assoc, w, MonoidalCategory.whiskerLeft_comp_assoc,
      reassoc_of% w, braiding_naturality_right_assoc,
      Functor.LaxMonoidal.associativity, hexagon_forward_assoc]
  hexagon_reverse := by
    intros
    apply F.map_injective
    refine (cancel_epi (μ F _ _)).1 ?_
    refine (cancel_epi (_ ◁ μ F _ _)).1 ?_
    rw [Functor.map_comp, Functor.map_comp, Functor.map_comp, Functor.map_comp, ←
      μ_natural_right_assoc, ← MonoidalCategory.whiskerLeft_comp_assoc, w,
      MonoidalCategory.whiskerLeft_comp_assoc, Functor.LaxMonoidal.associativity_inv_assoc,
      Functor.LaxMonoidal.associativity_inv_assoc, ← μ_natural_left,
      ← comp_whiskerRight_assoc, w, comp_whiskerRight_assoc, reassoc_of% w,
      braiding_naturality_left_assoc, Functor.LaxMonoidal.associativity_inv, hexagon_reverse_assoc]

/-- Pull back a braiding along a fully faithful monoidal functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfc7641f5b7c9c2470d01e93fc57a243a2ecb56cce5ad2fe234c381d5388531d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfc7641f5b7c9c2470d01e93fc57a243a2ecb56cce5ad2fe234c381d5388531d8.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f19575808d05d4aa3ccff249a8334127d21abe6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
