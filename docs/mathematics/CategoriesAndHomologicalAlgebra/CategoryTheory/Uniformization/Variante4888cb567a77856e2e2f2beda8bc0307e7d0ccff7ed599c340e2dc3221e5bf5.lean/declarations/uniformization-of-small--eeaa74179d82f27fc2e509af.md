# uniformization_of_small

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9cde02e2a0f8147ea728af6fc05f0517149ffed0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4888cb567a77856e2e2f2beda8bc0307e7d0ccff7ed599c340e2dc3221e5bf5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6780820a-6116-0f2a-a97d-b5029f1c575d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95f6c248-8e6c-308b-2a55-b80045d56633",
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
  "slug": "uniformization-of-small--eeaa74179d82f27fc2e509af",
  "source": {
    "blob": "9cde02e2a0f8147ea728af6fc05f0517149ffed0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 80,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Uniformization/Variante4888cb567a77856e2e2f2beda8bc0307e7d0ccff7ed599c340e2dc3221e5bf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eeaa74179d82f27fc2e509af5a8297c56e9bed77ecad2f125045aae68829ff7a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Uniformization/Variante4888cb567a77856e2e2f2beda8bc0307e7d0ccff7ed599c340e2dc3221e5bf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95f6c248-8e6c-308b-2a55-b80045d56633`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–126.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Uniformization/Variante4888cb567a77856e2e2f2beda8bc0307e7d0ccff7ed599c340e2dc3221e5bf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Uniformization/Variante4888cb567a77856e2e2f2beda8bc0307e7d0ccff7ed599c340e2dc3221e5bf5.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cde02e2a0f8147ea728af6fc05f0517149ffed0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
