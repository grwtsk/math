# uniformization_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5152253-4368-5f70-d250-956cfa324603",
  "kind": "lemma",
  "lexical_name": "uniformization_pair",
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
  "slug": "uniformization-pair--5a924119df6da89f781119c8",
  "source": {
    "blob": "581e2cfe3b5b728ff9eb63b4060b1246fb6fad1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 147,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Uniformization/Variant7edcbbf6a8bb0ff5bcf4baaa2da0faeb5498c259bbb9b36950dbc8dd0f61e13c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a924119df6da89f781119c87eadda6e0231904d55d796ae6bef9bcc1e33ddaf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Uniformization/Variant7edcbbf6a8bb0ff5bcf4baaa2da0faeb5498c259bbb9b36950dbc8dd0f61e13c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5152253-4368-5f70-d250-956cfa324603`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma uniformization_pair
    {C₁ C₂ D₁ D₂ : Type*} [Category* C₁] [Category* C₂] [Category* D₁] [Category* D₂]
    [IsAccessibleCategory.{w} C₁] [IsAccessibleCategory.{w} C₂]
    [IsAccessibleCategory.{w} D₁] [IsAccessibleCategory.{w} D₂]
    (F₁ : C₁ ⥤ D₁) (F₂ : C₂ ⥤ D₂)
    [Functor.IsAccessible.{w} F₁] [Functor.IsAccessible.{w} F₂] :
    ∃ (κ : Cardinal.{w}) (_ : Fact κ.IsRegular),
      IsCardinalAccessibleCategory C₁ κ ∧ IsCardinalAccessibleCategory D₁ κ ∧
      IsCardinalAccessibleCategory C₂ κ ∧ IsCardinalAccessibleCategory D₂ κ ∧
      F₁.IsCardinalAccessible κ ∧ F₂.IsCardinalAccessible κ ∧
        F₁.PreservesCardinalPresentable κ ∧ F₂.PreservesCardinalPresentable κ := by
  obtain ⟨κ, _, _, _, _, _, _, _⟩ :
      ∃ (κ : Cardinal.{w}) (_ : Fact κ.IsRegular),
        IsCardinalAccessibleCategory C₁ κ ∧ IsCardinalAccessibleCategory D₁ κ ∧
        IsCardinalAccessibleCategory C₂ κ ∧ IsCardinalAccessibleCategory D₂ κ ∧
        F₁.IsCardinalAccessible κ ∧ F₂.IsCardinalAccessible κ := by
    obtain ⟨κ₁, _, _⟩ := IsAccessibleCategory.exists_cardinal C₁
    obtain ⟨κ₁', _, _⟩ := IsAccessibleCategory.exists_cardinal D₁
    obtain ⟨κ₁'', _, _⟩ := Functor.IsAccessible.exists_cardinal F₁
    obtain ⟨κ₂, _, _⟩ := IsAccessibleCategory.exists_cardinal C₂
    obtain ⟨κ₂', _, _⟩ := IsAccessibleCategory.exists_cardinal D₂
    obtain ⟨κ₂'', _, _⟩ := Functor.IsAccessible.exists_cardinal F₂
    obtain ⟨α₁, _, h₁, h₁', h₁''⟩ := Cardinal.SharplyLT.exists_of_triple κ₁ κ₁' κ₁''
    obtain ⟨α₂, _, h₂, h₂', h₂''⟩ := Cardinal.SharplyLT.exists_of_triple κ₂ κ₂' κ₂''
    obtain ⟨κ, _, hκ₁, hκ₂⟩ := Cardinal.SharplyLT.exists_of_pair α₁ α₂
    exact ⟨κ, inferInstance,
      (h₁.trans hκ₁).isCardinalAccessibleCategory C₁,
      (h₁'.trans hκ₁).isCardinalAccessibleCategory D₁,
      (h₂.trans hκ₂).isCardinalAccessibleCategory C₂,
      (h₂'.trans hκ₂).isCardinalAccessibleCategory D₂,
      Functor.isCardinalAccessible_of_le _ (h₁''.trans hκ₁).le,
      Functor.isCardinalAccessible_of_le _ (h₂''.trans hκ₂).le⟩
  obtain ⟨κ₁, _, hκ₁⟩ := ((isCardinalPresentable C₁ κ).map F₁).le_isCardinalPresentable
  obtain ⟨κ₂, _, hκ₂⟩ := ((isCardinalPresentable C₂ κ).map F₂).le_isCardinalPresentable
  obtain ⟨κ', _, hκ, hκ₁', hκ₂'⟩ := Cardinal.SharplyLT.exists_of_triple κ κ₁ κ₂
  refine ⟨κ', inferInstance, hκ.isCardinalAccessibleCategory _,
    hκ.isCardinalAccessibleCategory _, hκ.isCardinalAccessibleCategory _,
    hκ.isCardinalAccessibleCategory _,
    Functor.isCardinalAccessible_of_le _ hκ.le,
    Functor.isCardinalAccessible_of_le _ hκ.le,
    uniformization_aux _ hκ (fun X₁ hX₁ ↦ ?_),
    uniformization_aux _ hκ (fun X₂ hX₂ ↦ ?_)⟩
  · have := hκ₁ _ (ObjectProperty.prop_map_obj _ F₁ hX₁)
    exact isCardinalPresentable_of_le _ hκ₁'.le
  · have := hκ₂ _ (ObjectProperty.prop_map_obj _ F₂ hX₂)
    exact isCardinalPresentable_of_le _ hκ₂'.le

end IsCardinalAccessibleCategory

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Uniformization/Variant7edcbbf6a8bb0ff5bcf4baaa2da0faeb5498c259bbb9b36950dbc8dd0f61e13c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Uniformization/Variant7edcbbf6a8bb0ff5bcf4baaa2da0faeb5498c259bbb9b36950dbc8dd0f61e13c.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `581e2cfe3b5b728ff9eb63b4060b1246fb6fad1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
