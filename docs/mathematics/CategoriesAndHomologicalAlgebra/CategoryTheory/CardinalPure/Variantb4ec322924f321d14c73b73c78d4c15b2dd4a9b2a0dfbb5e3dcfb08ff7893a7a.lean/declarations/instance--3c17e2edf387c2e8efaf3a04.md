# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b666b42b86bafebab5f4c62976e6be86d377736fffe11222bafeb88b31281c2",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--3c17e2edf387c2e8efaf3a04",
  "source": {
    "blob": "3888b6569a56ee30e9a3a46f7dfa0d131bf93e2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 132,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalPure/Variantb4ec322924f321d14c73b73c78d4c15b2dd4a9b2a0dfbb5e3dcfb08ff7893a7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c17e2edf387c2e8efaf3a0453f16c06437b10413817de1b7076ff8dea9bd412",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalPure/Variantb4ec322924f321d14c73b73c78d4c15b2dd4a9b2a0dfbb5e3dcfb08ff7893a7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b666b42b86bafebab5f4c62976e6be86d377736fffe11222bafeb88b31281c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (J : Type*) [Category* J] [EssentiallySmall.{w} J] [IsCardinalFiltered J κ] :
    (isCardinalPure C κ).IsStableUnderColimitsOfShape J := by
  have := isFiltered_of_isCardinalFiltered J κ
  rw [MorphismProperty.isStableUnderColimitsOfShape_iff_colimitsOfShape_le]
  rintro _ _ f ⟨X, Y, c₁, c₂, hc₁, hc₂, f, hf⟩
  refine ⟨fun {X' Y' t l r _ _} sq ↦ ?_⟩
  obtain ⟨j', l', r', _, _, sq'⟩ :=
    IsCardinalPresentable.exists_commSq_of_isColimit κ f hc₁ hc₂ _ (by cat_disch) sq
  have := hf j'
  obtain ⟨ρ, _⟩ := IsCardinalPure.exists_of_commSq κ sq'
  exact ⟨ρ ≫ c₁.ι.app j', by cat_disch⟩

/-- If `F : C ⥤ D` is a `κ`-accessible functor (with `C` a `κ`-accessible category),
then `F` maps `κ`-pure morphisms to `κ`-morphisms.
(This is proposition 2.38 in [Adamek_Rosicky_1994], without the unnecessary
assumption that `F` preserves `κ`-presentable objects.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalPure/Variantb4ec322924f321d14c73b73c78d4c15b2dd4a9b2a0dfbb5e3dcfb08ff7893a7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalPure/Variantb4ec322924f321d14c73b73c78d4c15b2dd4a9b2a0dfbb5e3dcfb08ff7893a7a.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3888b6569a56ee30e9a3a46f7dfa0d131bf93e2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
