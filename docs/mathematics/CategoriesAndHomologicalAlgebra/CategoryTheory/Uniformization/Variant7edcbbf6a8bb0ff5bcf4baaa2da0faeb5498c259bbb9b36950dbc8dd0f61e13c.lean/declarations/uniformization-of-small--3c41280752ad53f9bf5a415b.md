# uniformization_of_small

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a03e31fd-98bc-4330-347c-a38fe382fd70",
  "kind": "lemma",
  "lexical_name": "uniformization_of_small",
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
  "slug": "uniformization-of-small--3c41280752ad53f9bf5a415b",
  "source": {
    "blob": "581e2cfe3b5b728ff9eb63b4060b1246fb6fad1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 88,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Uniformization/Variant7edcbbf6a8bb0ff5bcf4baaa2da0faeb5498c259bbb9b36950dbc8dd0f61e13c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c41280752ad53f9bf5a415bf19cb5dbd1c57b102509bd4089c1a0b38fe46e14",
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

Occurrence: `result:a03e31fd-98bc-4330-347c-a38fe382fd70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma uniformization_of_small
    [IsAccessibleCategory.{w} C] [IsAccessibleCategory.{w} D]
    {ι : Type*} [Small.{w} ι] (F : ι → C ⥤ D) [∀ i, Functor.IsAccessible.{w} (F i)] :
    ∃ (κ : Cardinal.{w}) (_ : Fact κ.IsRegular),
      IsCardinalAccessibleCategory C κ ∧ IsCardinalAccessibleCategory D κ ∧
      (∀ i, (F i).IsCardinalAccessible κ) ∧
        ∀ i, (F i).PreservesCardinalPresentable κ := by
  obtain ⟨κ, _, _, _, _⟩ :
      ∃ (κ : Cardinal.{w}) (_ : Fact κ.IsRegular),
        IsCardinalAccessibleCategory C κ ∧ IsCardinalAccessibleCategory D κ ∧
          ∀ (i : ι), (F i).IsCardinalAccessible κ := by
    obtain ⟨κ₁, _, _⟩  := IsAccessibleCategory.exists_cardinal C
    obtain ⟨κ₂, _, _⟩  := IsAccessibleCategory.exists_cardinal D
    choose κ₃ _ hκ₃ using fun i ↦ Functor.IsAccessible.exists_cardinal (F i)
    obtain ⟨κ₃', hκ₃' , hκ₃''⟩ :=
      HasCardinalLT.exists_regular_cardinal_forall (fun i ↦ (κ₃ i).ord.ToType)
    have : Fact κ₃'.IsRegular := ⟨hκ₃'⟩
    obtain ⟨κ, _, hκ₁, hκ₂, hκ₃⟩ := Cardinal.SharplyLT.exists_of_triple κ₁ κ₂ κ₃'
    refine ⟨κ, inferInstance, hκ₁.isCardinalAccessibleCategory C,
      hκ₂.isCardinalAccessibleCategory D,
      fun i ↦ Functor.isCardinalAccessible_of_le _ (show κ₃ i ≤ κ from ?_)⟩
    have := (hκ₃'' i)
    simp only [hasCardinalLT_iff_cardinal_mk_lt, Cardinal.mk_toType, Cardinal.card_ord] at this
    exact this.le.trans hκ₃.le
  obtain ⟨κ₀, _, hκ₀⟩ : ∃ (κ₀ : Cardinal.{w}) (_ : Fact κ₀.IsRegular),
      ∀ (i : ι), (isCardinalPresentable C κ).map (F i) ≤ isCardinalPresentable D κ₀ := by
    choose κ' hκ' hκ'' using
      fun i ↦ ObjectProperty.le_isCardinalPresentable.{w} ((isCardinalPresentable C κ).map (F i))
    obtain ⟨κ'', h₁, h₂⟩ :=
      HasCardinalLT.exists_regular_cardinal_forall (fun i ↦ (κ' i).ord.ToType)
    have : Fact κ''.IsRegular := ⟨h₁⟩
    refine ⟨κ'', inferInstance, fun i ↦ (hκ'' i).trans ?_⟩
    have := h₂ i
    simp only [hasCardinalLT_iff_cardinal_mk_lt, Cardinal.mk_toType, Cardinal.card_ord] at this
    exact isCardinalPresentable_monotone _ this.le
  obtain ⟨κ', _, h₁, h₂⟩ := Cardinal.SharplyLT.exists_of_pair κ κ₀
  exact ⟨κ', inferInstance, h₁.isCardinalAccessibleCategory C,
    h₁.isCardinalAccessibleCategory D,
    fun i ↦ Functor.isCardinalAccessible_of_le _ h₁.le,
    fun i ↦ uniformization_aux _ h₁
      (fun X hX ↦ isCardinalPresentable_monotone _ h₂.le _
        (hκ₀ i _ (ObjectProperty.prop_map_obj _ _ hX)))⟩

/-- Uniformization theorem for accessible categories: if `F` is an accessible
functor between accessible categories, there exists a regular cardinal `κ`
such that `C` and `D` are `κ`-accessible, the functor `F` is `κ`-accessible
and preserves `κ`-presentable objects. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Uniformization/Variant7edcbbf6a8bb0ff5bcf4baaa2da0faeb5498c259bbb9b36950dbc8dd0f61e13c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Uniformization/Variant7edcbbf6a8bb0ff5bcf4baaa2da0faeb5498c259bbb9b36950dbc8dd0f61e13c.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `581e2cfe3b5b728ff9eb63b4060b1246fb6fad1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
