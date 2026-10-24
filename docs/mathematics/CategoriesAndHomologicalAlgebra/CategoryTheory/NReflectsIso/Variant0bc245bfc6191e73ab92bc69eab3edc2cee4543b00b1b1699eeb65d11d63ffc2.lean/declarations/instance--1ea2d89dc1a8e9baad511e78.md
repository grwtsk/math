# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa97f54a4cec323ff8df9dae98815ecbb9704267351fddc7c1fafa097406b228",
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
  "slug": "instance--1ea2d89dc1a8e9baad511e78",
  "source": {
    "blob": "7cbe508e687f8445cbfc27407bfccaaa22c0cc6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 97,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NReflectsIso/Variant0bc245bfc6191e73ab92bc69eab3edc2cee4543b00b1b1699eeb65d11d63ffc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ea2d89dc1a8e9baad511e780ec1daffbd5d0d3fc8eeb0732cf367cd71d54350",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NReflectsIso/Variant0bc245bfc6191e73ab92bc69eab3edc2cee4543b00b1b1699eeb65d11d63ffc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa97f54a4cec323ff8df9dae98815ecbb9704267351fddc7c1fafa097406b228`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (N₂ : Karoubi (SimplicialObject C) ⥤ Karoubi (ChainComplex C ℕ)).ReflectsIsomorphisms :=
  ⟨fun f => by
    intro
    -- The following functor `F` reflects isomorphism because it is
    -- a composition of four functors which reflects isomorphisms.
    -- Then, it suffices to show that `F.map f` is an isomorphism.
    let F₁ := karoubiFunctorCategoryEmbedding SimplexCategoryᵒᵖ C
    let F₂ : SimplicialObject (Karoubi C) ⥤ _ := N₁
    let F₃ := (karoubiChainComplexEquivalence (Karoubi C) ℕ).functor
    let F₄ := Functor.mapHomologicalComplex (KaroubiKaroubi.equivalence C).inverse
      (ComplexShape.down ℕ)
    let F := F₁ ⋙ F₂ ⋙ F₃ ⋙ F₄
    -- Porting note: we have to help Lean4 find the `ReflectsIsomorphisms` instances
    -- could this be fixed by setting better instance priorities?
    haveI : F₁.ReflectsIsomorphisms := reflectsIsomorphisms_of_full_and_faithful _
    haveI : F₂.ReflectsIsomorphisms := by infer_instance
    haveI : ((KaroubiKaroubi.equivalence C).inverse).ReflectsIsomorphisms :=
      reflectsIsomorphisms_of_full_and_faithful _
    have : IsIso (F.map f) := by
      simp only [F, F₁]
      rw [← compatibility_N₂_N₁_karoubi, Functor.comp_map]
      apply Functor.map_isIso
    exact isIso_of_reflects_iso f F⟩

end DoldKan

end AlgebraicTopology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NReflectsIso/Variant0bc245bfc6191e73ab92bc69eab3edc2cee4543b00b1b1699eeb65d11d63ffc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NReflectsIso/Variant0bc245bfc6191e73ab92bc69eab3edc2cee4543b00b1b1699eeb65d11d63ffc2.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cbe508e687f8445cbfc27407bfccaaa22c0cc6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
